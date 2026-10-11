select unique_id,name
from employees e    -- e is alias for employee table
left join employeeuni eu    -- eu is lias for employeeuni table
ON e.id = eu.id;