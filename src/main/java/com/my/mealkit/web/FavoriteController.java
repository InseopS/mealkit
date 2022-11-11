package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Favorite;
import com.my.mealkit.service.FavoriteService;
import com.my.mealkit.service.MealkitService;

@RestController
@RequestMapping("favorite")
public class FavoriteController {
	@Autowired private FavoriteService favoriteService;
//	@Autowired private MealkitService mealkitService;
	
	@Value("${attachPath") private String attachPath;
	
	@GetMapping("listFavorite")
	 public ModelAndView favorite(ModelAndView mv) {
	      return mv;
	   }
	
	@GetMapping("getFavorites")
	public List<Favorite> getFavorites(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
        if(session == null || session.getAttribute("userId") == null) {
            return null;
        }
//        mealkitService.getMealkit(1);
//        System.out.println("amount = ");
		return favoriteService.getFavorites((String)session.getAttribute("userId"));
	}
	
	@DeleteMapping("delFavorite/{mealkitNum}")
	public void delFavorite(HttpSession session, @PathVariable int mealkitNum) {
		String userId = session.getAttribute("userId").toString();
		favoriteService.delFavorite(userId, mealkitNum);
	}
}