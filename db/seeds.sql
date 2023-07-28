USE business_db;
INSERT INTO department (id, department_name)
VALUES  (1, "HR"),
        (2, "Operations"),
        (3, "IT"),
        (4, "Marketing"),
        (5, "Sales"),
        (6, "Accounting"),
        (7, "Production");
        

INSERT INTO role (id, title, salary, department_id)
VALUES  (101, "Admin Assistant", 32000, 1), 
        (102, "Human Relations Manager", 50000, 1),
        (201, "Chief Executive Officer", 96000, 2),
        (202, "Chief Operating Officer", 85000, 2),
        (203, "Project Manager", 65000, 2),
        (301, "Software Engineer", 80000, 3),
        (302, "Application Developer", 65000, 3),
        (401, "SEO Specialist", 42000,4),
        (402, "Marketing Manager", 50000, 4),
        (403, "Brand Ambassador", 36000, 4),
        (501, "Inbound Sales Representative", 40000, 5),
        (502, "Outbound Sales Representative", 40000, 5),
        (503, "Customer Success Representative", 40000, 5),
        (504, "Sales Manager", 52000, 5),
        (701, "Production Associate", 30000, 7),
        (702, "Machine Operator", 36000, 7),
        (703, "Package Handler", 30000, 7),
        (704, "Production Supervisor", 50000, 7),
        (601, "Accountant", 50000, 6),
        (602, "Bookkeeper", 32000, 6); 

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ("Anna", "Gene" , 101, NULL), 
        ("Gia", "Panowski" , 102, 1),
        ("Jane", "Pan" , 201, NULL),
        ("Peter", "Snow", 202, 2),
        ("Francis", "Kane", 203, 3),
        ("Lana", "Ian" , 301, NULL),
        ("Mark", "Swan", 302, 4),
        ("Cameron", "Johnson", 401, NULL),
        ("Trina", "Gesteppe", 402, 5),
        ("Daniel", "Brooks", 403, 6),
        ("Jack", "Jones", 501, 7),
        ("Mona", "Miga", 502, 8),
        ("Luke", "Barnes", 503, 9),
        ("Zami", "Kwena", 504, NULL),
        ("Anette", "Sullivan", 701, 10),
        ("Nathan", "Smith", 702, 11),
        ("Jose", "Velazquez", 703, 12),
        ("Greg", "Brindle", 704, NULL),
        ("Regina", "Swan", 601, NULL),
        ("Brandon", "Ganes", 602, 13);
