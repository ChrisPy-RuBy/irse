# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Experiment.destroy_all
UserExperiment.destroy_all

u1 = User.create(
{
  name: "Nardinold P. Tuckwittington",
  address: "The royal institute of self-experimentation",
  email: "npm@RISE.io",
  institution: "The royal institute of self-experimentation",
  orcid_id: 12
  })

u2 = User.create(
{
  name: "Christopher H. Woodall",
  address: "10 / 8 Lochrin Buildings, Edinburgh",
  email: "christopherhwoodall@gmail.com",
  institution: "CodeClan",
  orcid_id: 9876
  })

u3 = User.create({
  name: "Nick Woodall",
  address: "9C Upton Close, Norwich",
  email: "neatairways@nhs.co.uk",
  institution: "The Norfolk and Norwich Hospital",
  orcid_id: 23445
  })

u4 = User.create({
  name: "Bonnie Auyeung",
  address: "The Meadows, Edinburgh",
  email: "bonnie@auyeung.ed.ac.uk",
  institution: "University of Edinburgh",
  orcid_id: 253434,
  })

e1 = Experiment.create( 
{
  title: "do buttered cats land on their backs",
  description: "by buttering the backs of cats is it possible to overcome the natural tendency for cats to land on their feet",
  image: "COSHH form",
  field: "physics"
  })

e2 = Experiment.create( 
{
  title: "superconductivity in UGe2",
  description: "throwing PhD students on the bonfire of pointlessly difficult physics",
  image: "COSHH form",
  field: "physics",
  })

e3 = Experiment.create( 
{
  title: "bromination of thiophene",
  description: "bromination of thiophene rings for the formation of diarylethene molecular switches",
  image: "COSHH form",
  field: "chemistry",
  })

e4 = Experiment.create(
{
  title: "alcolism in parents and instances of autism in their children",
  description: "25 year study of 10000 parents and their children",
  image: "COSHH form",
  field: "psycology",
  })

UserExperiment.create(
{
  user_id: u1.id, experiment_id: e1.id
  })

UserExperiment.create(
{
  user_id: u1.id, experiment_id: e2.id
  })

UserExperiment.create(
{
  user_id: u1.id, experiment_id: e3.id
  })

UserExperiment.create(
{
  user_id: u1.id, experiment_id: e4.id
  })

UserExperiment.create(
{
  user_id: u2.id, experiment_id: e4.id
  })

UserExperiment.create({
  user_id: u3.id, experiment_id: e4.id
  })

UserExperiment.create({
  user_id: u1.id, experiment_id: e4.id
  })

UserExperiment.create({
  user_id: u1.id, experiment_id: e3.id
  })







