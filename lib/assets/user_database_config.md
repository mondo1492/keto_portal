Table: User
Database Indecies:
REQUIRED TO CREATE USER:
* Username (string)
* Valid Email (string)
* password_digest (string)

To Confirm User:
* Authenticated (bool)

Health Status: Has one
* Weight (Float)
* Height (float)
* profile picture url (string)
* Birth Month
* Birth Day
* Birth Year
* Sex
* Body Fat percentage


Weigh Ins: user has many: belongs to User
* Weight
* date
*
