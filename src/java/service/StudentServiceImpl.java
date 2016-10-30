package service;

import domain.Student;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class StudentServiceImpl implements StudentService {

    private static final List<Student> list = new ArrayList<>();

    static {
        list.add(new Student(1, "Stijn", "Aerts", "stijnaerts@gmail.com"));
        list.add(new Student(2, "Jos", "Ke", "hgj@dqfd.com"));
        list.add(new Student(3, "Piet", "Uytdebroeck", "fdsqsdf@hotmail.com"));
        list.add(new Student(4, "Steven", "Tijpels", "stijvetepelsanagram@obvious.com"));
    }

    @Override
    public List<Student> findAll() {
        return list;
    }

    @Override
    public Student findById(Integer id) {
        
        Optional<Student> student
                = list.stream().filter(i -> i.getId() == id).findFirst();
        return (student.isPresent()) ? student.get() : null;
    }
}
