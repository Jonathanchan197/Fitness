User.destroy_all
u1 = User.create :email => 'toto@ga.co', :password => "chicken"
u2 = User.create :email => 'gogo@ga.co', :password => "chicken"
puts "#{User.count} users"

Routine.destroy_all
r1 = Routine.create :title => 'Leg Day'
r2 = Routine.create :title => 'Chest Day'
puts "#{Routine.count} routines"

Workout.destroy_all
w1 = Workout.create :sets => 4, :reps => 10, :name => "Push up"
w2 = Workout.create :sets => 3, :reps => 12, :name => "Sit up"
puts "#{Workout.count} workouts"

Exercise.destroy_all
e1 = Exercise.create :name => 'Push Up', :image => 'https://static.wikia.nocookie.net/parkour/images/e/e0/Push_Up.jpg'
e2 = Exercise.create :name => 'Sit Up', :image => 'https://media.istockphoto.com/vectors/woman-who-was-fat-doing-sit-up-on-mat-vector-id848741194?k=20&m=848741194&s=170667a&w=0&h=ZxAy2cNuxch0c38Oh75rO_AV4s-T_a5wjhOJcySAw5I='
puts "#{Exercise.count} exercises"

#associations
puts "Routine and Workouts"
r1.workouts << w1 << w2

puts "Workout and Exercise"
e1.workouts << w1
e2.workouts << w2

puts "User and Routines"
u1.routines << r1 << r2

puts "User and Workouts"
u1.workouts << w1