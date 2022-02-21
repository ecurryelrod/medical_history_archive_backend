# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
        {name: 'Primary Care Doctor'},
        {name: 'ER/Hospital'},
        {name: 'Physical Therapist'},
        {name: 'Occupational Therapist'},
        {name: 'Speech Therapist'},
        {name: 'Caregiver'},
        {name: 'Psychiatrist'},
        {name: 'Surgery'},
        {name: 'Neurologist'},
        {name: 'Heart Doctor'},
        {name: 'Blood Doctor'}
])

Record.create(
        doc_name: 'Test Doc', 
        practice_name: 'Test Practice', 
        url: 'www.gonowhere.com', 
        date: '2022-02-23', 
        phone: 5552345678, 
        medications: 'med 1, med 2, med 3',
        med_notes: 'med 1: take once a day on empty stomach, med 2: take 3 times a day with food, med 3: take 3 times a day with food',
        comments: 'everything looks good',
        category_id: 1
)