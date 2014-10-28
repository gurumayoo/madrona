package com.madrona.server.service.impl;

import com.madrona.server.dao.StudentDao;
import com.madrona.server.model.Student;
import com.madrona.server.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;

	@Transactional
	public void removeStudent(Integer id) {
        studentDao.removeStudent(id);
	}

    @Transactional
    public Student viewStudent(Integer id) {
        return studentDao.viewStudent(id);
    }

    @Transactional
    public Student findStudentByFirstName(String firstName) {
        return null;
    }
}
