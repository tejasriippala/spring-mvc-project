/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tej.project.dao;

import com.tej.project.model.Employees;
import java.util.List;

/**
 *
 * @author teju
 */
public interface EmployeeDao {
    public void save(Employees emp);
    public List<Employees> findAll();
    public void delete(Integer id);
    public Employees findById(Integer id);
    public void Update(Employees emp);
    public Employees search(Integer id);
}
