package net.skhu.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentMatchers;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;
import net.skhu.dto.Student;
import net.skhu.mapper.StudentMapper;

@SpringBootTest
public class StudentServiceTests2 {
	@Mock StudentMapper studentMapper;
	@InjectMocks StudentService studentService;
	
	Student student;
	
	@BeforeEach
	public void prepare() {
		// 테스트 메소드들에서 사용할 객체를 미리 생성함
		this.student = new Student();
		this.student.setId(337);
		this.student.setStudentNo("201132011");
		this.student.setName("임꺽정");
		this.student.setDepartmentId(2);
		this.student.setPhone("010-123-4567");
		this.student.setEmail("lim@skhu.ac.kr");
	}
	@Test
	public void test_findById() {
		Mockito.when(studentMapper.findById(ArgumentMatchers.anyInt()))
			.thenReturn(this.student);
		Student student2 = studentService.findById(this.student.getId());
		
		// 테스트 결과 확인
		assertEquals(this.student, student2);
		Mockito.verify(studentMapper).findById(this.student.getId());
	}
}
