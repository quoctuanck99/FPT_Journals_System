package com.fpt.paper.validator.user;


import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.fpt.paper.common.Utils;
import com.fpt.paper.model.admin.User;


@Component
public class UserUpdateValidator implements Validator {
    //which objects can be validated by this validator
    @Override
    public boolean supports(Class<?> paramClass) {
        return User.class.equals(paramClass);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        Utils.trimAllFieldOfObject(obj);
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "id.error");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fullName", "fullName.error");

    }
}
