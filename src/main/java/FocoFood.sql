BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `Restaurant` (
	`Restaurant`	TEXT,
	`Address`	TEXT,
	`Phone`	INTEGER,
	`Cuisine`	TEXT
);
INSERT INTO `Restaurant` VALUES ('BEAU JO’S','205 North College Avenue, Fort Collins, CO, USA','970) 498-8898','PIZZA');
INSERT INTO `Restaurant` VALUES ('RODIZIO GRILL','200 Jefferson Street, Fort Collins, CO, USA','(970) 482-3103','STEAK');
INSERT INTO `Restaurant` VALUES ('SONNY LUBICK STEAKHOUSE','115 South College Avenue, Fort Collins, CO, USA','(970) 484-9200','STEAK');
INSERT INTO `Restaurant` VALUES ('SLYCE PIZZA CO.','163 West Mountain Avenue, Fort Collins, CO, USA','(970) 221-9000','PIZZA');
INSERT INTO `Restaurant` VALUES ('UNION BAR AND SODA FOUNTAIN','Union Bar & Soda Fountain, Jefferson Street, Fort Collins, CO, USA',' (970) 825-5558','AMERICAN');
INSERT INTO `Restaurant` VALUES ('COMET CHICKEN','126 West Mountain Avenue, Fort Collins, CO, USA','(970) 689-3464','AMERICAN');
INSERT INTO `Restaurant` VALUES ('BIG AL’S BURGERS & DOGS','140 West Mountain Avenue, Fort Collins, CO, USA','(970) 232-9815','AMERICAN');
INSERT INTO `Restaurant` VALUES ('THE REGIONAL','130 South Mason Street, Fort Collins, CO, USA',' (970) 689-3508','AMERICAN');
INSERT INTO `Restaurant` VALUES ('WOLVERINE FARM LETTERPRESS & PUBLICK HOUSE','316 Willow Street, Fort Collins, CO, USA','(970) 682-2590','COFFEE');
INSERT INTO `Restaurant` VALUES ('NUANCE CHOCOLATE','214 Pine Street, Fort Collins, CO, USA','(970) 484-2330','DESERT ');
INSERT INTO `Restaurant` VALUES ('HAPPY LUCKY’S TEAHOUSE','236 Walnut Street Fort Collins, CO','(970) 689-3417','COFFEE');
INSERT INTO `Restaurant` VALUES ('AUSTIN’S AMERICAN GRILL','100 W Mountain Ave, Fort Collins, CO, United States','(970) 224-9691','AMERICAN');
INSERT INTO `Restaurant` VALUES ('STUFT A BURGER BAR','210 South College Avenue, Fort Collins, CO, USA','(970) 484-6377','AMERICAN');
INSERT INTO `Restaurant` VALUES ('THE STILL WHISKEY STEAKS','151 North College Avenue, Fort Collins, CO, USA','(970)294-4360','STEAK');
INSERT INTO `Restaurant` VALUES ('NEXT DOOR AMERICAN EATERY','100 North College Avenue, Fort Collins, CO, USA',' (720) 930-4366','AMERICAN');
INSERT INTO `Restaurant` VALUES ('COOPERSMITH’S PUB & BREWING','5 Old Town Square, Fort Collins, CO, USA',' (970) 498-0483','AMERICAN');
INSERT INTO `Restaurant` VALUES ('THE SILVER GRILL CAFE','218 Walnut Street, Fort Collins, CO, USA','(970) 484-4656','AMERICAN');
INSERT INTO `Restaurant` VALUES ('LULU ASIAN BISTRO','117 South College Avenue, Fort Collins, CO, USA',' (970) 367-1341','CHINESE');
INSERT INTO `Restaurant` VALUES ('THE WELSH RABBIT CHEESE BISTRO','200b Walnut Street, Fort Collins, CO, USA',' (970) 232-9521','CHINESE');
INSERT INTO `Restaurant` VALUES ('BEN & JERRY’S','1 Old Town Square, Fort Collins, CO, USA','(970) 407-0899','DESSERT');
INSERT INTO `Restaurant` VALUES ('KILWINS CHOCOLATES & ICE CREAM','114 South College Avenue, Fort Collins, CO, USA',' (970) 221-9444','DESSERT ');
INSERT INTO `Restaurant` VALUES ('ROVE','125 South College Avenue, Fort Collins, CO, USA','(970)-632-1130','AMERICAN');
INSERT INTO `Restaurant` VALUES ('SNOOZE AM EATERY','144 West Mountain Avenue, Fort Collins, CO, USA','(970) 482-9253','BREAKFAST');
INSERT INTO `Restaurant` VALUES ('GINGER AND BAKER','359 Linden Street, Fort Collins, CO, USA','(970) 223-7437','BREAKFAST');
INSERT INTO `Restaurant` VALUES ('LUCKY JOE’S SIDEWALK SALOON','25 Old Town Square, Fort Collins, CO, USA',' (970) 493-2213','BAR');
INSERT INTO `Restaurant` VALUES ('SOCIAL','1 Old Town Square #7, Fort Collins, CO, USA',' (970) 449-5606','BAR');
INSERT INTO `Restaurant` VALUES ('THE YETI BAR AND GRILL','23 Old Town Square, Fort Collins, CO, USA','(970) 482-9384','BAR');
INSERT INTO `Restaurant` VALUES ('BONDI BEACH BAR','11 Old Town Square, Fort Collins, CO, USA',' (970) 224-4100','BAR');
INSERT INTO `Restaurant` VALUES ('ACE GILLETT’S LOUNGE','239 South College Avenue, Fort Collins, CO, USA','(970) 294-4544','BAR');
INSERT INTO `Restaurant` VALUES ('NEW BELGIUM BREWING COMPANY','500 Linden Street, Fort Collins, CO, USA','(970) 221-0524','BAR');
COMMIT;
