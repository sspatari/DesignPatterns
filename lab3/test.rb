require './creational_patterns/factory_method'
require './structural_patterns/personnel_facade'
require './behaviour_patterns/iterator'

mercedes_suv = factory_method('mercedes', 'suv')
huyndai_sedan = factory_method('huyndai', 'sedan')

staff_names1 = %w[Bob Stas Marry]
staff_names2 = %w[Cris Nacho]

staff1 = staff_names1.map { |name| PersonnelFacade.new(name) }
staff2 = staff_names2.map { |name| PersonnelFacade.new(name) }

Iterator.new(staff1).my_each { |worker| mercedes_suv.add_staff(worker) }
Iterator.new(staff2).my_each { |worker| huyndai_sedan.add_staff(worker) }

mercedes_suv.start_construction
huyndai_sedan.start_construction
