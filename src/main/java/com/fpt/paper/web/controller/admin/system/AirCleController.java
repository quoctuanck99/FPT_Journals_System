package com.fpt.paper.web.controller.admin.system;

import com.fpt.paper.web.dao.category.CategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/system/article")
public class AirCleController {
    @GetMapping("/list")
    public String list() {
        return "artcle.list";
    }
}
