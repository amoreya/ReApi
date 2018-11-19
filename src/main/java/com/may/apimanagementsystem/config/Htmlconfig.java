package com.may.apimanagementsystem.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class Htmlconfig extends WebMvcConfigurerAdapter {
@Override
public void addResourceHandlers(ResourceHandlerRegistry registry) {
 registry.addResourceHandler("/static/html/common/**").addResourceLocations("classpath:/static/html/common/");
 super.addResourceHandlers(registry);
 }
}