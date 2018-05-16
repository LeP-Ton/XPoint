package com.ssm.game.controller;

import com.ssm.game.pojo.SsmGame;
import com.ssm.game.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/mainController")
public class MainController {
    @Autowired
    private MainService mainService;

    //计算
    @RequestMapping(value = "/doPoint", method = RequestMethod.POST)
    public ModelAndView doPoint(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
        String cards = request.getParameter("cards");
        int x = Integer.parseInt(request.getParameter("x"));
        String result = mainService.getResult(cards, x);
        String nowTime=String.format("%tY年%<tm月%<td日(%<tT)",new Date());
        SsmGame ssmGame = new SsmGame();
        ssmGame.setAim_point(x);
        ssmGame.setInput(cards);
        ssmGame.setOutput(result);
        ssmGame.setCreate_time(nowTime);
        System.out.println(nowTime);
        mainService.insertRecord(ssmGame);
        session.setAttribute("cards", cards);
        session.setAttribute("x", x);
        session.setAttribute("result", result);
        return new ModelAndView("result");
    }

    //查询
    @RequestMapping("/selectAll")
    public ModelAndView selectAll() {
        List<SsmGame> list = mainService.selectAll();
        ModelAndView model = new ModelAndView();
        model.addObject("list", list);
        System.out.println(list);
        model.setViewName("history");
        return model;

    }
}
