:- kassert(storyBy('cycle_weekly2_1','Andrew Dougherty'),Result).
:- kassert(domain('cycle_weekly2_1','CYCLE_WEEKLY2'),Result).
:- kassert(include('cycle_weekly2_1','UTIL_DATE1',''),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['towel_1','towel_2','towel_3'],tTowel)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['wallet','sleeping_bag','shirts','shampoo','padlock','hair_trimmers','hair_brush','food_cans','can_opener','camouflage'],tStuff)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['woodmans','walmart_oswego','tigerdirect','starbucks_aurora','frys','cvs_indian_trail_and_orchard','caribou_coffee_batavia'],tStore)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['landing_to_second_floor_stairwell','first_floor_to_landing_stairwell','entry_to_first_floor_stairwell','basement_to_entry_stairwell'],tStairwell)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['utility_room','garage','crawl_space','balcony'],tSpace)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['upstairs_shower'],tShower)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['clothing_grey_shirt_2 clothing_grey_shirt_1 clothing_green_shirt_1 clothing_blue_shirt_1'],tShirt)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['living_room','kitchen','dining_room bedroom'],tRoom)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['andrew_dougherty'],tPerson)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['front_door','balcony_door'],tPerimeterDoor)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['clothing_khaki_shorts_2','clothing_khaki_shorts_1'],tPants)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['upstairs_bathroom_outlets','kitchen_outlets','den_outlets'],tOutlet)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['den'],tOfficeroom)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['meal_velveeta_shells_and_cheese','meal_pindi_chana','meal_palek_paneer','meal_miso_soup'],tMealtype)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['laptop_backpack'],tLockableContainer)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['outside'],tLocation)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['upstairs_washer'],tLaundryWashingMachine)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['laundry_load'],tLaundryLoad)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['upstairs_dryer'],tLaundryDryerMachine)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['columcille_computer'],tLaptop)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['second_floor_landing','landing'],tLanding)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['finger_clippers'],tHygieneTool)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['garage_entry_way','entry'],tEntryWay)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['electric_razor_0'],tElectricRazor)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['garage_door','den_door','crawl_space_door','basement_door'],tDoor)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['computer_desk'],tDesk)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['Wednesday','Tuesday','Thursday','Sunday','Saturday','Monday','Friday'],tDay)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['date_20120827','date_20120826','date_20120825','date_20120824','date_20120823','date_20120822','date_20120821'],tDate)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['dennis_computer'],tComputer)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['landing_closet','kitchen_closet','dining_room_closet','coat_closet','bedroom_closet'],tCloset)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['townhome'],tBuilding)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['guestbed','couch'],tBed)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['cell_phone','bluetooth_headset'],tBatteryPoweredDevice)),Result).
:- kassert(objects('cycle_weekly2_1',isaItems(['upstairs_bathroom','guest_bathroom'],tBathroom)),Result).
:- kassert(init('cycle_weekly2_1',equals('charge_level'('bluetooth_headset'),'0.3')),Result).
:- kassert(init('cycle_weekly2_1',equals('charge_level'('cell_phone'),'0.1')),Result).
:- kassert(init('cycle_weekly2_1',equals('charge_level'('columcille_computer'),'1')),Result).
:- kassert(init('cycle_weekly2_1',equals('charge_level'('electric_razor_0'),'0.0')),Result).
:- kassert(init('cycle_weekly2_1',equals('charge_rate'('bluetooth_headset'),'0.5')),Result).
:- kassert(init('cycle_weekly2_1',equals('charge_rate'('cell_phone'),'1')),Result).
:- kassert(init('cycle_weekly2_1',equals('charge_rate'('columcille_computer'),'0.6')),Result).
:- kassert(init('cycle_weekly2_1',equals('charge_rate'('electric_razor_0'),'0.5')),Result).
:- kassert(init('cycle_weekly2_1',equals('discharge_rate'('bluetooth_headset'),'0.01')),Result).
:- kassert(init('cycle_weekly2_1',equals('discharge_rate'('cell_phone'),'0.07')),Result).
:- kassert(init('cycle_weekly2_1',equals('discharge_rate'('columcille_computer'),'0.3')),Result).
:- kassert(init('cycle_weekly2_1',equals('discharge_rate'('electric_razor_0'),'2.5')),Result).
:- kassert(init('cycle_weekly2_1',equals('fee_for_use'('upstairs_dryer'),'0')),Result).
:- kassert(init('cycle_weekly2_1',equals('fee_for_use'('upstairs_washer'),'0')),Result).
:- kassert(init('cycle_weekly2_1',equals('hours_worked_on_date'('andrew_dougherty','date_20120821'),'0')),Result).
:- kassert(init('cycle_weekly2_1',equals('hours_worked_on_date'('andrew_dougherty','date_20120822'),'0')),Result).
:- kassert(init('cycle_weekly2_1',equals('hours_worked_on_date'('andrew_dougherty','date_20120823'),'0')),Result).
:- kassert(init('cycle_weekly2_1',equals('hours_worked_on_date'('andrew_dougherty','date_20120824'),'0')),Result).
:- kassert(init('cycle_weekly2_1',equals('how_filling'('meal_miso_soup','andrew_dougherty'),'0.7')),Result).
:- kassert(init('cycle_weekly2_1',equals('how_filling'('meal_palek_paneer','andrew_dougherty'),'0.4')),Result).
:- kassert(init('cycle_weekly2_1',equals('how_filling'('meal_pindi_chana','andrew_dougherty'),'0.4')),Result).
:- kassert(init('cycle_weekly2_1',equals('how_filling'('meal_velveeta_shells_and_cheese','andrew_dougherty'),'1.0')),Result).
:- kassert(init('cycle_weekly2_1',equals('hunger_level'('andrew_dougherty'),'1')),Result).
:- kassert(init('cycle_weekly2_1',equals(quantity('meal_miso_soup','kitchen_closet'),'3')),Result).
:- kassert(init('cycle_weekly2_1',equals(quantity('meal_palek_paneer','kitchen_closet'),'2')),Result).
:- kassert(init('cycle_weekly2_1',equals(quantity('meal_pindi_chana','kitchen_closet'),'2')),Result).
:- kassert(init('cycle_weekly2_1',equals(quantity('meal_velveeta_shells_and_cheese','kitchen_closet'),'1')),Result).
:- kassert(init('cycle_weekly2_1',equals('rate_of_eating'('andrew_dougherty'),'5.0')),Result).
:- kassert(init('cycle_weekly2_1',equals(speed('andrew_dougherty'),'1')),Result).
:- kassert(init('cycle_weekly2_1',equals('total_walking_distance','0')),Result).
:- kassert(init('cycle_weekly2_1',at('0',inaccessible('walmart_oswego'))),Result).
:- kassert(init('cycle_weekly2_1',at('0',isolated('living_room'))),Result).
:- kassert(init('cycle_weekly2_1',at('23',isolated('living_room'))),Result).
:- kassert(init('cycle_weekly2_1',at('31',not(isolated('living_room')))),Result).
:- kassert(init('cycle_weekly2_1',at('7',not(inaccessible('walmart_oswego')))),Result).
:- kassert(init('cycle_weekly2_1',at('7',not(isolated('living_room')))),Result).
:- kassert(init('cycle_weekly2_1','at_location'('andrew_dougherty',den)),Result).
:- kassert(init('cycle_weekly2_1','at_location'(balcony,townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('basement_to_entry_stairwell',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'(bedroom,townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('bedroom_closet',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('clothing_blue_shirt_1',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('clothing_green_shirt_1',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('clothing_grey_shirt_1',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('clothing_grey_shirt_2',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('clothing_khaki_shorts_1',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('clothing_khaki_shorts_2',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('coat_closet',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('columcille_computer','living_room')),Result).
:- kassert(init('cycle_weekly2_1','at_location'('computer_desk',den)),Result).
:- kassert(init('cycle_weekly2_1','at_location'(couch,'living_room')),Result).
:- kassert(init('cycle_weekly2_1','at_location'('crawl_space',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'(den,townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('den_outlets',den)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('dennis_computer',den)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('dining_room',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('dining_room_closet',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('electric_razor_0','upstairs_bathroom')),Result).
:- kassert(init('cycle_weekly2_1','at_location'(entry,townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('entry_to_first_floor_stairwell',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('finger_clippers',den)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('first_floor_to_landing_stairwell',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'(garage,townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('garage_entry_way',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('guest_bathroom',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'(guestbed,bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'(kitchen,townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('kitchen_closet',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('kitchen_outlets',kitchen)),Result).
:- kassert(init('cycle_weekly2_1','at_location'(landing,townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('landing_closet',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('landing_to_second_floor_stairwell',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('laptop_backpack',den)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('laundry_load',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('living_room',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('second_floor_landing',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('towel_1',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('towel_2',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('towel_3',bedroom)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('upstairs_bathroom',townhome)),Result).
:- kassert(init('cycle_weekly2_1','at_location'('upstairs_bathroom_outlets','upstairs_bathroom')),Result).
:- kassert(init('cycle_weekly2_1','at_location'('upstairs_dryer','utility_room')),Result).
:- kassert(init('cycle_weekly2_1','at_location'('upstairs_shower','upstairs_bathroom')),Result).
:- kassert(init('cycle_weekly2_1','at_location'('upstairs_washer','utility_room')),Result).
:- kassert(init('cycle_weekly2_1','at_location'('utility_room',townhome)),Result).
:- kassert(init('cycle_weekly2_1',autonomous('andrew_dougherty')),Result).
:- kassert(init('cycle_weekly2_1',dirty('clothing_blue_shirt_1')),Result).
:- kassert(init('cycle_weekly2_1',dirty('clothing_green_shirt_1')),Result).
:- kassert(init('cycle_weekly2_1',dirty('clothing_grey_shirt_1')),Result).
:- kassert(init('cycle_weekly2_1',dirty('clothing_grey_shirt_2')),Result).
:- kassert(init('cycle_weekly2_1',dirty('clothing_khaki_shorts_1')),Result).
:- kassert(init('cycle_weekly2_1',dirty('clothing_khaki_shorts_2')),Result).
:- kassert(init('cycle_weekly2_1',dirty(den)),Result).
:- kassert(init('cycle_weekly2_1',dirty(garage)),Result).
:- kassert(init('cycle_weekly2_1',dirty('towel_1')),Result).
:- kassert(init('cycle_weekly2_1',dirty('towel_2')),Result).
:- kassert(init('cycle_weekly2_1',dirty('towel_3')),Result).
:- kassert(init('cycle_weekly2_1',dirty('upstairs_bathroom')),Result).
:- kassert(init('cycle_weekly2_1',exhausted('andrew_dougherty')),Result).
:- kassert(init('cycle_weekly2_1','has_door'('balcony_door',balcony,'dining_room')),Result).
:- kassert(init('cycle_weekly2_1','has_door'('basement_door',garage,'garage_entry_way')),Result).
:- kassert(init('cycle_weekly2_1','has_door'('crawl_space_door','crawl_space','garage_entry_way')),Result).
:- kassert(init('cycle_weekly2_1','has_door'('den_door',den,'garage_entry_way')),Result).
:- kassert(init('cycle_weekly2_1','has_door'('front_door',entry,outside)),Result).
:- kassert(init('cycle_weekly2_1','has_door'('garage_door',garage,outside)),Result).
:- kassert(init('cycle_weekly2_1','has_permission_to_use'('andrew_dougherty','upstairs_bathroom')),Result).
:- kassert(init('cycle_weekly2_1','locked_door'('basement_door')),Result).
:- kassert(init('cycle_weekly2_1','locked_door'('front_door')),Result).
:- kassert(init('cycle_weekly2_1','locked_door'('garage_door')),Result).
:- kassert(init('cycle_weekly2_1',mobile('bluetooth_headset')),Result).
:- kassert(init('cycle_weekly2_1',mobile('cell_phone')),Result).
:- kassert(init('cycle_weekly2_1',mobile('clothing_blue_shirt_1')),Result).
:- kassert(init('cycle_weekly2_1',mobile('clothing_green_shirt_1')),Result).
:- kassert(init('cycle_weekly2_1',mobile('clothing_grey_shirt_1')),Result).
:- kassert(init('cycle_weekly2_1',mobile('clothing_grey_shirt_2')),Result).
:- kassert(init('cycle_weekly2_1',mobile('clothing_khaki_shorts_1')),Result).
:- kassert(init('cycle_weekly2_1',mobile('clothing_khaki_shorts_2')),Result).
:- kassert(init('cycle_weekly2_1',mobile('columcille_computer')),Result).
:- kassert(init('cycle_weekly2_1',mobile('electric_razor_0')),Result).
:- kassert(init('cycle_weekly2_1',mobile('finger_clippers')),Result).
:- kassert(init('cycle_weekly2_1',mobile('laptop_backpack')),Result).
:- kassert(init('cycle_weekly2_1',mobile('laundry_load')),Result).
:- kassert(init('cycle_weekly2_1',mobile('towel_1')),Result).
:- kassert(init('cycle_weekly2_1',mobile('towel_2')),Result).
:- kassert(init('cycle_weekly2_1',mobile('towel_3')),Result).
:- kassert(init('cycle_weekly2_1','plugged_in'('dennis_computer')),Result).
:- kassert(init('cycle_weekly2_1',wearing('andrew_dougherty','clothing_grey_shirt_1')),Result).
:- kassert(goal('cycle_weekly2_1',and('ready_for_work'('andrew_dougherty'))),Result).
:- kassert(metric('cycle_weekly2_1',minimize(+(+'total_time',actions),'total_walking_distance')),Result).

% objects(DomainName,isa(Item,Type)) :-
% 	objects(DomainName,isaItems(List,Type)),
%         member(Item,List).
