package com.playdata.listener;

import com.playdata.util.DBUtil;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.Connection;
import java.sql.SQLException;

public class DbContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        try {
            //DB Connection 객체 생성
            Connection conn = DBUtil.getConnection(sce.getServletContext());

            // DB Connection 객체를 Servlet Context에 저장
            sce.getServletContext().setAttribute("conn", conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        Connection conn = (Connection) sce.getServletContext().getAttribute("conn");
        try {
            // DB Connection 객체를 씁니다.
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
