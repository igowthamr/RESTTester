package com.acceptable.dmg.services.acceptables.app.model;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

/**
 * 7/20/17.
 */
@Configuration
public class RestTemplateBean {

    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
}
