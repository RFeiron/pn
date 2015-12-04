package ua.com.feiron.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ua.com.feiron.domain.Profnastil;
import ua.com.feiron.repository.ProfnastilRepository;
import ua.com.feiron.validation.ProfnastilValidator;

import java.util.List;

@Controller
public class ProfnastilController {

    private ProfnastilRepository profnastilRepository;
    private ProfnastilValidator profnastilValidator;

    @Autowired
    public  ProfnastilController(ProfnastilRepository profnastilRepository, ProfnastilValidator profnastilValidator){
        this.profnastilRepository = profnastilRepository;
        this.profnastilValidator = profnastilValidator;
    }
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getPr(){
        return "index";
    }
    @RequestMapping(value = "index1", method = RequestMethod.GET)
    public String getProfnastil(Model model){
        List<Profnastil> lists = this.profnastilRepository.listAll();
        model.addAttribute("lists", lists);
        return "index1";
    }
    @RequestMapping(value = "addProfnastil", method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public String addProfnastil(Model model){
        model.addAttribute("profnastil", new Profnastil());
        return "addProfnastil";
    }

    @RequestMapping(value = "addProfnastil", method = RequestMethod.POST)
    public String addProfnastil(@ModelAttribute("profnastil") Profnastil profnastil, BindingResult bindingResult){
        this.profnastilValidator.validate(profnastil, bindingResult);
        if (bindingResult.hasErrors()){
            return "addProfnastil";
        }

        this.profnastilRepository.addProfnastil(profnastil);
        return "redirect:/index1";
    }

    @RequestMapping(value = "deleteProfnastil/{id}", method = RequestMethod.GET)
    public String deleteProfnastil(@PathVariable Integer id){

        this.profnastilRepository.removeProfnastil(id);
        return "redirect:/index1";
    }
//    @RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
//    public void getEdit(@RequestParam(value = "id", required = true) Integer id, Model model){
//
//        model.addAttribute("profnastilAtribute", id);
//    }

    @RequestMapping(value = "calc", method = RequestMethod.GET)
    public ModelMap say(@RequestParam(required = false) Double workB, @RequestParam(required = false) Double obshayaB,
                        @RequestParam(required = false) Double a, @RequestParam(required = false) Double b){
        ModelMap modelMap = new ModelMap();
        if (a != null && b != null && workB != null && obshayaB != null ){
            modelMap.addAttribute("a", a);
            modelMap.addAttribute("b", b);
            modelMap.addAttribute("workB", workB);
            modelMap.addAttribute("obshayaB", obshayaB);
            modelMap.addAttribute("result", ((Math.ceil(b / workB)) * a * obshayaB));
            modelMap.addAttribute("sam", (int)((b / workB) * a * obshayaB * 6));
            modelMap.addAttribute("kl",(int)(Math.ceil(b / workB)));

        }else {
            modelMap.addAttribute("result",  "" );
        }
        return modelMap;
    }

    @RequestMapping(value = "calc1", method = RequestMethod.GET)
    public ModelMap twoSk(@RequestParam(required = false) Double workB, @RequestParam(required = false) Double obshayaB,
                          @RequestParam(required = false) Double a, @RequestParam(required = false) Double b,
                          @RequestParam(required = false) Double a2, @RequestParam(required = false) Double b2){
        ModelMap modelMap = new ModelMap();
        if (a != null && b != null && workB != null && obshayaB != null ){
            modelMap.addAttribute("a", a);
            modelMap.addAttribute("b", b);
            modelMap.addAttribute("a2", a2);
            modelMap.addAttribute("b2", b2);
            modelMap.addAttribute("workB", workB);
            modelMap.addAttribute("obshayaB", obshayaB);
            modelMap.addAttribute("result", (((Math.ceil(b / workB)) * a * obshayaB) + ((Math.ceil(b2 / workB)) * a2 * obshayaB)));
            modelMap.addAttribute("sam", (int)((((Math.ceil(b / workB)) * a * obshayaB) + ((Math.ceil(b2 / workB)) * a2 * obshayaB))) * 6);
            modelMap.addAttribute("kl",(int)(Math.ceil((b / workB) + (b2 / workB))));


        }else {
            modelMap.addAttribute("result",  "" );
        }
        return modelMap;
    }
}