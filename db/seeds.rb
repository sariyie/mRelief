# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s = SnapEligibility.new
s.snap_dependent_no = 1
s.snap_gross_income = 1245.0
s.save

s = SnapEligibility.new
s.snap_dependent_no = 2
s.snap_gross_income = 1681.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 3
s.snap_gross_income = 2116.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 4
s.snap_gross_income = 2552.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 5
s.snap_gross_income = 2987.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 6
s.snap_gross_income = 3423.0
s.save

s = SnapEligibility.new
s.snap_dependent_no = 7
s.snap_gross_income = 3858.0
s.save

s = SnapEligibility.new
s.snap_dependent_no = 8
s.snap_gross_income = 4294.0
s.save

s = SnapEligibility.new
s.snap_dependent_no = 9
s.snap_gross_income = 4730.0
s.save

s = SnapEligibility.new
s.snap_dependent_no = 10
s.snap_gross_income = 5166.0
s.save

s = SnapEligibility.new
s.snap_dependent_no = 11
s.snap_gross_income = 5602.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 12
s.snap_gross_income = 6038.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 13
s.snap_gross_income = 6474.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 14
s.snap_gross_income = 6910.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 15
s.snap_gross_income = 7346.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 16
s.snap_gross_income = 7782.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 17
s.snap_gross_income = 8218.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 18
s.snap_gross_income = 8654.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 19
s.snap_gross_income = 9090.0
s.save


s = SnapEligibility.new
s.snap_dependent_no = 20
s.snap_gross_income = 9526.0
s.save

#Seniors

s = SnapEligibilitySenior.new
s.snap_dependent_no = 1
s.snap_gross_income = 1915.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 2
s.snap_gross_income = 2585.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 3
s.snap_gross_income = 3255.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 4
s.snap_gross_income = 3925.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 5
s.snap_gross_income = 4595.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 6
s.snap_gross_income = 5265.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 7
s.snap_gross_income = 5935.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 8
s.snap_gross_income = 6605.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 9
s.snap_gross_income = 7275.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 10
s.snap_gross_income = 7945.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 11
s.snap_gross_income = 8615.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 12
s.snap_gross_income = 9285.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 13
s.snap_gross_income = 9955.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 14
s.snap_gross_income = 10625.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 15
s.snap_gross_income = 11295.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 16
s.snap_gross_income = 11965.0
s.save

s = SnapEligibilitySenior.new
s.snap_dependent_no = 17
s.snap_gross_income = 12635.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 18
s.snap_gross_income = 13305.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 19
s.snap_gross_income = 13975.0
s.save


s = SnapEligibilitySenior.new
s.snap_dependent_no = 20
s.snap_gross_income = 14645.0
s.save

#Transit Benefits

r = RtaFreeRide.new
r.rta_dependent_no = 1
r.rta_gross_income = 27610.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 2
r.rta_gross_income = 36635.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 3
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 4
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 5
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 6
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 7
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 8
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 9
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 10
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 11
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 12
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 13
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 14
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 15
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 16
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 17
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 18
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 19
r.rta_gross_income = 45657.0
r.save

r = RtaFreeRide.new
r.rta_dependent_no = 20
r.rta_gross_income = 45657.0
r.save

# Child Care Voucher

c = ChildCareVoucher.new
c.ccdf_dependent_no = 1
c.ccdf_gross_income = 0.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 2
c.ccdf_gross_income = 2392.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 3
c.ccdf_gross_income = 3011.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 4
c.ccdf_gross_income = 3631.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 5
c.ccdf_gross_income = 4251.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 6
c.ccdf_gross_income = 4871.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 7
c.ccdf_gross_income = 5490.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 8
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 9
c.ccdf_gross_income = 6110.0
c.save
c = ChildCareVoucher.new
c.ccdf_dependent_no = 10
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 11
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 12
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 13
c.ccdf_gross_income = 6110.0
c.save
c = ChildCareVoucher.new
c.ccdf_dependent_no = 14
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 15
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 16
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 17
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 18
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 19
c.ccdf_gross_income = 6110.0
c.save

c = ChildCareVoucher.new
c.ccdf_dependent_no = 20
c.ccdf_gross_income = 6110.0
c.save

