# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Stage.create! name: "First grade"
Stage.create! name: "Second grade"
Stage.create! name: "Third grade"
Stage.create! name: "Fourth grade"
Stage.create! name: "Fifth grade"
Stage.create! name: "Sixth grade"
Stage.create! name: "Seventh grade"
Stage.create! name: "Eighth grade"
Stage.create! name: "Ninth grade"
Stage.create! name: "Tenth grade"
Stage.create! name: "Eleventh grade"
Stage.create! name: "Twelfth grade"

Role.create! name: "super_admin"
Role.create! name: "admin"
Role.create! name: "teacher"
Role.create! name: "parent"
Role.create! name: "student"

# add_reference :cat_toys, :toyable, polymorphic: true, index: true

# @catToyTwo = CatToy.create(name: "string!", toyable_id: 2, toyable_type: "Panther")

# @catToyTwo = CatToy.create(name: "string!",accountable_id: 1, accountable_type: "super_admin")

# ['admin', 'parent', 'teacher'].each do |account|
#   Account.find_or_create_by({name: account})
# end

# Classroom.create! name: "1/1 primary"
# Classroom.create! name: "1/2 primary"
# Classroom.create! name: "1/3 primary"
# Classroom.create! name: "1/4 primary"

# Classroom.create! name: "2/1 primary"
# Classroom.create! name: "2/2 primary"
# Classroom.create! name: "2/3 primary"
# Classroom.create! name: "2/4 primary"

# Classroom.create! name: "3/1 primary"
# Classroom.create! name: "3/2 primary"
# Classroom.create! name: "3/3 primary"
# Classroom.create! name: "3/4 primary"

# Classroom.create! name: "4/1 primary"
# Classroom.create! name: "4/2 primary"
# Classroom.create! name: "4/3 primary"
# Classroom.create! name: "4/4 primary"

# Classroom.create! name: "5/1 primary"
# Classroom.create! name: "5/2 primary"
# Classroom.create! name: "5/3 primary"
# Classroom.create! name: "5/4 primary"

# Classroom.create! name: "6/1 primary"
# Classroom.create! name: "6/2 primary"
# Classroom.create! name: "6/3 primary"
# Classroom.create! name: "6/4 primary"
# #####################################
# Classroom.create! name: "1/1 middle"
# Classroom.create! name: "1/2 middle"
# Classroom.create! name: "1/3 middle"

# Classroom.create! name: "2/1 middle"
# Classroom.create! name: "2/2 middle"
# Classroom.create! name: "2/3 middle"

# Classroom.create! name: "3/1 middle"
# Classroom.create! name: "3/2 middle"
# Classroom.create! name: "3/4 middle"
# #####################################
# Classroom.create! name: "1/1 high"
# Classroom.create! name: "1/2 high"
# Classroom.create! name: "1/3 high"

# Classroom.create! name: "2/1 high"
# Classroom.create! name: "2/2 high"
# Classroom.create! name: "2/3 high"

# Classroom.create! name: "3/1 high"
# Classroom.create! name: "3/2 high"
# Classroom.create! name: "3/3 high"
