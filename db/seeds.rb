User.destroy_all
u1 = User.create :email => 'toto@ga.co', :password => "chicken", :image => "https://www.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png"
u2 = User.create :email => 'gogo@ga.co', :password => "chicken", :image => "https://i.pinimg.com/originals/d9/56/9b/d9569bbed4393e2ceb1af7ba64fdf86a.jpg"
puts "#{User.count} users"

Routine.destroy_all
r1 = Routine.create :title => 'Leg Day 1'
r2 = Routine.create :title => 'Leg Day 2'
r3 = Routine.create :title => 'Chest Day'
r4 = Routine.create :title => 'Arm Day'
puts "#{Routine.count} routines"

Exercise.destroy_all
e1 = Exercise.create :name => 'Squats', :youtube => 'https://www.youtube.com/watch?v=Dy28eq2PjcM'
e2 = Exercise.create :name => 'Hamstring Curls', :youtube => 'https://www.youtube.com/watch?v=q1cKTmaeQWo'
e3 = Exercise.create :name => 'Deadlift', :youtube => 'https://www.youtube.com/watch?v=r4MzxtBKyNE'
e4 = Exercise.create :name => 'Leg Raises', :youtube => 'https://www.youtube.com/watch?v=JB2oyawG9KI'
e5 = Exercise.create :name => 'Push Up', :youtube => 'https://www.youtube.com/watch?v=IODxDxX7oi4&t=66s'
e6 = Exercise.create :name => 'Bench Press', :youtube => 'https://www.youtube.com/watch?v=gRVjAtPip0Y'
e7 = Exercise.create :name => 'Bicep Curl', :youtube => 'https://www.youtube.com/watch?v=ykJmrZ5v0Oo'
e8 = Exercise.create :name => 'Tricep Pushdown', :youtube => 'https://www.youtube.com/watch?v=2-LAMcpzODU'
puts "#{Exercise.count} exercises"

Workout.destroy_all
w1 = Workout.create :sets => 4, :reps => 10 
w2 = Workout.create :sets => 3, :reps => 12
w3 = Workout.create :sets => 5, :reps => 5
w4 = Workout.create :sets => 4, :reps => 15 
w5 = Workout.create :sets => 4, :reps => 12 
w6 = Workout.create :sets => 4, :reps => 8
w7 = Workout.create :sets => 4, :reps => 12 
w8 = Workout.create :sets => 3, :reps => 12 
puts "#{Workout.count} workouts"

Muscle.destroy_all
m1 = Muscle.create :name => 'Bicep', :image => 'https://oldschoollabs.com/wp-content/uploads/2019/06/1-2.jpg'
m2 = Muscle.create :name => 'Tricep', :image => 'https://www.aworkoutroutine.com/wp-content/uploads/2013/10/triceps-heads.jpg'
m3 = Muscle.create :name => 'Hamstring', :image => 'https://orthoinfo.aaos.org/contentassets/4716262257c84321ae67e5d1ed5fb63c/a00408f01_hamstring-muscles.patiented-fig-81-ab-edit.jpg'
m4 = Muscle.create :name => 'Quad', :image => 'https://images.squarespace-cdn.com/content/v1/5652f717e4b0070eb05c2f63/1601601741206-SCEQ7WQ8QC4PZHG3DFAS/Quad+stretches+For+Seniors?format=1000w'
m5 = Muscle.create :name => 'Pectoral', :image => 'https://www.ncbi.nlm.nih.gov/books/NBK545241/bin/pectoralis__muscles.jpg'
m6 = Muscle.create :name => 'Abdominal', :image => 'https://www.sportsmd.com/wp-content/uploads/2015/01/Abdominal-Muscle-strain-1.jpg'
m7 = Muscle.create :name => 'Lower Back', :image => 'https://marvel-b1-cdn.bc0a.com/f00000000041628/ix-cdn.b2e5.com/images/41628/41628_fbda90b28847495282bdcae2649248be_1653407908.jpeg'
puts "#{Muscle.count} muscles"

#associations
puts "Routine and Workouts"
r1.workouts << w1 << w2
r2.workouts << w3 << w4
r3.workouts << w5 << w6
r4.workouts << w7 << w8

puts "Workout and Exercise"
e1.workouts << w1
e2.workouts << w2
e3.workouts << w3
e4.workouts << w4
e5.workouts << w5
e6.workouts << w6
e7.workouts << w7
e8.workouts << w8

puts "User and Routines"
u1.routines << r1 << r2
u2.routines << r3 << r4

puts "Exercises and Muscles"
e1.muscles << m3 << m4 << m6
e2.muscles << m3
e3.muscles << m3 << m4 << m6 << m7
e4.muscles << m6
e5.muscles << m1 << m2 << m5
e6.muscles << m1 << m5
e7.muscles << m1
e8.muscles << m2