# Rental Assistance

r = RentalAssistance.new
r.rental_dependent_no = 1
r.rental_gross_income = 3646.88
r.save

r = RentalAssistance.new
r.rental_dependent_no = 2
r.rental_gross_income = 4915.63
r.save

r = RentalAssistance.new
r.rental_dependent_no = 3
r.rental_gross_income = 6184.38
r.save

r = RentalAssistance.new
r.rental_dependent_no = 4
r.rental_gross_income = 7453.13
r.save

r = RentalAssistance.new
r.rental_dependent_no = 5
r.rental_gross_income = 8721.88
r.save

r = RentalAssistance.new
r.rental_dependent_no = 6
r.rental_gross_income = 9990.63
r.save

r = RentalAssistance.new
r.rental_dependent_no = 7
r.rental_gross_income = 11259.38
r.save

r = RentalAssistance.new
r.rental_dependent_no = 8
r.rental_gross_income = 12528.13
r.save

p = Program.new
p.name = "Food Stamps"
p.url = "/mrelief"
p.description = "Nutrition assistance to low-income people and families"
p.save

p = Program.new
p.name = "RTA Ride Free"
p.url = "/rta_free_rides/new"
p.description = "Free Transit for the Aging and Disabled"
p.save

p = Program.new
p.name = "Child Care Voucher"
p.url = "/child_care_vouchers/new"
p.description = "Quality, affordable child care for low-income families"
p.save

p = Program.new
p.name = "Rental Assistance"
p.url = "/rental_assistances/new"
p.description = "Emergency Rental Assistance during financial hardship"
p.save

p = Program.new
p.name =  "Auto Repair Assistance"
p.url = "/auto_repair_assistances/new"
p.description = "Financial auto assistance to remove employment barriers"
p.save

p = Program.new
p.name =  "Women, Infants and Children (WIC)"
p.url = "/wics/new"
p.description = "Nutrition education, counseling, and food for families"
p.save

p = Program.new
p.name =  "Vision Assistance"
p.url = "/visions/new"
p.description = "Eye exams and glasses to remove employment barriers"
p.save

p = Program.new
p.name = "Family Nutrition"
p.url = "/family_nutritions/new"
p.description = "Fresh Produce for Families"
p.save

p = Program.new
p.name = "Dental Assistance"
p.url = "/dentals/new"
p.description = "Financial dental assistance to remove employment barriers"
p.save

p = Program.new
p.name = "Head Start"
p.url = "/head_starts/new"
p.description = "Promote school readiness for children ages 3-5"
p.save

p = Program.new
p.name = "Early Head Start"
p.url = "/early_head_starts/new"
p.description = "Promote school readiness for babies infants and toddlers"
p.save

p = Program.new
p.name = "Housing Counseling and Referral Information"
p.url = "/housing_assistances/new"
p.description = "Counseling, household budgeting and financial assistance"
p.save

a = AutoRepairAssistance.new
a.auto_household_size = 1
a.auto_gross_income = 3646.88
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 2
a.auto_gross_income = 4915.63
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 3
a.auto_gross_income = 6184.38
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 4
a.auto_gross_income = 7453.13
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 5
a.auto_gross_income = 8721.88
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 6
a.auto_gross_income = 9990.63
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 7
a.auto_gross_income = 11259.38
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 8
a.auto_gross_income = 12528.13
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 9
a.auto_gross_income = 13796.88
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 10
a.auto_gross_income = 15065.63
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 11
a.auto_gross_income = 16334.38
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 12
a.auto_gross_income = 17603.13
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 13
a.auto_gross_income = 18871.88
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 14
a.auto_gross_income = 20140.63
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 15
a.auto_gross_income = 21409.38
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 16
a.auto_gross_income = 22678.13
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 17
a.auto_gross_income = 23946.88
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 18
a.auto_gross_income = 25215.63
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 19
a.auto_gross_income = 26484.38
a.save

a = AutoRepairAssistance.new
a.auto_household_size = 20
a.auto_gross_income = 27753.13
a.save

w = Wic.new
w.wic_household_size = 1
w.wic_gross_income = 1800.00
w.save

w = Wic.new
w.wic_household_size = 2
w.wic_gross_income = 2426.00
w.save

