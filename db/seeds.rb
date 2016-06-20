# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Admin", description: "Can have total application access"})
r2 = Role.create({name: "Doctor", description: "Can read and create Preceptions. Can update and destroy own Preceptions"})
r3 = Role.create({name: "Staff", description: "Can perform Some activities"})

u1 = User.create({name: "Raghu", email: "raghu@example.com", password: "12345678", password_confirmation: "12345678", role_id: r1.id})
u2 = User.create({name: "Srinu", email: "srinu@example.com", password: "12345678", password_confirmation: "12345678", role_id: r2.id})
u3 = User.create({name: "Ramesh", email: "ramesh@example.com", password: "12345678", password_confirmation: "12345678", role_id: r2.id})
u4 = User.create({name: "Rajesh", email: "rajesh@example.com", password: "12345678", password_confirmation: "12345678", role_id: r3.id})
