package com.yzx.xiaoxiong581.springbootprovider.impl;

import com.yzx.xiaoxiong581.springbootapi.api.HealthCheckInterface;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/health")
public class HealthCheckImpl implements HealthCheckInterface
{
    @Override
    @GetMapping("/check")
    public String healthCheck()
    {
        log.info("health check...");
        return "success";
    }
}