w = Wic.new
w.wic_household_size = 3
w.wic_gross_income = 3051.00
w.save

w = Wic.new
w.wic_household_size = 4
w.wic_gross_income = 3677.00
w.save

w = Wic.new
w.wic_household_size = 5
w.wic_gross_income = 4303.00
w.save

w = Wic.new
w.wic_household_size = 6
w.wic_gross_income = 4929.00
w.save

w = Wic.new
w.wic_household_size = 7
w.wic_gross_income = 5555.00
w.save

w = Wic.new
w.wic_household_size = 8
w.wic_gross_income = 6181.00
w.save

w = Wic.new
w.wic_household_size = 9
w.wic_gross_income = 6807.00
w.save

w = Wic.new
w.wic_household_size = 10
w.wic_gross_income = 7433.00
w.save

w = Wic.new
w.wic_household_size = 11
w.wic_gross_income = 8059.00
w.save

w = Wic.new
w.wic_household_size = 12
w.wic_gross_income = 8685.00
w.save

w = Wic.new
w.wic_household_size = 13
w.wic_gross_income = 9311.00
w.save

w = Wic.new
w.wic_household_size = 14
w.wic_gross_income = 9937.00
w.save

w = Wic.new
w.wic_household_size = 15
w.wic_gross_income = 10563.00
w.save

w = Wic.new
w.wic_household_size = 16
w.wic_gross_income = 11189.00
w.save

w = Wic.new
w.wic_household_size = 17
w.wic_gross_income = 11815.00
w.save

w = Wic.new
w.wic_household_size = 18
w.wic_gross_income = 12441.00
w.save

w = Wic.new
w.wic_household_size = 19
w.wic_gross_income = 13067.00
w.save

w = Wic.new
w.wic_household_size = 20
w.wic_gross_income = 13693.00
w.save


v = Vision.new
v.vision_household_size = 1
v.vision_gross_income = 3646.88
v.save

v = Vision.new
v.vision_household_size = 2
v.vision_gross_income = 4915.63
v.save

v = Vision.new
v.vision_household_size = 3
v.vision_gross_income = 6184.38
v.save

v = Vision.new
v.vision_household_size = 4
v.vision_gross_income = 7453.13
v.save

v = Vision.new
v.vision_household_size = 5
v.vision_gross_income = 8721.88
v.save

v = Vision.new
v.vision_household_size = 6
v.vision_gross_income = 9990.63
v.save

v = Vision.new
v.vision_household_size = 7
v.vision_gross_income = 11259.38
v.save

v = Vision.new
v.vision_household_size = 8
v.vision_gross_income = 12528.13
v.save

v = Vision.new
v.vision_household_size = 9
v.vision_gross_income = 13796.88
v.save

v = Vision.new
v.vision_household_size = 10
v.vision_gross_income = 15065.63
v.save

v = Vision.new
v.vision_household_size = 11
v.vision_gross_income = 16334.38
v.save

v = Vision.new
v.vision_household_size = 12
v.vision_gross_income = 17603.13
v.save

v = Vision.new
v.vision_household_size = 13
v.vision_gross_income = 18871.88
v.save

v = Vision.new
v.vision_household_size = 14
v.vision_gross_income = 20140.63
v.save

v = Vision.new
v.vision_household_size = 15
v.vision_gross_income = 21409.38
v.save

v = Vision.new
v.vision_household_size = 16
v.vision_gross_income = 22678.13
v.save

v = Vision.new
v.vision_household_size = 17
v.vision_gross_income = 23946.88
v.save

v = Vision.new
v.vision_household_size = 18
v.vision_gross_income = 25215.63
v.save

v = Vision.new
v.vision_household_size = 19
v.vision_gross_income = 26484.38
v.save

v = Vision.new
v.vision_household_size = 20
v.vision_gross_income = 27753.13
v.save

d = Dental.new
d.dental_household_size = 1
d.dental_gross_income = 3646.88
d.save

d = Dental.new
d.dental_household_size = 2
d.dental_gross_income = 4915.63
d.save

d = Dental.new
d.dental_household_size = 3
d.dental_gross_income = 6184.38
d.save

d = Dental.new
d.dental_household_size = 4
d.dental_gross_income = 7453.13
d.save

