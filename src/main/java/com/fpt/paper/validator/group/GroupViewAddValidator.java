package com.fpt.paper.validator.group;

import com.fpt.paper.common.Utils;
import com.fpt.paper.model.admin.view.GroupView;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


@Component
public class GroupViewAddValidator implements Validator {
    @Override
    public boolean supports(Class<?> paramClass) {
        return GroupView.class.equals(paramClass);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        GroupView item = (GroupView) obj;
        Utils.trimAllFieldOfObject(item);
        if(StringUtils.isBlank(item.getGroupName()) || item.getGroupName().length()>100){
            errors.rejectValue("groupName", "groupName.empty");
        }

    }
}
