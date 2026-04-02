package com.edu.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.edu.entity.Appointment;

public interface AppointmentService extends IService<Appointment> {
    Appointment getOne(Appointment appointment);
}