d = Dental.new
d.dental_household_size = 5
d.dental_gross_income = 7453.13
d.save

d = Dental.new
d.dental_household_size = 6
d.dental_gross_income = 9990.63
d.save

d = Dental.new
d.dental_household_size = 7
d.dental_gross_income = 11259.38
d.save

d = Dental.new
d.dental_household_size = 8
d.dental_gross_income = 12528.13
d.save

d = Dental.new
d.dental_household_size = 9
d.dental_gross_income = 13796.88
d.save

d = Dental.new
d.dental_household_size = 10
d.dental_gross_income = 15065.63
d.save

d = Dental.new
d.dental_household_size = 11
d.dental_gross_income = 16334.38
d.save

d = Dental.new
d.dental_household_size = 12
d.dental_gross_income = 17603.13
d.save

d = Dental.new
d.dental_household_size = 13
d.dental_gross_income = 17603.13
d.save

d = Dental.new
d.dental_household_size = 14
d.dental_gross_income = 20140.63
d.save

d = Dental.new
d.dental_household_size = 15
d.dental_gross_income = 21409.38
d.save

d = Dental.new
d.dental_household_size = 16
d.dental_gross_income = 22678.13
d.save

d = Dental.new
d.dental_household_size = 17
d.dental_gross_income = 23946.88
d.save

d = Dental.new
d.dental_household_size = 18
d.dental_gross_income = 25215.63
d.save

d = Dental.new
d.dental_household_size = 19
d.dental_gross_income = 26484.38
d.save

d = Dental.new
d.dental_household_size = 20
d.dental_gross_income = 27753.13
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 1
d.nutrition_gross_income = 3646.88
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 2
d.nutrition_gross_income = 4915.63
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 3
d.nutrition_gross_income = 6184.38
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 4
d.nutrition_gross_income = 7453.13
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 5
d.nutrition_gross_income = 7453.13
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 6
d.nutrition_gross_income = 9990.63
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 7
d.nutrition_gross_income = 11259.38
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 8
d.nutrition_gross_income = 12528.13
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 9
d.nutrition_gross_income = 13796.88
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 10
d.nutrition_gross_income = 15065.63
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 11
d.nutrition_gross_income = 16334.38
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 12
d.nutrition_gross_income = 17603.13
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 13
d.nutrition_gross_income = 17603.13
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 14
d.nutrition_gross_income = 20140.63
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 15
d.nutrition_gross_income = 21409.38
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 16
d.nutrition_gross_income = 22678.13
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 17
d.nutrition_gross_income = 23946.88
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 18
d.nutrition_gross_income = 25215.63
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 19
d.nutrition_gross_income = 26484.38
d.save

d = FamilyNutrition.new
d.nutrition_household_size = 20
d.nutrition_gross_income = 27753.13
d.save

# Housing Assistance
h = HousingAssistance.new
h.housing_dependent_no = 1
h.housing_gross_income = 3646.88
h.save

h = HousingAssistance.new
h.housing_dependent_no = 2
h.housing_gross_income = 4915.63
h.save

h = HousingAssistance.new
h.housing_dependent_no = 3
h.housing_gross_income = 6184.38
h.save

h = HousingAssistance.new
h.housing_dependent_no = 4
h.housing_gross_income = 7453.13
h.save

h = HousingAssistance.new
h.housing_dependent_no = 5
h.housing_gross_income = 8721.88
h.save

h = HousingAssistance.new
h.housing_dependent_no = 6
h.housing_gross_income = 9990.63
h.save

h = HousingAssistance.new
h.housing_dependent_no = 7
h.housing_gross_income = 11259.38
h.save

h = HousingAssistance.new
h.housing_dependent_no = 8
h.housing_gross_income = 12528.13
h.save

h = HousingAssistance.new
h.housing_dependent_no = 9
h.housing_gross_income = 13796.88
h.save

h = HousingAssistance.new
h.housing_dependent_no = 10
h.housing_gross_income = 15065.63
h.save

h = HousingAssistance.new
h.housing_dependent_no = 11
h.housing_gross_income = 16334.38
h.save

h = HousingAssistance.new
h.housing_dependent_no = 12
h.housing_gross_income = 17603.13
h.save

