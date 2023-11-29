\c cosmos_db_dev;



INSERT INTO planets (id, planetname, description, is_current_planet, diameter_km, mass_kg, avg_temperature_celsius, planet_picture) VALUES
(1, 'Mercury', 'The smallest planet in our solar system and the closest to the Sun.', true, 4879, 3.3e23, 167, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNlLzlec1-JaIajlubGAXeBubsUT_0f0ul021ZWe-guQ&s'),
(2, 'Venus', 'Known for its thick atmosphere and runaway greenhouse effect.', true, 12104, 4.87e24, 464, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhp40fo-Ol2t7EbfHRdCHK5N5HI0WVn2nxbtlh_uvaoA&s'),
(3, 'Earth', 'Our home planet, known for its diverse ecosystems and abundant life.', true, 12742, 5.97e24, 15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxwZdvuHOxaAgIkTUj0E1IpmY7iNtRbwdMHCA86Fm-vw&s'),
(4, 'Mars', 'Often called the Red Planet due to its reddish appearance.', true, 6779, 6.39e23, -80, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuW4DPal9M9HG62vUWloITqiFbQYcUW5FLd4QLwVl_hA&s'),
(5, 'Jupiter', 'The largest planet in our solar system, known for its Great Red Spot.', true, 139820, 1.9e27, -145, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyBZ1F6YLckLT-3V_6IP51ReLlQMhxYNu4IMJ_hfcUSQ&s'),
(6, 'Saturn', 'Famous for its stunning ring system made of ice particles.', true, 116460, 5.68e26, -178, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY4UqbSQc6eRZIQCIlUAEYYKZ8MgRyzb0D8fCNRjCUgQ&s'),
(7, 'Uranus', 'A gas giant with a unique rotation—its axis is tilted almost perpendicular to its orbit.', true, 50724, 8.68e25, -224, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUQtihS86Cm-i8BBqPT2u_crJNByLwVvnvdIPc9wLbkw&s'),
(8, 'Neptune', 'The farthest known planet in our solar system, with a dynamic and stormy atmosphere.', true, 49244, 1.02e26, -214, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqcgFOv-GDL80gEVdyTaPj8h_OrzSvSH8u82MDbTG53w&s'),
(9, 'Pluto', 'Dwarf planet located in the Kuiper Belt, known for its heart-shaped feature.', true, 2376, 1.31e22, -230, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCtMIdjJe4Q22k_uqQLk2AAIaQUnaPfW3ocM4jW1ekpQ&s'),
(10, 'Eris', 'Dwarf planet and one of the most massive known dwarf planets.', true, 2326, 1.67e22, -240, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjG76J33JMTcu_uWX8nf8qUIcfj1xnwZRDcXdNwgQLTA&s'),
(11, 'Ceres', 'The largest object in the asteroid belt, now classified as a dwarf planet.', true, 590, 9.39e20, -105, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjOaRXVL1POm0zvzogp0ZUVX8vTV6g1P3egWip_U1uBw&s'),
(12, 'Haumea', 'Dwarf planet with an elongated shape, located in the Kuiper Belt.', true, 2322, 4.01e21, -241, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQstU-nNONVC_ZpazNMra1xcKO_2HDD7PtX93lfurLVZg&s'),
(13, 'Makemake', 'Dwarf planet in the Kuiper Belt, known for its reddish color.', true, 1500, 3.14e21, -243, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwegwc3yyFtd5oOs5uEmjPZip7aaYf4z7JlH9g7Di6rQ&s'),
(14, 'Io', 'One of Jupiters largest moons, known for its volcanic activity.', true, 3643, 8.93e22, -130, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSol7_ZJSxuIBgdiUiqRINbCKuwnwg6gQ2c4y1R2jKltw&s'),
(15, 'Europa', 'Jupiters moon with a subsurface ocean, considered a key target for astrobiology.', true, 3122, 4.8e22, -160, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkeYpxozAJlKJYoYDt7oR_5Tiyn9-AJv_OoLCgYTDjlw&s'),
(16, 'Ganymede', 'Largest moon in our solar system and a moon of Jupiter.', true, 5262, 1.48e23, -150, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGXfFUujsuVUUt5oAjJDPiyNBQ_L43i679v35fhrRtNA&s'),
(17, 'Callisto', 'A moon of Jupiter with a heavily cratered surface.', true, 4800, 1.08e23, -145, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRykf5-poAYx0n2yM1b2ltwrPjQMwbwmlwddzlNAT8b&s'),
(18, 'Titan', 'Saturns largest moon, known for its thick atmosphere and lakes of liquid methane.', true, 5150, 1.35e23, -179, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRre8UX9sNUMori0bWFBbSf2cXiNENzBa2nHyRmwmicyw&s'),
(19, 'Enceladus', 'A moon of Saturn with geysers of water vapor erupting from its surface.', true, 504, 1.08e20, -201, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRroO80tl28MT-Q-Dm0dwhuPxT0HTLhUs_CyxcfuvqVtA&s'),
(20, 'Triton', 'Neptunes largest moon, with a retrograde orbit and geysers of nitrogen.', true, 2707, 2.14e22, -235, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUKlTvuBMOtXg9Cdgk3gS9fnasckPinDhSvd6F-6uf9w&s'),
(21, 'Charon', 'Plutos largest moon, forming a binary system with Pluto.', true, 1208, 1.59e21, -220, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdaZpDyCB5C7aIEfGe7KS9J8fS8NR17qz1eM_Uu-ROg&s'),
(22, 'Eris Moon', 'Dwarf planet Eris has a moon named Dysnomia.', true, 0, 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROGJSbe52upFbuGIZldr4uk5yo-4-ACBoFGVTZjn_Abg&s')













