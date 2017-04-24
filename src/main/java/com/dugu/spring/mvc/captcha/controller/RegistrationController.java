package com.dugu.spring.mvc.captcha.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dugu.spring.mvc.captcha.exception.PasswordMismatchException;
import com.dugu.spring.mvc.captcha.model.RegistrationModel;
import com.dugu.spring.mvc.captcha.util.VerifyRecaptchaUtils;

@Controller
public class RegistrationController {

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerNow(
			Model model,
			@ModelAttribute("registrationModel") RegistrationModel registrationModel,
			HttpServletRequest request) throws PasswordMismatchException {
		String message = "";
		boolean verify;
		String gRecaptchaResponse = request
				.getParameter("g-recaptcha-response");
		System.out.println(gRecaptchaResponse);
		try {
			verify = VerifyRecaptchaUtils.verify(gRecaptchaResponse);
			if (registrationModel.getPassword().equals(
					registrationModel.getConfirmPassword())
					&& verify) {
				message = "Registration Successfully";
				model.addAttribute("message", message);
			} else {
				String ErrorMessage = "OOPS !! Password Mismatch.!";
				throw new PasswordMismatchException(ErrorMessage);
			}
		} catch (IOException e) {
			model.addAttribute("message", "Service Gateway Failed.");
		}
		System.out.println(message);
		System.out.println(registrationModel);
		return "registration";

	}
}
