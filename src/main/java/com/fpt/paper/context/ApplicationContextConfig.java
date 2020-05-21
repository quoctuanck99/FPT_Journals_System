package com.fpt.paper.context;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import java.io.File;


@Configuration
@EnableWebMvc
/*@EnableTransactionManagement*/
public class ApplicationContextConfig extends WebMvcConfigurerAdapter {

    @Value("${notary_office_folder}")
    private String notary_office_folder;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String rootPath = notary_office_folder;
        File dir = new File(rootPath + File.separator + "tmpFiles");
        String dirTrue = dir.getAbsolutePath();
        registry
                .addResourceHandler("/tmpFiles*//**")
                .addResourceLocations("file:///"+dir.getAbsolutePath());
    }
//        @Override
//        public void addResourceHandlers(ResourceHandlerRegistry registry) {
//            String rootPath = notary_office_folder;
//            File dir = new File(rootPath + File.separator + "upload");
//            String dirTrue = dir.getAbsolutePath();
//            registry
//                    .addResourceHandler("/upload*//**")
//                    .addResourceLocations("file:///"+dir.getAbsolutePath());
//        }

}

