Student.create!([
  {first_name: 'Benji', last_name: 'Pang', password: "password", email: 'benjisp018@gmail.com', phone_number: '1111111', short_bio: 'Likes long walks on the beach under the moonlight.', linkedin_url: 'linkedin.com/benjisp', twitter_handle: 'https://twitter.com/lilycollins', website_url: 'benjisp.com', online_resume_url: 'resume.com/benjisp', github_url: 'github.com/benjisp', photo: 'https://www.njhiking.com/wp-content/uploads/2017/12/snowy-owl-12-2017-AC0Z6032-570x570.jpg'},
  {first_name: 'Tori', last_name: 'Kafati', password: "password", email: 'torikafati@gmail.com', phone_number: '2222222', short_bio: 'Enjoys coffee and wine.', linkedin_url: 'linkedin.com/devtorik17', twitter_handle: 'https://twitter.com/selenagomez', website_url: 'devtorik17.com', online_resume_url: 'resume.com/devtorik17', github_url: 'github.com/torik17', photo: 'https://oceana.org/sites/default/files/blue_whale_0.jpg'},
  {first_name: 'Benjamin', last_name: 'Chapin', password: "password", email: 'benjamin.n.chapin@gmail.com', phone_number: '3333333', short_bio: 'Coder/artist', linkedin_url: 'https://www.linkedin.com/in/benjamin--chapin/', twitter_handle: 'https://twitter.com/sophiet', website_url: 'benjaminchapin.com', online_resume_url: 'resume.com/benjaminchapin', github_url: 'github.com/benjaminchapin', photo: 'https://animals.net/wp-content/uploads/2019/02/Panda-Bear-4-650x425.jpg'},
  {first_name: 'Jeneen', last_name: 'LeMar', password: "password", email: 'jeneen.lemar@gmail.com', phone_number: '4444444', short_bio: 'Teacher, Trainer, Mom, Coach, Taxi... the list is endless :-)', linkedin_url: 'https://www.linkedin.com/in/jeneenlemar26/', twitter_handle: 'https://twitter.com/elonmusk', website_url: 'jeneenlemar.com', online_resume_url: 'resume.com/jeneenlemar', github_url: 'github.com/jeneenlemar', photo: 'https://thenypost.files.wordpress.com/2015/04/paris_hilton.jpg?quality=90&strip=all&w=618&h=410&crop=1'},
  {first_name: 'Michael', last_name: 'McFaddin', password: "password", email: 'mikemcfaddin@gmail.com', phone_number: '5555555', short_bio: 'Enjoys leading people and hats.', linkedin_url: 'https://www.linkedin.com/in/michael-mcfaddin/', twitter_handle: 'https://twitter.com/mr_reeves_blog', website_url: 'michael-mcfaddin.com', online_resume_url: 'resume.com/michael-mcfaddin', github_url: 'github.com/michael-mcfaddin', photo: 'https://cdn.vox-cdn.com/thumbor/CqUT8Og4fGolQSLnumdw9oS4X1Q=/0x0:2397x3000/1200x800/filters:focal(1018x523:1400x905)/cdn.vox-cdn.com/uploads/chorus_image/image/65570450/AP_19301725142822.0.jpg'},
  {first_name: 'Christine', last_name: 'Redhead', password: "password", email: 'credhead89@gmail.com', phone_number: '6666666', short_bio: 'Enjoys acting and laughing.', linkedin_url: 'https://www.linkedin.com/in/christine-redhead89/', twitter_handle: 'https://twitter.com/chrisevans', website_url: 'credhead5.com', online_resume_url: 'resume.com/credhead5', github_url: 'github.com/credhead5', photo: 'https://audubonportland.org/wp-content/uploads/2019/01/16772838179_3a81035e32_k-Edited.jpg'}
])


Capstone.create!([
  {name: 'Movie App', description: 'Allows users to send movie recommendations.', url: 'movieapp.com', screenshot: 'movieapp-image', student_id: 1},
  {name: 'Knugget', description: 'Links people who have taken the same class.', url: 'knugget.com', screenshot: 'knugget-image', student_id: 2},
  {name: 'Waypointr', description: 'Allows users to find cool hikes.', url: 'waypointr.com', screenshot: 'waypointr-image', student_id: 3},
  {name: 'Craftr', description: 'Allows users to find cool craft events.', url: 'craftr.com', screenshot: 'craftr-image', student_id: 4},
  {name: 'Go Green', description: 'Reddit type app for people who want to help save the planet', url: 'gogreen.com', screenshot: 'gogreen-image', student_id: 5},
  {name: 'Act Together', description: 'Meetup app for actors to rehearse', url: 'acttogether.com', screenshot: 'acttogether-image', student_id: 6}
])


