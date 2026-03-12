--Table: major_resource_projects
--Objective: removing the comma from development_region values

update major_resource_project
set development_region = left(development_region, position(',' in development_region) - 1) || right(development_region, length(development_region) - position(',' in development_region))




--Table: operating_mines
--Objective: removing the comma from development_region values except for 'METRO'

update operating_mines
set development_region = left(development_region, position(',' in development_region) - 1) || right(development_region, length(development_region) - position(',' in development_region))
where development_region <> 'METRO'




--Table: operating_mines
--Objective: district_name

