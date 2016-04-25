# Project: Build an email program!
# User should be able to:
# 1. View inbox
# 2. SELECT an email by index, email address, or subject line
# 3. Display select email(s)
# 4. DELETE an email by index, email address, or subject line
# 5. Display updated inbox after a DELETE
# ====================================================================
# Schema Outline (many-to-many)
# Table 1: Contacts               Table 2: Inbox           Table 3: Subject Line
# -----------------             -----------------           -----------------
# id(integer primary key)      id(integer primary key)      id(integer primary key)
# -----------------             -----------------           -----------------
# name (varchar)                message (varchar)           subject (varchar)
# -----------------             -----------------
# email (varchar)                contact_id(int)
# -----------------             -----------------
#                                 subject_id(int)
# ====================================================================
# DONT TOUCH
# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("emails.db")
# ====================================================================
# TEST AREA


# set contact table delimiter
create_contact_table = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
  )
SQL

# set subject table delimiter
create_subject_line_table = <<-SQL
  CREATE TABLE IF NOT EXISTS subject_line(
    id INTEGER PRIMARY KEY,
    subject VARCHAR(255)
  )
SQL

# set inbox table delimiter
create_inbox_table = <<-SQL
  CREATE TABLE IF NOT EXISTS inbox(
    id INTEGER PRIMARY KEY,
    message VARCHAR(255),
    name VARCHAR(255)
  )
SQL

#Group all table methods into an array
table_set = [create_contact_table, create_subject_line_table, create_inbox_table]




# execute all tables
table_set.each do |table|
  db.execute(table)
end



#create_contact(db, Faker::Name.name, Faker::Internet.email)
# ====================================================================
# # CONTACTS
# # create a contacts table (if not already created)
# db.execute(create_contact_table)
#
# # add test method for contacts
# def create_contact(db, name, email)
#   db.execute("INSERT INTO contacts (name, email) VALUES (?, ?)", [name, email])
# end
# # test create_contact method using fake name and email data
# 4.times do
#   create_contact(db, Faker::Name.name, Faker::Internet.email)
# end
# ====================================================================
# SUBJECT LINE

# # create subject line table (if not already created)
# db.execute(create_subject_line_table)
#
# # test method for subject line
# def create_subject_line(db, subject)
#   db.execute("INSERT INTO subject_line (subject) VALUES (?)", [subject])
# end
#
# subject_types = ['Work', 'School', 'Personal']
# # test fake subject line data
# 4.times do
#   create_subject_line(db, subject_types.sample)
# end
# ====================================================================
# INBOX

#create an INBOX table (if not already created)
