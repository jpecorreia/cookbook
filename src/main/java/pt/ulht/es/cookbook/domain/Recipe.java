package pt.ulht.es.cookbook.domain;

import org.joda.time.DateTime;

public class Recipe extends Recipe_Base {
    
    public  Recipe(String title, String problem, String solution, String author, String tags) {
      setTitle(title);
      setProblem(problem);
      setSolution(solution);
      setAuthor(author);
      setTags(tags);
      setCreationTimestamp(new DateTime());
      setCookbookManager(CookbookManager.getInstance());
    }
   
}