Education.create!([
  {start_date: '01-01-2014', end_date: '01-01-2018', degree: 'Bachelors', university_name: 'MIT', details: 'this university is located in Massachusetts', student_id: 1},
  {start_date: '02-02-2014', end_date: '02-02-2018', degree: 'Bachelors', university_name: 'Stanford', details: 'this university is cool', student_id: 2},
  {start_date: '03-03-2014', end_date: '03-03-2018', degree: 'Bachelors', university_name: 'Cambridge', details: 'this university is old', student_id: 3},
  {start_date: '04-04-2014', end_date: '04-04-2018', degree: 'Bachelors', university_name: 'Oxford', details: 'this university is a cow', student_id: 4},
  {start_date: '05-05-2014', end_date: '05-05-2018', degree: 'Bachelors', university_name: 'Berkeley', details: 'not berklee', student_id: 5},
  {start_date: '06-06-2014', end_date: '06-06-2018', degree: 'Bachelors', university_name: 'Princeton', details: 'Fresh Princeton of Bel Air', student_id: 6}
])


Experience.create!([
  {start_date: '2019-07-05', end_date: '2019-11-15', job_title: 'student', company_name: 'Actualize', details: 'journey to becoming web developers', student_id: 1},
  {start_date: '2019-07-05', end_date: '2019-11-15', job_title: 'student', company_name: 'Actualize', details: 'journey to becoming web developers', student_id: 2},
  {start_date: '2020-01-06', end_date: '2020-03-27', job_title: 'student', company_name: 'Actualize', details: 'journey to becoming web developers', student_id: 3},
  {start_date: '2020-01-06', end_date: '2020-03-27', job_title: 'student', company_name: 'Actualize', details: 'journey to becoming web developers', student_id: 4},
  {start_date: '2020-01-06', end_date: '2020-03-27', job_title: 'student', company_name: 'Actualize', details: 'journey to becoming web developers', student_id: 5},
  {start_date: '2020-01-06', end_date: '2020-03-27', job_title: 'student', company_name: 'Actualize', details: 'journey to becoming web developers', student_id: 6}
])


Skill.create!([
  {name: 'Ruby'},
  {name: 'Ruby on Rails'},
  {name: 'Test-Driven Development'},
  {name: 'JavaScript'},
  {name: 'HTML'},
  {name: 'Vue.js'},
  {name: 'CSS'},
  {name: 'Git'},
  {name: 'APIs'},
  {name: 'Pair-Programming'}
])


StudentSkill.create!([
  {student_id: 1, skill_id: 1}, 
  {student_id: 1, skill_id: 2},
  {student_id: 1, skill_id: 3},
  {student_id: 1, skill_id: 4}, 
  {student_id: 1, skill_id: 5},
  {student_id: 1, skill_id: 6},
  {student_id: 1, skill_id: 7}, 
  {student_id: 1, skill_id: 8},
  {student_id: 1, skill_id: 9},
  {student_id: 1, skill_id: 10},
  {student_id: 2, skill_id: 1}, 
  {student_id: 2, skill_id: 2},
  {student_id: 2, skill_id: 3},
  {student_id: 2, skill_id: 4}, 
  {student_id: 2, skill_id: 5},
  {student_id: 2, skill_id: 6},
  {student_id: 2, skill_id: 7}, 
  {student_id: 2, skill_id: 8},
  {student_id: 2, skill_id: 9},
  {student_id: 2, skill_id: 10},
  {student_id: 3, skill_id: 1}, 
  {student_id: 3, skill_id: 2},
  {student_id: 3, skill_id: 3},
  {student_id: 3, skill_id: 4}, 
  {student_id: 3, skill_id: 5},
  {student_id: 3, skill_id: 6},
  {student_id: 3, skill_id: 7}, 
  {student_id: 3, skill_id: 8},
  {student_id: 3, skill_id: 9},
  {student_id: 3, skill_id: 10},
  {student_id: 4, skill_id: 1}, 
  {student_id: 4, skill_id: 2},
  {student_id: 4, skill_id: 3},
  {student_id: 4, skill_id: 4}, 
  {student_id: 4, skill_id: 5},
  {student_id: 4, skill_id: 6},
  {student_id: 4, skill_id: 7}, 
  {student_id: 4, skill_id: 8},
  {student_id: 4, skill_id: 9},
  {student_id: 4, skill_id: 10},
  {student_id: 5, skill_id: 1}, 
  {student_id: 5, skill_id: 2},
  {student_id: 5, skill_id: 3},
  {student_id: 5, skill_id: 4}, 
  {student_id: 5, skill_id: 5},
  {student_id: 5, skill_id: 6},
  {student_id: 5, skill_id: 7}, 
  {student_id: 5, skill_id: 8},
  {student_id: 5, skill_id: 9},
  {student_id: 5, skill_id: 10},
  {student_id: 6, skill_id: 1}, 
  {student_id: 6, skill_id: 2},
  {student_id: 6, skill_id: 3},
  {student_id: 6, skill_id: 4}, 
  {student_id: 6, skill_id: 5},
  {student_id: 6, skill_id: 6},
  {student_id: 6, skill_id: 7}, 
  {student_id: 6, skill_id: 8},
  {student_id: 6, skill_id: 9},
  {student_id: 6, skill_id: 10}
])