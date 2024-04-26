"""


   "usr2": {
    "id": 2,
    "name": "Ervin Howell",
    "username": "Antonette",
    "email": "Shanna@melissa.tv",
    "address":"" ,
    "phone": "010-692-6593 x09125",
    "website": "anastasia.net",
    "company": ""
  }

"""
import datetime as dt
class User:
    def __init__(self, id: int,
                 name: str,
                 username: str,
                 email: str,
                 address: str,
                 phone: int,
                 website: str,
                 company: str):

        self.id = id
        self.name = name
        self.username = username
        self.email = email
        self.address = address
        self.phone = phone
        self.website = website
        self.company = company
        self.created_at = dt.datetime.now()


"""
u = User(1,
         "Carlos",
         "carlos2131",
         "blabla@sapo.pt",
         "lisboa",
         121324,
         "sem site",
         "IEFP")
"""