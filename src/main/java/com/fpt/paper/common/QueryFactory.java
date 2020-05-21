package com.fpt.paper.common;

import java.util.List;


public class QueryFactory {

	/*
     * Ham dem so trang
     * */
    public static int countPage(int total) {
        int rowPerpage = Constant.ROW_PER_PAGE;
        int result = 0;
        result = total / rowPerpage;
        int temp = total % rowPerpage;
        if (temp > 0) {
            result = result + 1;
            return result;
        } else return result;
    }

}
