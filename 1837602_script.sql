
-- Lets Begin by accessing the database:

-- Login 
Server: mvpstudio.cdvkl5vm8weq.ap-southeast-2.rds.amazonaws.com
username: KeysOnboardUser
password: KeysOnboardUser!23

-- Access the database named Keys and run the following queries:

-- Query 1
SELECT Property.Id, Property.Name FROM OwnerProperty
Inner Join Property ON OwnerProperty.PropertyId = Property.Id
WHERE OwnerProperty.OwnerId = 1426;

-- Query 2
SELECT Property.Id, Property.Name, PropertyHomeValue.Value AS Home_Value FROM OwnerProperty
Inner Join Property ON OwnerProperty.PropertyId = Property.Id
INNER JOIN PropertyHomeValue ON Property.Id = PropertyHomeValue.PropertyId 
WHERE OwnerProperty.OwnerId = 1426;

-- Query 3
SELECT SUM(Job.PaymentAmount) AS Total_Payments FROM OwnerProperty
Inner Join Property ON OwnerProperty.PropertyId = Property.Id
INNER JOIN Job ON Property.Id = Job.PropertyId
WHERE OwnerProperty.OwnerId = 1426;

-- Query 4
SELECT * FROM job;

-- Query 5
SELECT Property.Id, Property.Name,Person.FirstName, Person.LastName, Property.TargetRent FROM OwnerProperty
Inner Join Property ON OwnerProperty.PropertyId = Property.Id
INNER JOIN TenantProperty ON Property.Id = TenantProperty.PropertyId
INNER JOIN Person ON TenantProperty.TenantId = Person.Id 
WHERE OwnerProperty.OwnerId = 1426;

-- No database Creation script is required. The database is accessible by logging in SQL Server   



