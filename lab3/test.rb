require './creational_patterns/factory_method'
require './structural_patterns/personnel_facade'

mercedesSuv = factory_method('mercedes', 'suv')
huyndaiSedan  = factory_method('huyndai', 'sedan')
mercedesSuv.greeting
huyndaiSedan.greeting

staff_names = %w[Bob Stas Marry]
personnel = staff_names.map { |name| PersonnelFacade.new(name) }
personnel.each { |worker| puts worker.name }
