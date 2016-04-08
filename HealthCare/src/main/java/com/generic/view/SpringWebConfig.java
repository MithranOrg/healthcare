/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.generic.view;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

/**
 *
 * @author ArunRamya
 */
@EnableWebMvc
@Configuration
@ComponentScan({"com.generic.view"})
public class SpringWebConfig extends WebMvcConfigurerAdapter {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	@Bean 
	public FreeMarkerViewResolver freemarkerViewResolver() { 
		FreeMarkerViewResolver resolver = new FreeMarkerViewResolver(); 
		resolver.setCache(true); 
		resolver.setPrefix(""); 
		resolver.setSuffix(".ftl"); 
		return resolver; 
	}

	@Bean 
	public FreeMarkerConfigurer freemarkerConfig() { 
		FreeMarkerConfigurer freeMarkerConfigurer = new FreeMarkerConfigurer(); 
		freeMarkerConfigurer.setTemplateLoaderPath("/WEB-INF/views/ftl/");
		return freeMarkerConfigurer; 
	}

}