h = HousingAssistance.new
h.housing_dependent_no = 13
h.housing_gross_income = 18871.88
h.save

h = HousingAssistance.new
h.housing_dependent_no = 14
h.housing_gross_income = 20140.63
h.save

h = HousingAssistance.new
h.housing_dependent_no = 15
h.housing_gross_income = 21409.38
h.save

h = HousingAssistance.new
h.housing_dependent_no = 16
h.housing_gross_income = 22678.13
h.save

h = HousingAssistance.new
h.housing_dependent_no = 17
h.housing_gross_income = 23946.88
h.save

h = HousingAssistance.new
h.housing_dependent_no = 18
h.housing_gross_income = 25215.63
h.save

h = HousingAssistance.new
h.housing_dependent_no = 19
h.housing_gross_income = 26484.38
h.save

h = HousingAssistance.new
h.housing_dependent_no = 20
h.housing_gross_income = 27753.13
h.save

# EarlyHeadStart

e = EarlyHeadStart.new
e.ehs_dependent_no = 1
e.ehs_gross_income = 11670
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 2
e.ehs_gross_income = 15730
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 3
e.ehs_gross_income = 19790
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 4
e.ehs_gross_income = 23850
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 5
e.ehs_gross_income = 27910
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 6
e.ehs_gross_income = 31970
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 7
e.ehs_gross_income = 36030
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 8
e.ehs_gross_income = 40090
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 9
e.ehs_gross_income = 44150
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 10
e.ehs_gross_income = 48210
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 11
e.ehs_gross_income = 52270
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 12
e.ehs_gross_income = 56330
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 13
e.ehs_gross_income = 60390
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 14
e.ehs_gross_income = 64450
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 15
e.ehs_gross_income = 68510
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 16
e.ehs_gross_income = 72570
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 17
e.ehs_gross_income = 76630
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 18
e.ehs_gross_income = 80690
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 19
e.ehs_gross_income = 84750
e.save

e = EarlyHeadStart.new
e.ehs_dependent_no = 20
e.ehs_gross_income = 88810
e.save

# Head Start

h = HeadStart.new
h.hs_dependent_no = 1
h.hs_gross_income = 11670
h.save

h = HeadStart.new
h.hs_dependent_no = 2
h.hs_gross_income = 15730
h.save

h = HeadStart.new
h.hs_dependent_no = 3
h.hs_gross_income = 19790
h.save

h = HeadStart.new
h.hs_dependent_no = 4
h.hs_gross_income = 23850
h.save

h = HeadStart.new
h.hs_dependent_no = 5
h.hs_gross_income = 27910
h.save

h = HeadStart.new
h.hs_dependent_no = 6
h.hs_gross_income = 31970
h.save

h = HeadStart.new
h.hs_dependent_no = 7
h.hs_gross_income = 36030
h.save

h = HeadStart.new
h.hs_dependent_no = 8
h.hs_gross_income = 40090
h.save

h = HeadStart.new
h.hs_dependent_no = 9
h.hs_gross_income = 44150
h.save

h = HeadStart.new
h.hs_dependent_no = 10
h.hs_gross_income = 48210
h.save

h = HeadStart.new
h.hs_dependent_no = 11
h.hs_gross_income = 52270
h.save

h = HeadStart.new
h.hs_dependent_no = 12
h.hs_gross_income = 56330
h.save

h = HeadStart.new
h.hs_dependent_no = 13
h.hs_gross_income = 60390
h.save

h = HeadStart.new
h.hs_dependent_no = 14
h.hs_gross_income = 64450
h.save

h = HeadStart.new
h.hs_dependent_no = 15
h.hs_gross_income = 68510
h.save

h = HeadStart.new
h.hs_dependent_no = 16
h.hs_gross_income = 72570
h.save

h = HeadStart.new
h.hs_dependent_no = 17
h.hs_gross_income = 76630
h.save

h = HeadStart.new
h.hs_dependent_no = 18
h.hs_gross_income = 80690
h.save

h = HeadStart.new
h.hs_dependent_no = 19
h.hs_gross_income = 84750
h.save

h = HeadStart.new
h.hs_dependent_no = 20
h.hs_gross_income = 88810
h.save
