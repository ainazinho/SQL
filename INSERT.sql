-- Заполнение таблиц данными

INSERT INTO department(
  id, name)
  VALUES(1,'Manufacturing');
INSERT INTO department(
  id, name)
  VALUES(2,'Logistic');
INSERT INTO department(
  id, name)
  VALUES(3,'Sales');
INSERT INTO department(
  id, name)
  VALUES(4,'Economy');
INSERT INTO department(
  id, name)
  VALUES(5,'Production');



INSERT INTO employees(
  id, department_id, name)
  VALUES(1,1,'Ivan Ivanov');
INSERT INTO employees(
  id, department_id, name)
  VALUES(2,1,'Sidor Sidorov');
INSERT INTO employees(
  id, department_id, name)
  VALUES(3,2,'Egor Egorov');
INSERT INTO employees(
  id, department_id, name)
  VALUES(4,3,'Petr Petrov');
INSERT INTO employees(
  id, department_id, name)
  VALUES(5,4,'Vasily Vasilev');
INSERT INTO employees(
  id, department_id, name)
  VALUES(6,5,'Marina Marinina');
INSERT INTO employees(
  id, department_id, name)
  VALUES(7,5,'Dmitry Dmitriev');
INSERT INTO employees(
  id, department_id, name)
  VALUES(8,2,'Alex Alexeev');
INSERT INTO employees(
  id, department_id, name)
  VALUES(9,1,'Olga Olgova');
INSERT INTO employees(
  id, department_id, name)
  VALUES(10,3,'Olesya Olesyeva');



INSERT INTO customer(
  id, customer_name, location)
  VALUES(1,'Dmitry Bolshakov','Innopolis');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(2,'Olesya Lavrenteeva','Innopolis');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(3,'Anton Tarasov','Saratov');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(4,'Marya Chelnakova','Moscow');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(5,'Andrew Nilov','Kazan');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(6,'Dmitry Egorov','Moscow');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(7,'Ekaterina Fedorova','Moscow');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(8,'Sergey Nikonov','Kazan');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(9,'Alexey Lomovoi','Vladivostok');
  
  
  
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(1,1,'10.05.12',20000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(2,2,'11.05.13',10000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(3,5,'12.05.14',50000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(4,7,'13.05.15',150000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(5,8,'13.05.16',200000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(6,9,'14.05.17',14000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(7,5,'15.05.18',26000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(8,4,'08.01.12',60000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(9,3,'09.02.13',30000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(10,1,'14.03.14',32000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(11,2,'16.04.15',30000);
INSERT INTO public.contract(
  id, customer_id, contract_date, amount)
  VALUES(12,8,'18.05.16',40000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(13,7,'20.06.17',50000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(14,9,'23.07.18',60000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(15,5,'25.08.19',70000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(16,4,'01.01.10',80000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(17,3,'02.02.11',90000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(18,4,'05.03.12',100000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(19,2,'06.04.13',110000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(20,1,'08.05.14',120000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(21,2,'09.06.15',130000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(22,7,'10.07.16',140000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(23,8,'11.08.17',150000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(24,9,'12.09.18',160000);
INSERT INTO contract(
  id, customer_id, contract_date, amount)
  VALUES(25,3,'14.10.19',170000);
  
  
  
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(1,1);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(2,2);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(3,3);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(4,4);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,5);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(7,6);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(2,7);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(3,8);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,9);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(6,10);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(7,11);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(9,12);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(10,13);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(1,14);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(2,15);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,16);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(2,17);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(3,18);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(7,19);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(8,20);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,21);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(4,22);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(3,23);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(4,24);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,25);