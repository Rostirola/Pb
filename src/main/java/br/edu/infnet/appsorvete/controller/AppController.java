package br.edu.infnet.appsorvete.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

    @GetMapping(value = "/")
	public String telaIndex() {
		return "redirect:/login";
	}

	@GetMapping(value = "/home")
	public String telaHome() {
		return "index";
	}
    
}
