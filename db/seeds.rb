Team.create!(name: "ALBAN", description: "Ruby dev: <a href='http://nukomeet.com' target='_blank'>Nukomeet</a> & <a href='http://coworfing.com' target='_blank'>Coworfing</a> cofounder", twitter: "albanlv")
Team.create!(name: "JULIEN", description: "After economics and statistics studies followed by two years working in the banking industry, Julien is now part of the <a href='http://nukomeet.com' target='_blank'>Nukomeet</a> team as a Ruby developper.", twitter: "julien_mu")
Team.create!(name: "KATARINA", description: "Language enthusiast, English language teacher and translator currently working on her MA thesis on Translation Studies and trying to improve her Dutch.")
Team.create!(name: "KRISTIAN", description: "Freelance Trainer for teaching, presfentation, and development skills. Teaching Python to scientists and everything else to software developers.", twitter: "k_rother")
Team.create!(name: "MAREK", description: "Ruby enthusiast, polyglot programmer, working as <a href='https://openshift.redhat.com/app/' target='_blank'>OpenShift</a> and PaaS evangelist at Red Hat.", twitter: "marek_jelen")
Team.create!(name: "MARTIN", description: "Ruby script-kiddie and teacher, Lean-Agile and Service Design thinker currently working on his master thesis focused on Lean Startup principles in Enterprise", twitter: "deepj")
Team.create!(name: "MICHEL", description: "<a href='http://designa.com.br' target='_blank'>Designa</a> Founder, Agile Freak and Ruby enthusiast.", twitter: "michelamaral")
Team.create!(name: "ROBSON (BSAO)", description: "Professional Chef, Amateur Brewer and Freelance Ruby Developer and researching about artificial intelligence applied to agile methodologies.", twitter: "bsao")
Team.create!(name: "ZAISTE!", description: "Fast Coder : <a href='http://nukomeet.com' target='_blank'>Nukomeet</a> cofounder : RuPy Founder", twitter: "zaiste")
Team.create!(name: "FABIO", description: "<a href='http://designa.com.br' target='_blank'>Designa</a> founder, bachelor in computer science and more than 10 years working as software developer in desktop and web with ruby.", twitter: "FabioMR83")
Team.all.each { |team| team.photo_file_name = "#{team.id}.png" unless team.name == "FABIO"; team.save }

Admin.create!(email: "rupy", password: "rupy.2012")
