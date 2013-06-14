package pt.ulht.es.cookbook.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pt.ist.fenixframework.pstm.AbstractDomainObject;
import pt.ulht.es.cookbook.domain.CookbookManager;
import pt.ulht.es.cookbook.domain.Recipe;

@Controller
public class RecipeController {
  
    @RequestMapping(method=RequestMethod.GET, value="/recipes")
    public String listRecipes(Model model) {
    	List<Recipe> recipes = new ArrayList<Recipe>(CookbookManager.getInstance().getRecipeSet());
    	Collections.sort(recipes);
    	model.addAttribute("recipes", recipes);
    	return "listRecipes";
    }
   @RequestMapping(method=RequestMethod.GET, value="/recipes/create")   
    public String showRecipeCreationForm(){
    	    	return "createRecipe";
    }
   @RequestMapping(method=RequestMethod.POST, value="/recipes")
   public String createRecipe(@RequestParam Map<String,String> params){
	   		String titulo = params.get("titulo");
	   		String problema = params.get("problema");
	   		String solucao = params.get("solucao");
	   		String utilizador = params.get("utilizador");
	   		String tags = params.get("tags");
	   		
   
   
	   		Recipe recipe = new Recipe(titulo, problema, solucao, utilizador, tags);
	   			   		
	   		return "redirect:/recipes/"+recipe.getExternalId(); 
   
   }
  /* 
   @RequestMapping(method=RequestMethod.GET, value="/recipes/search")   
   public String showRecipeSearchForm(){
   	    	return "searchRecipe";
   }
   */
   @RequestMapping(method=RequestMethod.POST, value="/recipes/search")
   public String searchRecipe(@RequestParam Map<String,String> params, Model model){
	   String pesquisa = params.get("pesquisa");
	   String[] tokens = pesquisa.split(",");
	   List<Recipe> results = new ArrayList<Recipe>();
	   for (Recipe recipe : CookbookManager.getInstance().getRecipeSet()){
		   if (recipe.match(tokens)){
			   
			   results.add(recipe);
			   
		   }
	   }
	   model.addAttribute("recipes", results);
	   return "showRecipe";
	      }
   
   
    
    @RequestMapping(method=RequestMethod.GET, value="/recipes/{id}")
    public String showRecipe(Model model, @PathVariable String id) {
    		Recipe recipe = AbstractDomainObject.fromExternalId(id);
    		if(recipe != null){ 
	    		model.addAttribute("recipe", recipe);
	    		return "detailedRecipe";
    		} 
    		else {
    			return "recipeNotFound";
    		}
    }
        
    @RequestMapping("/recipes/{id}/delete")
    public String deleteRecipe(@PathVariable("id") String id){
    	
    	//Apagar receitas
    	Recipe recipe = AbstractDomainObject.fromExternalId(id);
    	recipe.delete();
    	
    	//Depois de apagar voltar as receitas
    	return "redirect://recipes";
    }
    
    //------------------Edicao de receitas---------------------------
    
    @RequestMapping("/recipes/{id}/edit")
    public String editRecipe(@PathVariable("id") String id, Model model){
    	
    	//Editar receitas
    	Recipe recipe = AbstractDomainObject.fromExternalId(id);
    	model.addAttribute("recipe", recipe);
    	
    	//Depois de editar voltar as receitas
    	return "editRecipe";
    }
    @RequestMapping(method=RequestMethod.POST, value="/recipes/{id}")
    public String editRecipe(@PathVariable("id") String id, @RequestParam Map<String,String> params){
 	   	
    	String titulo = params.get("titulo");
   		String problema = params.get("problema");
   		String solucao = params.get("solucao");
   		String utilizador = params.get("utilizador");
   		String tags = params.get("tags");
    	Recipe recipe = AbstractDomainObject.fromExternalId(id);
    	
    	recipe.edit(titulo, problema, solucao, utilizador, tags);
    	
     	   			   		
 	   		return "redirect:/recipes/"+recipe.getExternalId(); 
    
    }
}