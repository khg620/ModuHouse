package moduhouse.controller.store;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StoreController {
	
	@GetMapping("/main")
	public String main(Model model) {
		
		return "main";
	}

}
