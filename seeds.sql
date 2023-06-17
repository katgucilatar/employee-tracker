INSERT INTO department (id, department_name)
VALUES  (1, "HR"),
        (2, "Operations"),
        (3, "IT"),
        (4, "Marketing"),
        (5, "Sales"),
        (6, "Accounting"),
        (7, "Production"),
        

INSERT INTO role (id, title, salary, department_id)
VALUES  (101, "Administrative Assistant", 32000, 1)
        (102, "Human Relations Manager", 50000, 1)
        (201, "Chief Executive Officer", 96000, 2)
        (202, "Chief Operating Officer", 85000, 2)
        (203, "Project Manager", 65000, 2)
        (301, "Software Engineer", 80000, 3)
        (302, "Application Developer", 65000, 3)
        (401, "SEO Specialist", 42000,4)
        (402, "Marketing Manager", 50000, 4)
        (403, "Brand Ambassador", 36000, 4)
        (501, "Inbound Sales Representative", 40000, 5)
        (502, "Outbound Sales Representative", 40000, 5)
        (503, "Customer Success Representative", 40000, 5)
        (504, "Sales Manager", 52000, 5)
        (701, "Production Associate", 30000, 7)
        (702, "Machine Operator", 36000, 7)
        (703, "Package Handler", 30000, 7)
        (704, "Production Supervisor", 50000, 7)
        (601, "Accountant", 50000, 6)
        (602, "Bookkeeper", 32000, 6)

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES  (1012, "Anna", "Gene" , 101, 1011)
        (1011, "Gia", "Panowski" , 101, NULL)
        (2011, "Jane", "Pan" , 201, NULL)
        (2012, "Peter", "Snow", 202, 2011)
        (2012, "Francis", "Kane", 203, 2011)
        (3011, "Lana", "Ian" , 301, NULL)
        (3012, "Mark", "Swan", 302, 3011)
        (4011, "Cameron", "Johnson", 401, NULL)
        (4012, "Trina", "Gesteppe", 402, 4011)
        (4013, "Daniel", "Brooks", 403, 4011)
        (5012, "Jack", "Jones", 501, 5011)
        (5013, "Mona", "Miga", 502, 5011)
        (5014, "Luke", "Barnes", 503, 5011)
        (5011, "Zami", "Kwena", 504, NULL)
        (7012, "Anette", "Sullivan", 701, 7011)
        (7013, "Nathan", "Smith", 702, 7011)
        (7014, "Jose", "Velazquez", 703, 7011)
        (7011, "Greg", "Brindle", 704, NULL)
        (6011, "Regina", "Swan", 601, NULL)
        (6012, "Brandon", "Ganes", 602, 6011)
