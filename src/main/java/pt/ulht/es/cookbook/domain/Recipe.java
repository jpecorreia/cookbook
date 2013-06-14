package pt.ulht.es.cookbook.domain;

import org.joda.time.DateTime;

public class Recipe extends Recipe_Base implements Comparable<Recipe>{
    
    public  Recipe(String title, String problem, String solution, String author, String tags) {
      setTitle(title);
      setProblem(problem);
      setSolution(solution);
      setAuthor(author);
      setTags(tags);
      setCreationTimestamp(new DateTime());
      setCookbookManager(CookbookManager.getInstance());
    }

	public int compareTo(Recipe o) {
				return getTitle().toLowerCase().compareTo(o.getTitle().toLowerCase());
	}

	public void delete() {
		removeCookbookManager();
		deleteDomainObject();
		
	}

	public boolean match(String[]  tokens) {
		
		for (String token : tokens ){
			
			if (getTitle().toLowerCase().contains(token.toLowerCase()) || 
			getProblem().toLowerCase().contains(token.toLowerCase()) || 
			getSolution().toLowerCase().contains(token.toLowerCase()) || 
			getTags().toLowerCase().contains(token.toLowerCase())) {
				return true;
			}
		}		
		return false;
	}

	public void edit(String title, String problem, String solution, String author, String tags) {
		
		  setTitle(title);
	      setProblem(problem);
	      setSolution(solution);
	      setAuthor(author);
	      setTags(tags);
	   
	}
   
}
