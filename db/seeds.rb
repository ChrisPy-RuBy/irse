# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Experiment.destroy_all

User.create(
{
  name: "Nardinold P. Tuckwittington",
  address: "The royal institute of self-experimentation",
  email: "npm@RISE.io",
  institution: "The royal institute of self-experimentation",
  orcid_id: 12
  })

User.create(
{
  name: "Christopher H. Woodall",
  address: "10 / 8 Lochrin Buildings, Edinburgh",
  email: "christopherhwoodall@gmail.com",
  institution: "CodeClan",
  orcid_id: 9876
  })

User.create({
  name: "Nick Woodall",
  address: "9C Upton Close, Norwich",
  email: "neatairways@nhs.co.uk",
  institution: "The Norfolk and Norwich Hospital",
  orcid_id: 23445
  })

User.create({
  name: "Bonnie Auyeung",
  address: "The Meadows, Edinburgh",
  email: "bonnie@auyeung.ed.ac.uk",
  institution: "University of Edinburgh",
  orcid_id: 253434,
  })

Experiment.create( 
{
  title: "do buttered cats land on their backs",
  description: "by buttering the backs of cats is it possible to overcome the natural tendency for cats to land on their feet",
  image: "COSHH form",
  field: "physics"
  })

Experiment.create( 
{
  title: "superconductivity in UGe2",
  description: "throwing PhD students on the bonfire of pointlessly difficult physics",
  image: "COSHH form",
  field: "physics",
  })

Experiment.create( 
{
  title: "bromination of thiophene",
  description: "bromination of thiophene rings for the formation of diarylethene molecular switches",
  image: "COSHH form",
  field: "chemistry",
  })

Experiment.create(
{
  title: "alcolism in parents and instances of autism in their children",
  description: "25 year study of 10000 parents and their children",
  image: "COSHH form",
  field: "psycology",

  })




