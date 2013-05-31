package pt.ulht.es.cookbook.controller;

import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

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
    	Set<Recipe> recipes = CookbookManager.getInstance().getRecipeSet();
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
   
   
   @RequestMapping(method=RequestMethod.POST, value="/recipes/search")
   public String searchRecipe(@RequestParam Map<String,String> params){
	   String pesquisa = params.get("pesquisa");
	   String[] tokens = pesquisa.split(",");
	   for (Recipe recipe : CookbookManager.getInstance().getRecipeSet()){
		   if (recipe.match(tokens)){
			   
			  ArrayList<String> mytokens = new ArrayList<String>(); 
		   }
	   }
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
        
    
    
}