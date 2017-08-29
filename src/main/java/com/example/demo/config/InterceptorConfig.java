package com.example.demo.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @author tangyu
 *         2017/8/29.
 */
@Configuration
@Slf4j
public class InterceptorConfig extends WebMvcConfigurerAdapter {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        log.info("初始化拦截器");
         registry.addInterceptor(new MyInterceptor()).addPathPatterns("/*").excludePathPatterns("/login").excludePathPatterns("/doLogin");
        log.info("初始化拦截器完毕");
    }
}
