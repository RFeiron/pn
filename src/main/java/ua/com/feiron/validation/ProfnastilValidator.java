package ua.com.feiron.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ua.com.feiron.domain.Profnastil;

@Component
public class ProfnastilValidator implements Validator {
    @Override
    public boolean supports(Class<?> clazz) {
        return Profnastil.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required.name", "Name is required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "workB", "required.workB", "Rabochaya Shirina is required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "obshayaB", "required.obshayaB", "Obshaya Shirina is required");
    }
}
