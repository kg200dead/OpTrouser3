player createDiaryRecord["diary", ["Credits", "<br />
i44 Operation Trouser by -dead- with a lot of help from hundreds of other, better scripters.

Operation Trouser uses DAC, the revamped ALICE and SILVIE modules, and TPWCAS.
You can also use ACRE (I think!) thanks to the HIP team.
The mission has Headless Client capability, to offload TPWCAS, DAC and ze Germans &amp; Maquis. Thanks to Monsoon and his wonderful guide of how to do that. 

Also a big shout out to the ever-so superlative Noel Coward, for the splendid song.
"]];
player createDiaryRecord ["diary", ["Admin ","<br />
Tonight's drop will be in four teams of twelve from four separate C-47 Dakotas. Standard issue weapons have been assigned to you. In addition there are other weapons available in the Aircraft. Heavy weapons such as AT and mortars will be dropped in with you along with two other crates containing ammunition and medical supplies as well as backpacks. Resupply drops will be run during the course of the operation, every hour. The drops will occur at one of the predesignated zones marked on your map."
]];
player createDiaryRecord["Diary", ["Situation", "<br />
INTEL
<br />
Intelligence suggests <marker name='Objective_Pitt'>the primary bridge</marker> is definitely defended, but not too heavily. However, you will have to hold the bridge until the main invasion force gets there. With landings scheduled at 04:00, this could be anywhere from 5-8 hours after your drop. Be sure to reinforce any defences you leave standing at the bridge, and try to capture rather than destroy enemy static weapons. You will be supplied with extra ammo and medical supplies every hour.
<br /><br /><br />
WEATHER
<br />
The weather has been unusually bad for a few days, but is just starting to get better, and is touted to continue to improve.
"]];
player createDiaryRecord ["diary", ["Execution","COMMANDER'S INTENT
<br />
<br />
<br /><img align='center' image='img\bridge.jpg' width='256' height='128' /><br />
<br />
A critical part of the invasion is to protect the flanks and secure a breakout. To do this, we need to hold two vital road bridges across the river. The primary target is this bridge, designated <marker name='Objective_Pitt'>Objective Pitt</marker>: Your task, gentlemen, is to hold it at all costs until relieved.<br /><br />
<br /><br />
<br />
<br /><img align='center' image='img\bridge1.jpg' width='256' height='128' /><br />
<br />
The secondary objective for tonight is a second bridge close to the primary target, designated <marker name='Objective_Stallone'>Objective Stallone</marker>. As this is the closest other road bridge, it should also be taken quickly to slow the movement of German reinforcements and any counter attacks.
The drop will be made just after 01:00 hours. The moon is nearly full, so there should be plenty of light.
<br /><br /><br />
MOVEMENT PLAN
<br />
The platoon has been organised into four sections of 12 men each, Able, Baker, Charlie and Dog. Each section consist of three fireteams of four men. Each section has a designated Rally Point to assemble at after the drop. Able will assemble at <marker name='RallyPoint_A'>Rally Point Affleck</marker>, Baker at <marker name='RallyPoint_B'>Rally Point Busey</marker>, Charlie at <marker name='RallyPoint_C'>Rally Point Cruise</marker> and Dog at <marker name='RallyPoint_D'>Rally Point Damon</marker>. After assembly, the four sections should move to their assault points and take the Bridge.
<br /><br /><br />
SPECIAL TASKS
<br />
Whilst the primary aim is to capture the bridge intact, should you face overwhelming odds, you may have to blow the bridge rather than let it fall back into enemy hands. Demolition charges have been provided. Be aware that this course of action is only to be taken if there is absolutely no other option.
"]];
tsklebedov = player createSimpleTask["Capture Lebedov"];
tsklebedov setSimpleTaskDestination getMarkerPos "MrkLebedov";
tsklebedov setSimpleTaskDescription["Liberate the town of <marker name='MrkLebedov'>Lebedov</marker>", "Capture Lebedov", "Capture Lebedov"];
tskAvdon = player createSimpleTask["Capture Avdon"];
tskAvdon setSimpleTaskDestination getMarkerPos "MrkAvdon";
tskAvdon setSimpleTaskDescription["Liberate the town of <marker name='MrkAvdon'>Avdon</marker>", "Capture Avdon", "Capture Avdon"];
tskbertie = player createSimpleTask["Capture FB Bertie"];
tskbertie setSimpleTaskDestination getMarkerPos "MrkFBBertie";
tskbertie setSimpleTaskDescription["Capture <marker name='MrkFBBertie'>Battery Bertie</marker>", "Capture Battery Bertie", "Capture Battery Bertie"];
tskarthur = player createSimpleTask["Capture FB Arthur"];
tskarthur setSimpleTaskDestination getMarkerPos "MrkFBArthur";
tskarthur setSimpleTaskDescription["Capture <marker name='MrkFBArthur'>Battery Arthur</marker>", "Capture Battery Arthur", "Capture Battery Arthur"];
tskOsa = player createSimpleTask["Capture Osa"];
tskOsa setSimpleTaskDestination getMarkerPos "MrkOsa";
tskOsa setSimpleTaskDescription["Liberate the town of <marker name='MrkOsa'>Osa</marker>", "Capture Osa", "Capture Osa"];
tskZernovo = player createSimpleTask["Capture Zernovo"];
tskZernovo setSimpleTaskDestination getMarkerPos "MrkZernovo";
tskZernovo setSimpleTaskDescription["Liberate the town of <marker name='MrkZernovo'>Zernovo</marker>", "Capture Zernovo", "Capture Zernovo"];
tsksecondary = player createSimpleTask["Capture The Bridge"];
tsksecondary setSimpleTaskDestination getMarkerPos "Objective_Stallone";
tsksecondary setSimpleTaskDescription["Capture the adjacent bridge, designated <marker name='Objective_Stallone'>Objective Stallone</marker>. As this is the closest other road bridge, it should also be taken quickly to slow the movement of German reinforcements and any counter attacks.", "Capture the Bridge", "Capture the Bridge"];
tskprimary = player createSimpleTask["Capture The Bridge"];
tskprimary setSimpleTaskDestination getMarkerPos "Objective_Pitt";
tskprimary setSimpleTaskDescription["You must capture this bridge, designated <marker name='Objective_Pitt'>Objective Pitt</marker>, and hold it at all costs until relieved.", "Capture the Bridge", "Capture the Bridge"];
player setCurrentTask tskprimary;