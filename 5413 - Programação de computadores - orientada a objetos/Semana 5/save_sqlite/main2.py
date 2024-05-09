from faker import Faker

f = Faker(["pt_PT"])


print(f.name())
print(f.address())
print(f.city())

#print(f.state())
print(f.country())
#print(f.zip())
print(f.phone_number())
print(f.email())
print(f.date_of_birth())
#print(f.date_of_death())
print(f.timezone())
print(f.url())
print(f.text())

