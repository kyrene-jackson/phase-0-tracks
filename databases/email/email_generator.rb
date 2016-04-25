# Project: Build an email program!
# User should be able to:
# 1. View inbox
# 2. SELECT an email by index, email address, or date
# 3. Display select email(s)
# 4. DELETE an email by index, email address, or date
# 5. Display updated inbox after a DELETE
# ====================================================================
# Schema Outline (many-to-many)
# Table 1: Contacts               Table 2: Email            Table 3: Dates
# -----------------             -----------------           -----------------
# id(integer primary key)      id(integer primary key)      id(integer primary key)
# -----------------             -----------------           -----------------
# name (varchar)                message (varchar)           date(date)
# -----------------             -----------------
# email (varchar)                contact_id(int)
# -----------------             -----------------
#                                 date_id(int)
# ====================================================================

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("emails.db")

# set contact table delimiter
create_contact_table = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
  )
SQL

# create a contacts table (if not already created)
db.execute(create_contact_table)

# add test contact
db.execute("INSERT INTO contacts (name, email) VALUES ('Patty', 'patty1234@gmail.com')")
