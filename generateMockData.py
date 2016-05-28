import random
import string

NUM_OF_SUPERVISORS_PER_BRANCH = 3

def id_generator(size=15, chars=string.ascii_uppercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))

def phone_generator(size=10, chars=string.digits):
    return ''.join(random.choice(chars) for _ in range(size))

def number_generator(size=2, chars=string.digits):
    return ''.join(random.choice(chars) for _ in range(size))

def date_generator():
    # iso_format = "{Year}-{Month}-{Day}T{Hour}:{Minute}+{Offset}"
    # iso_format = "TO_DATE('{Year}-{Month}-{Day}', 'YYYY-MM-DD')"
    iso_format = "{Year}-{Month}-{Day}"

    year_range = [str(i) for i in range(2001, 2015)]
    month_range = ["01","02","03","04","05","06","07","08","09","10","11","12"]
    day_range = [str(i).zfill(2) for i in range(1,28)]
    hour_range = [str(i).zfill(2) for i in range(1,25)]
    min_range = [str(i).zfill(2) for i in range(1, 60)]
    offset = ["00:00"]

    argz = {"Year": random.choice(year_range),
        "Month": random.choice(month_range),
        "Day" : random.choice(day_range)
        # "Hour": random.choice(hour_range),
        # "Minute": random.choice(min_range),
        # "Offset": random.choice(offset)
        }
    return iso_format.format(**argz)

nameList = ['Mora Grana','Tyrone Ortiz','Kelle Culpepper','Cyndy Sarver',
'Keira Elms','Chau Barrs','Hedwig Rapier','Terrance Baier','Violet Kabel',
'Sharell Haydel','Cassidy Amsden','Keenan Bjorklund','Carmella Bryner',
'Chandra Demayo','Elton Hollowell','Yuonne Aumiller','Lyle Fischbach',
'Kristeen Metzer','Theron Gibney','Myrna Mccaster','Marya Stpierre',
'Altha Amaya',
'Kristan Petitt','Louella Boardman', 'Josiah Hawkins',
'Betsy Abramowitz','Chet Rojas','Gene Messana','Ling Pressley','Marylyn Rusher']

# Address Generation
addressList = ['pg9OfjROWwcdLqO', 'AfMVWLdQF1mWDTa', 'TNGXa7ekStP8Drs',
'Lnv8gcebfmAsvSH', '9R9aYW6qxQnV6rz']

# Branch Generation
branchIds = [];
for i in range(0,2):
    branchIds.append(id_generator())

managerCount = 0
supervisorCount = 0
staffCount = 0

def job_generator():
    global managerCount, supervisorCount, NUM_OF_SUPERVISORS_PER_BRANCH
    global branchIds, staffCount

    if managerCount < len(branchIds):
        managerCount= managerCount + 1
        return "'manager', '" + branchIds[managerCount-1] + "'"
    elif supervisorCount < len(branchIds)*NUM_OF_SUPERVISORS_PER_BRANCH:
        supervisorCount= supervisorCount + 1
        return "'supervisor', '" + branchIds[supervisorCount%len(branchIds)] + "'"
    else:
        staffCount = staffCount + 1
        return "'staff', '" + branchIds[staffCount%len(branchIds)] + "'"

print "--Branch Generation"
for i in range(0,len(branchIds)):
    print "insert into Branches Values('"+ branchIds[i] + "', '" +\
     addressList[i] + "', " + phone_generator()+");"

supervisors = []
managers = []
# Employee Generation
print "\n--Employee Generation"
for i in range(0, len(nameList)-5):
    _id = id_generator()
    name = nameList[i]
    phoneNumber = phone_generator()
    startDate = date_generator()
    job = job_generator()

    #Save these for later references
    # print 'supervisor' in job
    if('supervisor' in job):
        supervisors.append(_id)
    elif('manager' in job):
        managers.append(_id)

    print "insert into Employees Values('"+ _id + "', '"+name+"', "\
    + phoneNumber + ", " +startDate + ", " + job +\
    ");"

propertyOwners = []
print "\n--Property Owner Generation"
for i in range (len(nameList)-5, len(nameList)):
    _id = id_generator()
    addressId = addressList[i%len(addressList)]
    name = nameList[i]
    phone = phone_generator()
    fees = number_generator(3)

    propertyOwners.append(_id)

    print "insert into Property_Owners Values(" + \
        "'" + _id + "', '" + addressId + "', '" + name + "', " + phone + ", "+\
        str(fees) + ");"

# Rental_Properties Generation
properties = []
print "\n--Rental Property Generation"
for i in range(0, len(branchIds)*NUM_OF_SUPERVISORS_PER_BRANCH):
    _id = id_generator()
    ownerId = propertyOwners[i%len(propertyOwners)]
    addressId = addressList[i%len(addressList)]
    numRooms = number_generator(1)
    rent = number_generator(3)
    availability  = i%2
    availDate = date_generator()
    supervisorId = supervisors[i%len(supervisors)]
    properties.append(_id)

    print "insert into Rental_Properties Values(" + "'" + _id + "', '" + ownerId + "', "+\
    "'" + addressId + "', " + str(numRooms) + ", " + str(rent) + ", " +\
    str(availability) + ", "+ availDate + ", '" + supervisorId + "');"

#Lease Agreement Generation
print "\n--Lease Agreement Generation"
for i in range(0, len(properties)/NUM_OF_SUPERVISORS_PER_BRANCH):
    _id = id_generator()
    propertyId = properties[i]
    homePhone = phone_generator()
    workPhone = phone_generator()
    contactName = nameList[int(number_generator(2))%len(nameList)]
    contactPhone = phone_generator()
    startDate =  date_generator()
    endDate = date_generator()
    totalRent = number_generator(4)
    deposit = number_generator(3)

    print "insert into LeaseAgreement Values("\
    +"'"+_id+"', "+"'"+propertyId+"', " + homePhone + ", " + workPhone \
    +", '"+contactName+"', " + contactPhone + ", " + startDate + ", " + endDate\
    +", " + str(totalRent) + ", " + str(deposit)\
    +");"
