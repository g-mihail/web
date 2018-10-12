package com.vebinar.config;

import freemarker.template.TemplateException;
import freemarker.template.utility.XmlEscape;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.vebinar.controller")
public class WebConfig extends WebMvcConfigurerAdapter{

    @Value("${upload.path}")
    private String uploadPath;

    //убираем регистр при запросе url
    @Override
    public void configurePathMatch(PathMatchConfigurer configurer) {
        AntPathMatcher matcher = new AntPathMatcher();
        matcher.setCaseSensitive(false);
        configurer.setPathMatcher(matcher);
    }


    @Bean
    public ViewResolver getViewResolver() {
        FreeMarkerViewResolver freeMarkerViewResolver = new FreeMarkerViewResolver();
        freeMarkerViewResolver.setContentType("text/html;charset=UTF-8");
        freeMarkerViewResolver.setOrder(1);
        freeMarkerViewResolver.setSuffix(".ftl");
        freeMarkerViewResolver.setPrefix("");
        freeMarkerViewResolver.setExposeSpringMacroHelpers(true);
        freeMarkerViewResolver.setExposeRequestAttributes(true);
        return freeMarkerViewResolver;
    }



    @Bean
    public FreeMarkerConfigurer getFreeMarkerConfigurer() throws TemplateException {
        FreeMarkerConfigurer freeMarkerConfigurer = new FreeMarkerConfigurer();

        freeMarkerConfigurer.setTemplateLoaderPaths("/", "/WEB-INF/templates/");
        freeMarkerConfigurer.setDefaultEncoding("UTF-8");
        //freeMarkerConfigurer.
        return freeMarkerConfigurer;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {


        registry.addResourceHandler("/img/**")
                .addResourceLocations("file://" + uploadPath +"/");

        registry.addResourceHandler("/resources/**")
                .addResourceLocations("/resources/");

        registry.addResourceHandler("/static/**")
                .addResourceLocations("classpath:/js.app.min");
    }

    /*@Bean //(name = "multipartResolver")
    public CommonsMultipartResolver multipartResolver()

    {
      CommonsMultipartResolver resolver = new Sta;
      resolver.setDefaultEncoding("UTF-8");
      resolver.setMaxUploadSize(100000);
      return resolver;
    }
*/

}
