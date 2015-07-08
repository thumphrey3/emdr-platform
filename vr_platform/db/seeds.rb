# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Patient.delete_all
Blsexposure.delete_all
Cycle.delete_all
Determinant.delete_all
Session.delete_all

patient_list = [
  ["Monisha", "Sullivan", "Female", 16, "94121", "Penicillin for her strep throat, ProAir for her asthma, and permethrin for her scabies", ["Asthma", "Lung problems / cough","Depression / Anxiety",""], "(415) 333-2323", "Dr. Nadine Burke Harris", "(650) 309-2013"],
  
  ["Murray", "Barr", "Male", 54, "94403", "Acamprosate, disulfiram", ["Liver problems / Hepatitis", "Psychiatric Care", "Lung problems / cough", ""], "(650) 932-2930", "Marla Johns", "(650) 232-2302"], 

  ["Radric", "Davis", "Male", 35, "30316", "Adderall, Hydrochlorothiazide", ["High Blood Pressure", "Headaches / Migraines", "Psychiatric Care", ""], "(404) 121-1017", "Kenneth Bailey", "(404) 232-1017"], 

  ["Hank", "Hendricks", "Male", 47, "94403", "Oral diabetes medications(ODMs), aspirin, salsalate", ["Diabetes", "Heart Disease / Murmur / Angina", "Depression / Anxiety", ""], "(650) 322-2323", "Jeffrey Brenner", "(650) 923-2039"],

  ["Vibha", "Gandhi", "Female", 57, "94121", "Pioglitazone, glibenclamide, U-100 insulin", ["Diabetes", "Heart Disease / Murmur / Angina", "Stroke", "Swollen ankles", ""], "(415) 932-9201", "Jayshree Ji", "(415) 331-9203"]
]

patient_list.each do |first_name, last_name, gender, age, zipcode, medication, conditions, telephone_no, emergencycontact, emergencycontact_no|
  Patient.create(first_name: first_name, last_name: last_name, gender: gender, age: age, zipcode: zipcode, medication: medication, conditions: conditions, telephone_no: telephone_no, emergencycontact: emergencycontact, emergencycontact_no: emergencycontact_no)
end

puts "Success: Patients data loaded"
