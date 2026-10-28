update salary s
set s.sex = case    -- s.sex or sex both are correct
when s.sex = 'm' then 'f'
when s.sex = 'f' then 'm'
end;