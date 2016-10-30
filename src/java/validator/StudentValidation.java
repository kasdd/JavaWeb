package validator;

import domain.Student;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class StudentValidation implements Validator {

    @Override
    public boolean supports(Class<?> klass) {
        return Student.class.isAssignableFrom(klass);
    }

    @Override
    public void validate(Object target, Errors errors) {
        Student student = (Student) target;

        String firstName = student.getFirstname();
        
        if (firstName.length() < 2 || firstName.length() > 20) {
            errors.rejectValue("firstname", "size.student");
        }
    }
}
