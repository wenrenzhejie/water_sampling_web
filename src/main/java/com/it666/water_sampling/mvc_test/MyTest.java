/*
package com.it666.water_sampling.mvc_test;

import com.github.pagehelper.PageInfo;
import com.it666.water_sampling.bean.User;
import com.sun.media.sound.PCMtoPCMCodec;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml","classpath:springmvc.xml"})
@WebAppConfiguration
public class MyTest {
    @Autowired
    WebApplicationContext webApplicationContext;
    MockMvc mockMvc;
    @Before
    public void init(){
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }
    @Test
    public void testPageInfo() throws Exception {
//        发送请求得到响应值
        MvcResult result = mockMvc.perform(MockMvcRequestBuilders.post("/user/loginByName").param("username", "admin").param("password","123456")).andReturn();
//        从请求域中拿到响应值
        User user = (User) result.getRequest().getAttribute("user");
        System.out.println(user);
    }


}
*/
