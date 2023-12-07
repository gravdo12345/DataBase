package org.example;  // Add your package statement

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.io.BufferedReader;
import java.io.FileReader;

public class Main {
    public static void main(String[] args) {
        try {
            // Replace with your database connection details
            Connection connection = DriverManager.getConnection("jdbc:your_database_url", "username", "password");

            // Read and execute init_db.sql
            executeSqlScript(connection, "src/main/resources/init_db.sql");

            // Read and execute populate_db.sql
            executeSqlScript(connection, "src/main/resources/populate_db.sql");

            // Read and execute find_max_salary_worker.sql
            executeSqlScript(connection, "src/main/resources/find_max_salary_worker.sql");

            // Read and execute find_max_projects_client.sql
            executeSqlScript(connection, "src/main/resources/find_max_projects_client.sql");

            // Read and execute find_longest_project.sql
            executeSqlScript(connection, "src/main/resources/find_longest_project.sql");

            // Read and execute find_youngest_eldest_workers.sql
            executeSqlScript(connection, "src/main/resources/find_youngest_eldest_workers.sql");

            // Read and execute print_project_prices.sql
            executeSqlScript(connection, "src/main/resources/print_project_prices.sql");

            // Close the connection
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void executeSqlScript(Connection connection, String scriptPath) {
        try (BufferedReader reader = new BufferedReader(new FileReader(scriptPath))) {
            StringBuilder script = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                script.append(line).append("\n");
            }

            // Execute SQL script
            try (Statement statement = connection.createStatement()) {
                statement.execute(script.toString());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
