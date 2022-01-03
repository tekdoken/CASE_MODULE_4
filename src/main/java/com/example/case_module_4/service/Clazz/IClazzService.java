package com.example.case_module_4.service.Clazz;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.service.General.IGeneralService;
import org.springframework.data.domain.Page;

import java.awt.print.Pageable;

public interface IClazzService extends IGeneralService <Clazz>{
    Page<Clazz> findByNameContaining(Pageable pageable, String name);


}
