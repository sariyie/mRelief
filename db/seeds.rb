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
p.save

p = Program.new
p.name = "RTA Ride Free"
p.url = "/rta_free_rides/new"
p.save

p = Program.new
p.name = "Child Care Voucher"
p.url = "/child_care_vouchers/new"
p.save

p = Program.new
p.name = "Rental Assistance"
p.save

