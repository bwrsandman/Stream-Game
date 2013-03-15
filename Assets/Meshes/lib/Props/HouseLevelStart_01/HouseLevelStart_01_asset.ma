//Maya ASCII 2013 scene
//Name: HouseLevelStart_01_asset.ma
//Last modified: Sun, Mar 10, 2013 03:22:29 PM
//Codeset: 1252
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201209210409-845513";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -n "HouseLevelStart";
createNode transform -n "WoodPlank_4" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.31581387442454911 1.6744129476405505 1.7734369833421662 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".rp" -type "double3" 2.2923955917358398 -0.4375 0.25 ;
	setAttr ".rpt" -type "double3" 0 0.18750000000000019 -0.68750000000000011 ;
	setAttr ".sp" -type "double3" 2.2923955917358398 -0.4375 0.25 ;
createNode mesh -n "WoodPlank_Shape4" -p "WoodPlank_4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" 2.7767706 0 0.5 ;
	setAttr ".pt[2]" -type "float3" 2.7767706 -0.875 0.5 ;
	setAttr ".pt[4]" -type "float3" 2.7767706 -0.875 0 ;
	setAttr ".pt[6]" -type "float3" 2.7767706 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_5" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 0 -0.13316341502539708 ;
	setAttr ".rp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
createNode mesh -n "WoodPlank_Shape5" -p "WoodPlank_5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_6" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.39531634346226951 0 0.017924389166206867 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.8 1 0.8 ;
	setAttr ".rp" -type "double3" 1.5812653738490381 1.4244129476405507 1.0687495866737329 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -0.39531634346225947 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape6" -p "WoodPlank_6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_7" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.71156941823207376 -0.018287922373717638 -0.100682123997775 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.99191004927813342 0 0 ;
	setAttr ".s" -type "double3" 0.64000000000000012 1 0.8 ;
	setAttr ".rp" -type "double3" 1.2650122990792307 1.4244129476405507 1.0687495866737329 ;
	setAttr ".rpt" -type "double3" 0 0.018287922373717846 -0.024818495039141339 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -0.71156941823206699 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape7" -p "WoodPlank_7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_8" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.96457187804790578 0 -0.79480739829823188 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.51200000000000012 1 1.1874068116970966 ;
	setAttr ".rp" -type "double3" 1.0120098392633845 1.4244129476405507 1.5863006740185588 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -0.964571878047913 0 0.25036369067639269 ;
createNode mesh -n "WoodPlank_Shape8" -p "WoodPlank_8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_9" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.1669738459005998 0 -0.40896721388478402 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.40960000000000019 1 0.8 ;
	setAttr ".rp" -type "double3" 0.80960787141070789 1.4244129476405507 1.0687495866737329 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.1669738459005898 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape9" -p "WoodPlank_9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_10" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.3288954201827323 0 -0.52079125234805779 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.32768000000000014 1 0.8 ;
	setAttr ".rp" -type "double3" 0.64768629712856662 1.4244129476405507 1.0687495866737329 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.3288954201827312 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape10" -p "WoodPlank_10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_11" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.4584326796084497 0.010399144684262 -0.64491481147575169 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.55393904029163132 0 0 ;
	setAttr ".s" -type "double3" 0.2621440000000001 0.99999999999999989 0.8 ;
	setAttr ".rp" -type "double3" 0.51814903770285303 1.4244129476405505 1.0687495866737329 ;
	setAttr ".rpt" -type "double3" 0 -0.010399144684262078 0.013721147097121142 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.4584326796084446 -2.2204460492503126e-016 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape11" -p "WoodPlank_11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_12" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.5620624871490063 0 -0.74470466756341502 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.2097152000000001 1 0.8 ;
	setAttr ".rp" -type "double3" 0.41451923016228248 1.4244129476405507 1.0687495866737329 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.5620624871490152 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape12" -p "WoodPlank_12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_13" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.6449663331814577 0 -1.003156537479855 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.16777216000000009 1 0.90931382595907806 ;
	setAttr ".rp" -type "double3" 0.331615384129826 1.4244129476405507 1.2147859695630945 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.6449663331814717 0 -0.12115101377907196 ;
createNode mesh -n "WoodPlank_Shape13" -p "WoodPlank_13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_14" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.8010640756826888 -0.26364141003402358 -0.58380819722700816 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -18.310211663361105 0 0 ;
	setAttr ".s" -type "double3" 0.08589934592000005 1 0.8 ;
	setAttr ".rp" -type "double3" 0.16978707667447093 1.4244129476405507 1.0687495866737329 ;
	setAttr ".rpt" -type "double3" 0 0.26364141003402364 -0.50160726771208342 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.8067946406368267 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape14" -p "WoodPlank_14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_15" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.8407520559717341 0 -1.2924335733047008 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.06871947673600004 1 0.8 ;
	setAttr ".rp" -type "double3" 0.13582966133957697 1.4244129476405507 1.0687495866737329 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.8407520559717208 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape15" -p "WoodPlank_15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_16" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.8679179882396395 0 -1.4150812259301373 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.054975581388800029 1 0.8 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737329 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape16" -p "WoodPlank_16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_17" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.8679179882396395 0 -1.5276951179256844 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.054975581388800029 1 0.8 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737329 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape17" -p "WoodPlank_17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_18" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.8679179882396395 0 -1.6317732713923767 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.054975581388800029 1 0.8 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737329 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape18" -p "WoodPlank_18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_19" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.8679179882396395 0.12493616088259372 -1.9383960334523465 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 6.2555767020673141 0 0 ;
	setAttr ".s" -type "double3" 0.054975581388800029 1 0.8 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737329 ;
	setAttr ".rpt" -type "double3" 0 -0.12493616088259368 0.14884558623823799 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape19" -p "WoodPlank_19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_20" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.7643478714682033 0 -1.0367982479355706 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.10737418240000006 1 0.8 ;
	setAttr ".rp" -type "double3" 0.21223384584308888 1.4244129476405507 1.0687495866737329 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.7643478714682088 0 -0.26718739666843322 ;
createNode mesh -n "WoodPlank_Shape20" -p "WoodPlank_20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_45" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.3484137272218959 0 5.5976988812314579 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.16777216000000011 1 0.90931382595907828 ;
	setAttr ".rp" -type "double3" 0.33161538412982627 1.4244129476405507 1.2147859695630945 ;
	setAttr ".rpt" -type "double3" -1.5464013536929213 0 -0.88317058543326821 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.6449663331814717 0 -0.1211510137790718 ;
createNode mesh -n "WoodPlank_Shape45" -p "WoodPlank_45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_44" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.9290653869690573 -0.26364141003402358 5.7537966237326854 ;
	setAttr ".r" -type "double3" -18.310211663361105 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.085899345920000064 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.16978707667447096 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -0.73692939563612092 0.2636414100340238 -0.89896250999926219 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.8067946406368267 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape44" -p "WoodPlank_44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_43" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.637690763046749 0 5.7934846040217076 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.068719476736000054 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.13582966133957655 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.2045792480133102 0 -0.93291992533415691 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.840752055971721 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape43" -p "WoodPlank_43";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_42" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.7603384156721802 0 5.820650536289623 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.054975581388800043 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.177413315745395 0 -0.96008585760207199 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape42" -p "WoodPlank_42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_41" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.872952307667731 0 5.820650536289623 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.054975581388800043 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.177413315745395 0 -0.96008585760207199 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape41" -p "WoodPlank_41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_40" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.9770304611344329 0 5.820650536289623 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.054975581388800043 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.177413315745395 0 -0.96008585760207199 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape40" -p "WoodPlank_40";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_39" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.283653223194392 0.12493616088259372 5.8206505362896221 ;
	setAttr ".r" -type "double3" 6.2555767020673123 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.054975581388800043 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737335 ;
	setAttr ".rpt" -type "double3" -1.3262589019836326 -0.12493616088259368 -0.96008585760207121 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843266 ;
createNode mesh -n "WoodPlank_Shape39" -p "WoodPlank_39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_38" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.3820554376776215 0 5.7170804195181955 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.10737418240000007 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.21223384584308871 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.2809834325168223 0 -0.85651574083064475 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.764347871468209 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape38" -p "WoodPlank_38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_37" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.7836457787214783 1.6744129476405505 3.6369186736254449 ;
	setAttr ".r" -type "double3" 90.000000000000028 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 2.2923955917358403 -0.43750000000000006 0.25 ;
	setAttr ".rpt" -type "double3" -1.8548955917358401 0.18750000000000039 2.0423955917358407 ;
	setAttr ".sp" -type "double3" 2.2923955917358398 -0.4375 0.25 ;
	setAttr ".spt" -type "double3" 4.4408920985006271e-016 -1.1102230246251568e-016 
		0 ;
createNode mesh -n "WoodPlank_Shape37" -p "WoodPlank_37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.7767706 0 0.5 1.8080206 
		0 0.5 2.7767706 -0.875 0.5 1.8080206 -0.875 0.5 2.7767706 -0.875 0 1.8080206 -0.875 
		0 2.7767706 0 0 1.8080206 0 0;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_36" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.6902461770890511 0 3.952732548049986 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 1.9765817173112981 1.4244129476405507 1.3359369833421664 ;
	setAttr ".rpt" -type "double3" -3.3125187006534653 0 0.64064473396913191 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" 4.4408920985006271e-016 0 2.2204460492503136e-016 ;
createNode mesh -n "WoodPlank_Shape36" -p "WoodPlank_36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_35" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.5391583728974467 0 4.3480488915122457 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.80000000000000027 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 1.5812653738490388 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -2.6500149605227725 0 0.51251578717530544 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -0.3953163434622588 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape35" -p "WoodPlank_35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_34" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.6577648860614147 -0.018287922373717638 4.6643019662820535 ;
	setAttr ".r" -type "double3" -0.99191004927813342 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.64000000000000024 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 1.2650122990792312 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -2.3089433907138224 0.018287922373717881 0.19626271240549825 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -0.71156941823206654 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape34" -p "WoodPlank_34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_33" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.3518901603618758 0 4.9173044260978989 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.51200000000000023 1 1.1874068116970968 ;
	setAttr ".rp" -type "double3" 1.0120098392633847 1.4244129476405507 1.5863006740185592 ;
	setAttr ".rpt" -type "double3" -2.5983105132819446 0 -0.57429083475517451 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -0.96457187804791267 0 0.25036369067639302 ;
createNode mesh -n "WoodPlank_Shape33" -p "WoodPlank_33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_32" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.9660499759484367 0 5.119706393950576 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.4096000000000003 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.80960787141070845 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.8783574580844424 0 -0.25914171526302493 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.1669738459005894 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape32" -p "WoodPlank_32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_31" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.0778740144117194 0 5.2816279682327174 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.32768000000000019 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.64768629712856673 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.7164358838023004 0 -0.42106328954516664 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.328895420182731 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape31" -p "WoodPlank_31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_30" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.2019975735394155 0.010399144684262 5.4111652276584312 ;
	setAttr ".r" -type "double3" 0.55393904029163088 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.26214400000000015 0.99999999999999989 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.51814903770285314 1.4244129476405505 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.6006197714737076 -0.010399144684261979 -0.55060054897087984 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.4584326796084444 -2.2204460492503126e-016 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape30" -p "WoodPlank_30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_29" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.3017874296270691 0 5.5147950351990023 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.20971520000000016 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.41451923016228243 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.483268816836016 0 -0.65423035651145112 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.5620624871490152 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape29" -p "WoodPlank_29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_28" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.5602392995434968 0 5.5976988812314579 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.16777216000000011 1 0.90931382595907828 ;
	setAttr ".rp" -type "double3" 0.33161538412982627 1.4244129476405507 1.2147859695630945 ;
	setAttr ".rpt" -type "double3" -1.5464013536929213 0 -0.88317058543326821 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.6449663331814717 0 -0.1211510137790718 ;
createNode mesh -n "WoodPlank_Shape28" -p "WoodPlank_28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_27" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.1408909592906582 -0.26364141003402358 5.7537966237326854 ;
	setAttr ".r" -type "double3" -18.310211663361105 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.085899345920000064 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.16978707667447096 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -0.73692939563612092 0.2636414100340238 -0.89896250999926219 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.8067946406368267 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape27" -p "WoodPlank_27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_26" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.8495163353683495 0 5.7934846040217076 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.068719476736000054 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.13582966133957655 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.2045792480133102 0 -0.93291992533415691 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.840752055971721 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape26" -p "WoodPlank_26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_25" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.9721639879937811 0 5.820650536289623 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.054975581388800043 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.177413315745395 0 -0.96008585760207199 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape25" -p "WoodPlank_25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_24" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.084777879989332 0 5.820650536289623 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.054975581388800043 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.177413315745395 0 -0.96008585760207199 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape24" -p "WoodPlank_24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_23" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.1888560334560339 0 5.820650536289623 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.054975581388800043 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.177413315745395 0 -0.96008585760207199 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape23" -p "WoodPlank_23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_22" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.4954787955159929 0.12493616088259372 5.8206505362896221 ;
	setAttr ".r" -type "double3" 6.2555767020673123 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.054975581388800043 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.1086637290716614 1.4244129476405507 1.0687495866737335 ;
	setAttr ".rpt" -type "double3" -1.3262589019836326 -0.12493616088259368 -0.96008585760207121 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.867917988239636 0 -0.26718739666843266 ;
createNode mesh -n "WoodPlank_Shape22" -p "WoodPlank_22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "WoodPlank_21" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.5938810099992224 0 5.7170804195181955 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.10737418240000007 1 0.80000000000000027 ;
	setAttr ".rp" -type "double3" 0.21223384584308871 1.4244129476405507 1.0687495866737331 ;
	setAttr ".rpt" -type "double3" -1.2809834325168223 0 -0.85651574083064475 ;
	setAttr ".sp" -type "double3" 1.9765817173112976 1.4244129476405507 1.3359369833421662 ;
	setAttr ".spt" -type "double3" -1.764347871468209 0 -0.26718739666843278 ;
createNode mesh -n "WoodPlank_Shape21" -p "WoodPlank_21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4609568 1.174413 0.77343702 
		1.4922067 1.174413 0.77343702 2.4609568 0.17441297 0.89843702 1.4922067 0.17441297 
		0.89843702 2.4609568 1.674413 1.898437 1.4922067 1.674413 1.898437 2.4609568 2.674413 
		1.773437 1.4922067 2.674413 1.773437;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[7].px";
	setAttr -av ".pt[7].py";
	setAttr -av ".pt[7].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "HouseWalls" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 1.25 3.0874021904604145 ;
	setAttr ".s" -type "double3" 4.5 2.5 6.5 ;
	setAttr ".rp" -type "double3" 0 -1.25 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
	setAttr ".spt" -type "double3" 0 -0.75 0 ;
createNode mesh -n "HouseWallsShape" -p "HouseWalls";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 206 ".uvst[0].uvsp[0:205]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.265625 0.25 0.375 0.359375 0.625 0.359375 0.734375 0.25 0.265625 0
		 0.734375 0 0.625 0 0.734375 0 0.734375 0.25 0.625 0.25 0.734375 0.20565158 0.625
		 0.20565158 0.625 0.20565158 0.375 0.20565158 0.265625 0.20565158 0.125 0.20565158
		 0.375 0.54434842 0.625 0.54434842 0.875 0.20565158 0.734375 0.20565158 0.734375 0.20565158
		 0.734375 0 0.625 0 0.625 0.20565158 0.625 0.25 0.734375 0.25 0.734375 0.20565158
		 0.734375 0 0.625 0 0.625 0.20565158 0.625 0.25 0.734375 0.25 0.734375 0.094696067
		 0.734375 0.094696067 0.625 0.094696067 0.625 0.094696067 0.625 0.094696067 0.625
		 0.094696067 0.375 0.094696067 0.265625 0.094696067 0.125 0.094696067 0.375 0.65530396
		 0.625 0.65530396 0.875 0.094696067 0.734375 0.094696067 0.734375 0.094696067 0.76830876
		 0.094696075 0.76830876 0 0.23169126 0 0.23169126 0.094696075 0.23169126 0.20565158
		 0.23169126 0.25 0.375 0.39330876 0.625 0.39330876 0.76830876 0.25 0.76830876 0.20565158
		 0.83943623 0.094696067 0.83943623 0 0.16056375 0 0.16056377 0.094696067 0.16056377
		 0.20565158 0.16056377 0.25 0.375 0.46443623 0.625 0.46443623 0.83943629 0.25 0.83943623
		 0.20565157 0.375 0 0.625 0 0.625 0.094696067 0.375 0.094696067 0.375 0.25 0.625 0.25
		 0.625 0.359375 0.375 0.359375 0.375 0.65530396 0.625 0.65530396 0.625 0.75 0.375
		 0.75 0.625 0 0.734375 0 0.734375 0.094696067 0.625 0.094696067 0.125 0 0.16056375
		 0 0.16056377 0.094696067 0.125 0.094696067 0.375 0.46443623 0.625 0.46443623 0.625
		 0.5 0.375 0.5 0.83943623 0.094696067 0.83943623 0 0.875 0 0.875 0.094696067 0.265625
		 0.094696067 0.265625 0 0.734375 0 0.734375 0.094696067 0.734375 0.094696067 0.734375
		 0 0.734375 0.25 0.625 0.25 0.734375 0.25 0.625 0 0.625 0.094696067 0.625 0.20565158
		 0.734375 0.20565158 0.734375 0.25 0.625 0.25 0.625 0.20565158 0.625 0.20565158 0.375
		 0.20565158 0.265625 0.25 0.265625 0.20565158 0.125 0.20565158 0.16056377 0.20565158
		 0.16056377 0.25 0.125 0.25 0.625 0.54434842 0.375 0.54434842 0.83943629 0.25 0.83943623
		 0.20565157 0.875 0.20565158 0.875 0.25 0.734375 0.20565158 0.734375 0.20565158 0.734375
		 0 0.734375 0.094696067 0.625 0.094696067 0.625 0 0.625 0.25 0.625 0.20565158 0.734375
		 0.25 0.734375 0.20565158 0.76830876 0 0.76830876 0.094696075 0.23169126 0.094696075
		 0.23169126 0 0.23169126 0.20565158 0.23169126 0.25 0.625 0.39330876 0.375 0.39330876
		 0.76830876 0.20565158 0.76830876 0.25 0.375 0 0.625 0 0.625 0.75 0.375 0.75 0.625
		 0 0.734375 0 0.125 0 0.16056375 0 0.83943623 0 0.875 0 0.265625 0 0.734375 0.094696067
		 0.734375 0 0.734375 0 0.625 0 0.625 0.094696067 0.625 0.094696067 0.625 0.20565158
		 0.625 0.20565158 0.734375 0 0.734375 0.094696067 0.625 0 0.625 0.094696067 0.625
		 0.20565158 0.734375 0.20565158 0.734375 0.20565158 0.83943623 0.20565157 0.83943623
		 0.094696067 0.76830876 0 0.23169126 0 0.76830876 0.094696075 0.76830876 0.20565158
		 0.625 0.094696067 0.625 0.094696067 0.625 0.20565158 0.734375 0.20565158 0.734375
		 0.20565158 0.734375 0.20565158 0.625 0.20565158 0.625 0.094696067 0.625 0.094696067
		 0.83943623 0.20565157 0.83943623 0.094696067 0.734375 0.20565158 0.76830876 0.094696075
		 0.76830876 0.20565158 0.83943623 0.094696067 0.76830876 0.094696075 0.76830876 0.20565158
		 0.83943623 0.20565157;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 128 ".vt[0:127]"  -0.66666794 -0.5 0.44809204 0.44444275 -0.5 0.44809204
		 -0.66666794 0.5 0.44809204 0.44444275 0.5 0.44809204 -0.66666794 0.5 -0.78267723
		 0.44444275 0.5 -0.78267723 -0.66666794 -0.5 -0.78267723 0.44444275 -0.5 -0.78267723
		 -0.66666794 0.5 -0.090369552 0.44444275 0.5 -0.090369552 -0.66666794 -0.5 -0.090369552
		 0.44444275 -0.5 -0.090369552 1.33333206 -0.5 -0.090369552 1.33333206 -0.5 0.44809204
		 1.33333206 0.5 -0.090369552 1.33333206 0.5 0.44809204 1.33333206 0.30186319 -0.090369552
		 1.33333206 0.30186319 0.44809204 0.44444275 0.30186319 0.44809204 -0.66666794 0.30186319 0.44809204
		 -0.66666794 0.30186319 -0.090369552 -0.66666794 0.30186319 -0.78267723 0.44444275 0.30186319 -0.78267723
		 0.44444275 0.30186319 -0.090369552 1.057933807 0.30186319 -0.090369552 1.057933807 -0.5 -0.090369552
		 1.057933807 -0.5 0.44809204 1.057933807 0.30186319 0.44809204 1.057933807 0.5 0.44809204
		 1.057933807 0.5 -0.090369552 0.76096344 0.30186319 -0.090369552 0.76096344 -0.5 -0.090369552
		 0.76096344 -0.5 0.44809204 0.76096344 0.30186319 0.44809204 0.76096344 0.5 0.44809204
		 0.76096344 0.5 -0.090369552 1.057933807 -0.090629488 -0.090369552 1.33333206 -0.090629488 -0.090369552
		 1.33333206 -0.090629488 0.44809204 1.057933807 -0.090629488 0.44809204 0.76096344 -0.090629488 0.44809204
		 0.44444275 -0.090629488 0.44809204 -0.66666794 -0.090629488 0.44809204 -0.66666794 -0.090629488 -0.090369552
		 -0.66666794 -0.090629488 -0.78267723 0.44444275 -0.090629488 -0.78267723 0.44444275 -0.090629488 -0.090369552
		 0.76096344 -0.090629488 -0.090369552 0.44444275 -0.090629488 -0.25742799 0.44444275 -0.5 -0.25742799
		 -0.66666794 -0.5 -0.25742799 -0.66666794 -0.090629488 -0.25742799 -0.66666794 0.30186319 -0.25742799
		 -0.66666794 0.5 -0.25742799 0.44444275 0.5 -0.25742799 0.44444275 0.30186319 -0.25742799
		 0.44444275 -0.090629488 -0.60759413 0.44444275 -0.5 -0.60759413 -0.66666794 -0.5 -0.60759413
		 -0.66666794 -0.090629488 -0.60759413 -0.66666794 0.30186319 -0.60759413 -0.66666794 0.5 -0.60759413
		 0.44444275 0.5 -0.60759413 0.44444275 0.30186319 -0.60759413 -0.64444351 -0.5 0.43270749
		 0.44444275 -0.5 0.43270749 0.44444275 -0.090629488 0.43270749 -0.64444351 -0.090629488 0.43270749
		 -0.64444351 0.46000004 0.43270749 0.44444275 0.46000004 0.43270749 0.42221832 0.46000004 -0.074984968
		 -0.64444351 0.46000004 -0.090369552 -0.64444351 -0.090629488 -0.76729262 0.42221832 -0.090629488 -0.76729262
		 0.42221832 -0.5 -0.76729262 -0.64444351 -0.5 -0.76729262 1.31110764 -0.5 -0.074984968
		 1.31110764 -0.5 0.43270749 1.31110764 -0.090629488 -0.074984968 1.31110764 -0.090629488 0.43270749
		 -0.64444351 -0.5 -0.60759413 -0.64444351 -0.090629488 -0.60759413 -0.64444351 0.46000004 -0.60759413
		 0.42221832 0.46000004 -0.60759413 0.42221832 0.46000004 -0.76729262 -0.64444351 0.46000004 -0.76729262
		 0.42221832 -0.090629488 -0.60759413 0.42221832 -0.5 -0.60759413 -0.64444351 -0.5 -0.090369552
		 -0.64444351 -0.090629488 -0.090369552 0.42221832 -0.5 -0.074984968 0.42221832 -0.090629488 -0.074984968
		 0.76096344 -0.090629488 -0.074984968 0.76096344 -0.5 -0.074984968 0.76096344 0.46000004 0.43270749
		 0.76096344 0.46000004 -0.074984968 0.76096344 -0.5 0.43270749 0.76096344 -0.090629488 0.43270749
		 1.31110764 0.30186319 -0.074984968 1.31110764 0.30186319 0.43270749 1.31110764 0.46000004 -0.074984968
		 1.31110764 0.46000004 0.43270749 0.44444275 0.30186319 0.43270749 0.76096344 0.30186319 0.43270749
		 -0.64444351 0.30186319 0.43270749 -0.64444351 0.30186319 -0.090369552 -0.64444351 0.30186319 -0.60759413
		 -0.64444351 0.30186319 -0.76729262 0.42221832 0.30186319 -0.76729262 0.42221832 0.30186319 -0.60759413
		 0.76096344 0.30186319 -0.074984968 0.42221832 0.30186319 -0.074984968 1.057933807 -0.090629488 -0.074984968
		 1.057933807 -0.5 -0.074984968 1.057933807 -0.5 0.43270749 1.057933807 -0.090629488 0.43270749
		 1.057933807 0.30186319 0.43270749 1.057933807 0.46000004 0.43270749 1.057933807 0.46000004 -0.074984968
		 1.057933807 0.30186319 -0.074984968 0.42221832 -0.5 -0.25742799 0.42221832 -0.090629488 -0.25742799
		 -0.64444351 -0.5 -0.25742799 -0.64444351 -0.090629488 -0.25742799 -0.64444351 0.30186319 -0.25742799
		 -0.64444351 0.46000004 -0.25742799 0.42221832 0.46000004 -0.25742799 0.42221832 0.30186319 -0.25742799;
	setAttr -s 260 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 42 0 1 41 1 2 8 0 3 9 1 4 21 0
		 5 22 0 6 58 0 7 57 0 8 53 0 9 54 0 10 0 0 9 8 1 11 46 0 10 43 1 11 31 0 1 32 0 12 13 0
		 9 35 0 12 37 0 3 34 0 15 14 0 13 38 0 16 14 0 17 15 0 16 17 1 18 3 1 17 27 1 19 2 0
		 18 19 1 20 8 1 19 20 1 21 44 0 20 52 1 22 45 0 21 22 1 23 9 0 22 63 1 23 30 1 24 16 1
		 25 12 0 24 36 0 26 13 0 27 33 0 26 39 1 28 15 0 27 28 1 29 14 0 28 29 1 29 24 1 30 24 0
		 30 47 0 32 26 0 33 18 0 32 40 1 34 28 0 33 34 1 35 29 0 34 35 1 35 30 1 36 25 0 37 16 0
		 36 37 1 38 17 0 37 38 1 39 27 0 38 39 1 39 40 0 41 18 0 40 41 0 42 19 0 41 42 1 43 20 1
		 42 43 1 44 6 0 43 51 1 45 7 0 44 45 1 46 23 0 45 56 1 47 31 0 46 47 1 48 46 1 49 11 0
		 48 49 1 50 10 0 51 59 1 50 51 1 52 60 1 51 52 1 53 61 0 52 53 1 54 62 0 53 54 1 55 23 1
		 54 55 1 55 48 0 56 48 0 57 49 0 56 57 1 58 50 0 59 44 1 58 59 1 60 21 1 59 60 1 61 4 0
		 60 61 1 62 5 0 61 62 1 63 55 0 62 63 1 63 56 0 0 64 1 1 65 1 64 65 0 41 66 0 65 66 1
		 66 67 1 64 67 0 68 69 0 69 70 1 70 71 1 68 71 0 72 73 1 7 74 1 73 74 0 6 75 1 75 74 0
		 72 75 0 12 76 1 13 77 1 76 77 0 76 78 0 78 79 1 77 79 0 58 80 1 75 80 0 80 81 1 81 72 1
		 82 83 1 83 84 0 85 84 0 82 85 0 56 86 0 57 87 1 86 87 1 74 87 0 73 86 1 10 88 1 88 89 1
		 88 64 0 67 89 1 11 90 1 90 91 0 47 92 1 91 92 1 31 93 0 92 93 0 90 93 0 69 94 0 94 95 1
		 70 95 0 32 96 1;
	setAttr ".ed[166:259]" 65 96 0 40 97 1 96 97 1 97 66 0 98 99 1 98 100 0 101 100 0
		 99 101 0 18 102 0 102 69 1 33 103 1 103 102 0 103 94 1 102 104 1 104 68 0 105 71 1
		 104 105 1 106 107 1 106 82 1 85 107 0 84 108 0 107 108 1 63 109 0 83 109 1 108 109 1
		 30 110 0 95 110 1 111 110 1 111 70 0 36 112 1 25 113 0 112 113 0 112 78 1 113 76 0
		 26 114 1 39 115 0 114 115 1 114 77 0 79 115 1 27 116 0 116 117 1 99 116 1 117 101 0
		 117 118 1 118 100 0 24 119 0 119 98 1 118 119 1 96 114 0 115 97 0 116 103 0 94 117 0
		 95 118 0 110 119 0 119 112 0 78 98 0 79 99 0 115 116 0 66 102 0 67 104 0 89 105 1
		 81 106 1 107 72 0 108 73 0 109 86 0 91 111 0 110 92 0 49 120 1 120 90 0 48 121 0
		 121 120 1 121 91 1 50 122 1 122 123 1 122 88 0 89 123 1 123 124 1 105 124 1 124 125 1
		 71 125 0 70 126 0 125 126 1 55 127 0 127 111 1 126 127 1 127 121 0 87 120 0 86 121 0
		 80 122 0 123 81 1 124 106 1 125 82 0 126 83 0 109 127 0;
	setAttr -s 130 -ch 520 ".fc[0:129]" -type "polyFaces" 
		f 4 121 -121 -120 -118
		mu 0 4 156 50 49 157
		f 4 125 -125 -124 -123
		mu 0 4 2 13 14 3
		f 4 131 130 -129 -127
		mu 0 4 53 159 158 54
		f 4 137 -137 -136 134
		mu 0 4 160 46 45 161
		f 4 -132 -142 -141 -140
		mu 0 4 162 52 71 163
		f 4 145 144 -144 -143
		mu 0 4 74 4 5 75
		f 4 -151 128 149 -149
		mu 0 4 68 55 165 164
		f 4 -155 -122 -154 152
		mu 0 4 51 50 156 166
		f 4 161 -161 -159 -157
		mu 0 4 169 168 167 56
		f 4 164 -164 -163 123
		mu 0 4 15 43 42 3
		f 4 -170 -169 -167 119
		mu 0 4 172 171 170 157
		f 4 173 172 -172 170
		mu 0 4 23 21 20 22
		f 4 162 -179 177 175
		mu 0 4 3 42 174 173
		f 4 180 122 -176 179
		mu 0 4 25 2 3 173
		f 4 -126 -181 182 181
		mu 0 4 12 2 25 26
		f 4 -186 -146 -185 183
		mu 0 4 27 11 73 72
		f 4 185 187 -187 -145
		mu 0 4 4 28 29 5
		f 4 143 186 190 -190
		mu 0 4 76 9 30 77
		f 4 -165 -195 193 -193
		mu 0 4 43 15 31 38
		f 4 199 135 -199 197
		mu 0 4 175 161 45 176
		f 4 -205 -138 -204 202
		mu 0 4 47 46 160 177
		f 4 208 -174 207 206
		mu 0 4 36 21 23 35
		f 4 210 -173 -209 209
		mu 0 4 37 20 21 36
		f 4 171 -211 213 212
		mu 0 4 22 20 37 32
		f 4 -216 -203 -215 168
		mu 0 4 171 178 177 170
		f 4 217 -207 216 178
		mu 0 4 42 36 179 174
		f 4 218 -210 -218 163
		mu 0 4 43 37 36 42
		f 4 -219 192 219 -214
		mu 0 4 37 43 181 180
		f 4 198 221 -213 220
		mu 0 4 176 45 22 180
		f 4 222 -171 -222 136
		mu 0 4 46 23 22 45
		f 4 -208 -223 204 223
		mu 0 4 179 23 46 178
		f 4 225 -180 -225 120
		mu 0 4 50 25 173 172
		f 4 -183 -226 154 226
		mu 0 4 26 25 50 51
		f 4 -229 -184 -228 141
		mu 0 4 52 27 72 71
		f 4 228 126 -230 -188
		mu 0 4 28 53 54 29
		f 4 -191 229 150 -231
		mu 0 4 182 30 55 183
		f 4 -233 -194 -232 158
		mu 0 4 167 181 31 56
		f 4 -238 236 234 156
		mu 0 4 56 58 184 169
		f 4 -242 -153 -241 239
		mu 0 4 61 51 166 185
		f 4 -244 -227 241 242
		mu 0 4 62 26 51 61
		f 4 -246 -182 243 244
		mu 0 4 63 12 26 62
		f 4 245 247 -247 124
		mu 0 4 13 64 65 14
		f 4 246 250 249 194
		mu 0 4 15 66 67 31
		f 4 -250 251 237 231
		mu 0 4 31 187 186 56
		f 4 -254 148 252 -237
		mu 0 4 186 183 164 184
		f 4 -256 -240 -255 140
		mu 0 4 71 61 185 163
		f 4 -257 -243 255 227
		mu 0 4 72 62 61 71
		f 4 -258 -245 256 184
		mu 0 4 73 63 62 72
		f 4 257 142 -259 -248
		mu 0 4 64 74 75 65
		f 4 258 189 259 -251
		mu 0 4 66 76 182 187
		f 4 0 5 74 -5
		mu 0 4 78 79 80 81
		f 4 1 7 15 -7
		mu 0 4 82 83 84 85
		f 4 80 79 -4 -78
		mu 0 4 86 87 88 89
		f 4 -21 22 67 -26
		mu 0 4 90 91 92 93
		f 4 10 105 104 77
		mu 0 4 94 95 96 97
		f 4 111 110 -3 -109
		mu 0 4 98 99 100 101
		f 4 102 -12 -80 82
		mu 0 4 102 103 104 105
		f 4 -18 14 4 76
		mu 0 4 106 107 78 81
		f 4 16 84 83 -19
		mu 0 4 108 109 110 111
		f 4 -8 23 61 -22
		mu 0 4 112 83 113 114
		f 4 -6 19 57 72
		mu 0 4 80 79 115 116
		f 4 -29 26 -25 -28
		mu 0 4 117 118 119 120
		f 4 -30 -57 59 -24
		mu 0 4 83 121 122 113
		f 4 -33 29 -2 -32
		mu 0 4 123 121 83 82
		f 4 -34 -35 31 6
		mu 0 4 124 125 123 82
		f 4 -107 109 108 8
		mu 0 4 126 127 128 129
		f 4 2 9 -39 -9
		mu 0 4 101 100 130 131
		f 4 113 -41 -10 -111
		mu 0 4 132 133 134 135
		f 4 62 -42 39 21
		mu 0 4 114 136 137 112
		f 4 -64 65 -23 -44
		mu 0 4 138 139 92 91
		f 4 -48 45 25 69
		mu 0 4 140 141 90 93
		f 4 -50 -31 27 -49
		mu 0 4 142 143 117 120
		f 4 -52 48 24 -51
		mu 0 4 144 142 120 119
		f 4 -43 -53 50 -27
		mu 0 4 118 145 144 119
		f 4 -58 55 47 70
		mu 0 4 116 115 141 140
		f 4 -60 -47 49 -59
		mu 0 4 113 122 143 142
		f 4 -62 58 51 -61
		mu 0 4 114 113 142 144
		f 4 52 -54 -63 60
		mu 0 4 144 145 136 114
		f 4 -45 42 -65 -66
		mu 0 4 139 145 118 92
		f 4 -68 64 28 -67
		mu 0 4 93 92 118 117
		f 4 -69 -70 66 30
		mu 0 4 143 140 93 117
		f 4 -75 71 32 -74
		mu 0 4 81 80 121 123
		f 4 -76 -77 73 34
		mu 0 4 125 106 81 123
		f 4 -105 107 106 35
		mu 0 4 97 96 127 126
		f 4 38 37 -81 -36
		mu 0 4 131 130 87 86
		f 4 114 -83 -38 40
		mu 0 4 133 102 105 134
		f 4 -85 81 41 54
		mu 0 4 110 109 137 136
		f 4 -17 -87 -88 85
		mu 0 4 109 108 146 147
		f 4 -91 88 17 78
		mu 0 4 148 149 107 106
		f 4 -93 -79 75 36
		mu 0 4 150 148 106 125
		f 4 -95 -37 33 12
		mu 0 4 151 150 125 124
		f 4 -16 13 -97 -13
		mu 0 4 85 84 152 153
		f 4 -40 -98 -99 -14
		mu 0 4 112 137 154 155
		f 4 -82 -86 -100 97
		mu 0 4 137 109 147 154
		f 4 87 -102 -103 100
		mu 0 4 147 146 103 102
		f 4 -106 103 90 89
		mu 0 4 96 95 149 148
		f 4 -108 -90 92 91
		mu 0 4 127 96 148 150
		f 4 -110 -92 94 93
		mu 0 4 128 127 150 151
		f 4 96 95 -112 -94
		mu 0 4 153 152 99 98
		f 4 98 -113 -114 -96
		mu 0 4 155 154 133 132
		f 4 115 117 -117 -1
		mu 0 4 0 156 157 1
		f 4 127 -131 -130 3
		mu 0 4 7 158 159 6
		f 4 133 -135 -133 20
		mu 0 4 18 160 161 19
		f 4 129 139 -139 -11
		mu 0 4 10 162 163 70
		f 4 147 -150 -128 11
		mu 0 4 69 164 165 8
		f 4 151 153 -116 -15
		mu 0 4 16 166 156 0
		f 4 157 160 -160 -84
		mu 0 4 57 167 168 39
		f 4 159 -162 -156 18
		mu 0 4 39 168 169 17
		f 4 116 166 -166 -20
		mu 0 4 1 157 170 40
		f 4 167 169 -119 -73
		mu 0 4 48 171 172 188
		f 4 174 -178 -177 56
		mu 0 4 24 173 174 41
		f 4 196 -198 -196 63
		mu 0 4 33 175 176 44
		f 4 132 -200 -197 43
		mu 0 4 19 161 175 33
		f 4 200 203 -134 -46
		mu 0 4 34 177 160 18
		f 4 165 214 -201 -56
		mu 0 4 40 170 177 34
		f 4 201 215 -168 -71
		mu 0 4 189 178 171 48
		f 4 176 -217 -206 46
		mu 0 4 41 174 179 190
		f 4 211 -220 -192 53
		mu 0 4 191 180 181 192
		f 4 195 -221 -212 44
		mu 0 4 44 176 180 193
		f 4 205 -224 -202 68
		mu 0 4 194 179 178 195
		f 4 118 224 -175 -72
		mu 0 4 196 172 173 24
		f 4 188 230 -147 -115
		mu 0 4 197 182 183 198
		f 4 191 232 -158 -55
		mu 0 4 199 181 167 57
		f 4 155 -235 -234 86
		mu 0 4 17 169 184 59
		f 4 238 240 -152 -89
		mu 0 4 60 185 166 16
		f 4 235 -252 -249 99
		mu 0 4 200 186 187 201
		f 4 233 -253 -148 101
		mu 0 4 59 184 164 69
		f 4 146 253 -236 -101
		mu 0 4 202 183 186 203
		f 4 138 254 -239 -104
		mu 0 4 70 163 185 60
		f 4 248 -260 -189 112
		mu 0 4 204 187 182 205;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode mesh -n "polySurfaceShape27" -p "HouseWalls";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 206 ".uvst[0].uvsp[0:205]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.265625 0.25 0.375 0.359375 0.625 0.359375 0.734375 0.25 0.265625 0
		 0.734375 0 0.625 0 0.734375 0 0.734375 0.25 0.625 0.25 0.734375 0.20565158 0.625
		 0.20565158 0.625 0.20565158 0.375 0.20565158 0.265625 0.20565158 0.125 0.20565158
		 0.375 0.54434842 0.625 0.54434842 0.875 0.20565158 0.734375 0.20565158 0.734375 0.20565158
		 0.734375 0 0.625 0 0.625 0.20565158 0.625 0.25 0.734375 0.25 0.734375 0.20565158
		 0.734375 0 0.625 0 0.625 0.20565158 0.625 0.25 0.734375 0.25 0.734375 0.094696067
		 0.734375 0.094696067 0.625 0.094696067 0.625 0.094696067 0.625 0.094696067 0.625
		 0.094696067 0.375 0.094696067 0.265625 0.094696067 0.125 0.094696067 0.375 0.65530396
		 0.625 0.65530396 0.875 0.094696067 0.734375 0.094696067 0.734375 0.094696067 0.76830876
		 0.094696075 0.76830876 0 0.23169126 0 0.23169126 0.094696075 0.23169126 0.20565158
		 0.23169126 0.25 0.375 0.39330876 0.625 0.39330876 0.76830876 0.25 0.76830876 0.20565158
		 0.83943623 0.094696067 0.83943623 0 0.16056375 0 0.16056377 0.094696067 0.16056377
		 0.20565158 0.16056377 0.25 0.375 0.46443623 0.625 0.46443623 0.83943629 0.25 0.83943623
		 0.20565157 0.375 0 0.625 0 0.625 0.094696067 0.375 0.094696067 0.375 0.25 0.625 0.25
		 0.625 0.359375 0.375 0.359375 0.375 0.65530396 0.625 0.65530396 0.625 0.75 0.375
		 0.75 0.625 0 0.734375 0 0.734375 0.094696067 0.625 0.094696067 0.125 0 0.16056375
		 0 0.16056377 0.094696067 0.125 0.094696067 0.375 0.46443623 0.625 0.46443623 0.625
		 0.5 0.375 0.5 0.83943623 0.094696067 0.83943623 0 0.875 0 0.875 0.094696067 0.265625
		 0.094696067 0.265625 0 0.734375 0 0.734375 0.094696067 0.734375 0.094696067 0.734375
		 0 0.734375 0.25 0.625 0.25 0.734375 0.25 0.625 0 0.625 0.094696067 0.625 0.20565158
		 0.734375 0.20565158 0.734375 0.25 0.625 0.25 0.625 0.20565158 0.625 0.20565158 0.375
		 0.20565158 0.265625 0.25 0.265625 0.20565158 0.125 0.20565158 0.16056377 0.20565158
		 0.16056377 0.25 0.125 0.25 0.625 0.54434842 0.375 0.54434842 0.83943629 0.25 0.83943623
		 0.20565157 0.875 0.20565158 0.875 0.25 0.734375 0.20565158 0.734375 0.20565158 0.734375
		 0 0.734375 0.094696067 0.625 0.094696067 0.625 0 0.625 0.25 0.625 0.20565158 0.734375
		 0.25 0.734375 0.20565158 0.76830876 0 0.76830876 0.094696075 0.23169126 0.094696075
		 0.23169126 0 0.23169126 0.20565158 0.23169126 0.25 0.625 0.39330876 0.375 0.39330876
		 0.76830876 0.20565158 0.76830876 0.25 0.375 0 0.625 0 0.625 0.75 0.375 0.75 0.625
		 0 0.734375 0 0.125 0 0.16056375 0 0.83943623 0 0.875 0 0.265625 0 0.734375 0.094696067
		 0.734375 0 0.734375 0 0.625 0 0.625 0.094696067 0.625 0.094696067 0.625 0.20565158
		 0.625 0.20565158 0.734375 0 0.734375 0.094696067 0.625 0 0.625 0.094696067 0.625
		 0.20565158 0.734375 0.20565158 0.734375 0.20565158 0.83943623 0.20565157 0.83943623
		 0.094696067 0.76830876 0 0.23169126 0 0.76830876 0.094696075 0.76830876 0.20565158
		 0.625 0.094696067 0.625 0.094696067 0.625 0.20565158 0.734375 0.20565158 0.734375
		 0.20565158 0.734375 0.20565158 0.625 0.20565158 0.625 0.094696067 0.625 0.094696067
		 0.83943623 0.20565157 0.83943623 0.094696067 0.734375 0.20565158 0.76830876 0.094696075
		 0.76830876 0.20565158 0.83943623 0.094696067 0.76830876 0.094696075 0.76830876 0.20565158
		 0.83943623 0.20565157;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 128 ".vt[0:127]"  -0.66666794 -0.5 0.44809204 0.44444275 -0.5 0.44809204
		 -0.66666794 0.5 0.44809204 0.44444275 0.5 0.44809204 -0.66666794 0.5 -0.78267723
		 0.44444275 0.5 -0.78267723 -0.66666794 -0.5 -0.78267723 0.44444275 -0.5 -0.78267723
		 -0.66666794 0.5 -0.090369552 0.44444275 0.5 -0.090369552 -0.66666794 -0.5 -0.090369552
		 0.44444275 -0.5 -0.090369552 1.33333206 -0.5 -0.090369552 1.33333206 -0.5 0.44809204
		 1.33333206 0.5 -0.090369552 1.33333206 0.5 0.44809204 1.33333206 0.30186319 -0.090369552
		 1.33333206 0.30186319 0.44809204 0.44444275 0.30186319 0.44809204 -0.66666794 0.30186319 0.44809204
		 -0.66666794 0.30186319 -0.090369552 -0.66666794 0.30186319 -0.78267723 0.44444275 0.30186319 -0.78267723
		 0.44444275 0.30186319 -0.090369552 1.057933807 0.30186319 -0.090369552 1.057933807 -0.5 -0.090369552
		 1.057933807 -0.5 0.44809204 1.057933807 0.30186319 0.44809204 1.057933807 0.5 0.44809204
		 1.057933807 0.5 -0.090369552 0.76096344 0.30186319 -0.090369552 0.76096344 -0.5 -0.090369552
		 0.76096344 -0.5 0.44809204 0.76096344 0.30186319 0.44809204 0.76096344 0.5 0.44809204
		 0.76096344 0.5 -0.090369552 1.057933807 -0.090629488 -0.090369552 1.33333206 -0.090629488 -0.090369552
		 1.33333206 -0.090629488 0.44809204 1.057933807 -0.090629488 0.44809204 0.76096344 -0.090629488 0.44809204
		 0.44444275 -0.090629488 0.44809204 -0.66666794 -0.090629488 0.44809204 -0.66666794 -0.090629488 -0.090369552
		 -0.66666794 -0.090629488 -0.78267723 0.44444275 -0.090629488 -0.78267723 0.44444275 -0.090629488 -0.090369552
		 0.76096344 -0.090629488 -0.090369552 0.44444275 -0.090629488 -0.25742799 0.44444275 -0.5 -0.25742799
		 -0.66666794 -0.5 -0.25742799 -0.66666794 -0.090629488 -0.25742799 -0.66666794 0.30186319 -0.25742799
		 -0.66666794 0.5 -0.25742799 0.44444275 0.5 -0.25742799 0.44444275 0.30186319 -0.25742799
		 0.44444275 -0.090629488 -0.60759413 0.44444275 -0.5 -0.60759413 -0.66666794 -0.5 -0.60759413
		 -0.66666794 -0.090629488 -0.60759413 -0.66666794 0.30186319 -0.60759413 -0.66666794 0.5 -0.60759413
		 0.44444275 0.5 -0.60759413 0.44444275 0.30186319 -0.60759413 -0.64444351 -0.5 0.43270749
		 0.44444275 -0.5 0.43270749 0.44444275 -0.090629488 0.43270749 -0.64444351 -0.090629488 0.43270749
		 -0.64444351 0.46000004 0.43270749 0.44444275 0.46000004 0.43270749 0.42221832 0.46000004 -0.074984968
		 -0.64444351 0.46000004 -0.090369552 -0.64444351 -0.090629488 -0.76729262 0.42221832 -0.090629488 -0.76729262
		 0.42221832 -0.5 -0.76729262 -0.64444351 -0.5 -0.76729262 1.31110764 -0.5 -0.074984968
		 1.31110764 -0.5 0.43270749 1.31110764 -0.090629488 -0.074984968 1.31110764 -0.090629488 0.43270749
		 -0.64444351 -0.5 -0.60759413 -0.64444351 -0.090629488 -0.60759413 -0.64444351 0.46000004 -0.60759413
		 0.42221832 0.46000004 -0.60759413 0.42221832 0.46000004 -0.76729262 -0.64444351 0.46000004 -0.76729262
		 0.42221832 -0.090629488 -0.60759413 0.42221832 -0.5 -0.60759413 -0.64444351 -0.5 -0.090369552
		 -0.64444351 -0.090629488 -0.090369552 0.42221832 -0.5 -0.074984968 0.42221832 -0.090629488 -0.074984968
		 0.76096344 -0.090629488 -0.074984968 0.76096344 -0.5 -0.074984968 0.76096344 0.46000004 0.43270749
		 0.76096344 0.46000004 -0.074984968 0.76096344 -0.5 0.43270749 0.76096344 -0.090629488 0.43270749
		 1.31110764 0.30186319 -0.074984968 1.31110764 0.30186319 0.43270749 1.31110764 0.46000004 -0.074984968
		 1.31110764 0.46000004 0.43270749 0.44444275 0.30186319 0.43270749 0.76096344 0.30186319 0.43270749
		 -0.64444351 0.30186319 0.43270749 -0.64444351 0.30186319 -0.090369552 -0.64444351 0.30186319 -0.60759413
		 -0.64444351 0.30186319 -0.76729262 0.42221832 0.30186319 -0.76729262 0.42221832 0.30186319 -0.60759413
		 0.76096344 0.30186319 -0.074984968 0.42221832 0.30186319 -0.074984968 1.057933807 -0.090629488 -0.074984968
		 1.057933807 -0.5 -0.074984968 1.057933807 -0.5 0.43270749 1.057933807 -0.090629488 0.43270749
		 1.057933807 0.30186319 0.43270749 1.057933807 0.46000004 0.43270749 1.057933807 0.46000004 -0.074984968
		 1.057933807 0.30186319 -0.074984968 0.42221832 -0.5 -0.25742799 0.42221832 -0.090629488 -0.25742799
		 -0.64444351 -0.5 -0.25742799 -0.64444351 -0.090629488 -0.25742799 -0.64444351 0.30186319 -0.25742799
		 -0.64444351 0.46000004 -0.25742799 0.42221832 0.46000004 -0.25742799 0.42221832 0.30186319 -0.25742799;
	setAttr -s 260 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 42 0 1 41 1 2 8 0 3 9 1 4 21 0
		 5 22 0 6 58 0 7 57 0 8 53 0 9 54 0 10 0 0 9 8 1 11 46 0 10 43 1 11 31 0 1 32 0 12 13 0
		 9 35 0 12 37 0 3 34 0 15 14 0 13 38 0 16 14 0 17 15 0 16 17 1 18 3 1 17 27 1 19 2 0
		 18 19 1 20 8 1 19 20 1 21 44 0 20 52 1 22 45 0 21 22 1 23 9 0 22 63 1 23 30 1 24 16 1
		 25 12 0 24 36 0 26 13 0 27 33 0 26 39 1 28 15 0 27 28 1 29 14 0 28 29 1 29 24 1 30 24 0
		 30 47 0 32 26 0 33 18 0 32 40 1 34 28 0 33 34 1 35 29 0 34 35 1 35 30 1 36 25 0 37 16 0
		 36 37 1 38 17 0 37 38 1 39 27 0 38 39 1 39 40 0 41 18 0 40 41 0 42 19 0 41 42 1 43 20 1
		 42 43 1 44 6 0 43 51 1 45 7 0 44 45 1 46 23 0 45 56 1 47 31 0 46 47 1 48 46 1 49 11 0
		 48 49 1 50 10 0 51 59 1 50 51 1 52 60 1 51 52 1 53 61 0 52 53 1 54 62 0 53 54 1 55 23 1
		 54 55 1 55 48 0 56 48 0 57 49 0 56 57 1 58 50 0 59 44 1 58 59 1 60 21 1 59 60 1 61 4 0
		 60 61 1 62 5 0 61 62 1 63 55 0 62 63 1 63 56 0 0 64 1 1 65 1 64 65 0 41 66 0 65 66 1
		 66 67 1 64 67 0 68 69 0 69 70 1 70 71 1 68 71 0 72 73 1 7 74 1 73 74 0 6 75 1 75 74 0
		 72 75 0 12 76 1 13 77 1 76 77 0 76 78 0 78 79 1 77 79 0 58 80 1 75 80 0 80 81 1 81 72 1
		 82 83 1 83 84 0 85 84 0 82 85 0 56 86 0 57 87 1 86 87 1 74 87 0 73 86 1 10 88 1 88 89 1
		 88 64 0 67 89 1 11 90 1 90 91 0 47 92 1 91 92 1 31 93 0 92 93 0 90 93 0 69 94 0 94 95 1
		 70 95 0 32 96 1;
	setAttr ".ed[166:259]" 65 96 0 40 97 1 96 97 1 97 66 0 98 99 1 98 100 0 101 100 0
		 99 101 0 18 102 0 102 69 1 33 103 1 103 102 0 103 94 1 102 104 1 104 68 0 105 71 1
		 104 105 1 106 107 1 106 82 1 85 107 0 84 108 0 107 108 1 63 109 0 83 109 1 108 109 1
		 30 110 0 95 110 1 111 110 1 111 70 0 36 112 1 25 113 0 112 113 0 112 78 1 113 76 0
		 26 114 1 39 115 0 114 115 1 114 77 0 79 115 1 27 116 0 116 117 1 99 116 1 117 101 0
		 117 118 1 118 100 0 24 119 0 119 98 1 118 119 1 96 114 0 115 97 0 116 103 0 94 117 0
		 95 118 0 110 119 0 119 112 0 78 98 0 79 99 0 115 116 0 66 102 0 67 104 0 89 105 1
		 81 106 1 107 72 0 108 73 0 109 86 0 91 111 0 110 92 0 49 120 1 120 90 0 48 121 0
		 121 120 1 121 91 1 50 122 1 122 123 1 122 88 0 89 123 1 123 124 1 105 124 1 124 125 1
		 71 125 0 70 126 0 125 126 1 55 127 0 127 111 1 126 127 1 127 121 0 87 120 0 86 121 0
		 80 122 0 123 81 1 124 106 1 125 82 0 126 83 0 109 127 0;
	setAttr -s 130 -ch 520 ".fc[0:129]" -type "polyFaces" 
		f 4 117 119 120 -122
		mu 0 4 156 157 49 50
		f 4 122 123 124 -126
		mu 0 4 2 3 14 13
		f 4 126 128 -131 -132
		mu 0 4 53 54 158 159
		f 4 -135 135 136 -138
		mu 0 4 160 161 45 46
		f 4 139 140 141 131
		mu 0 4 162 163 71 52
		f 4 142 143 -145 -146
		mu 0 4 74 75 5 4
		f 4 148 -150 -129 150
		mu 0 4 68 164 165 55
		f 4 -153 153 121 154
		mu 0 4 51 166 156 50
		f 4 156 158 160 -162
		mu 0 4 169 56 167 168
		f 4 -124 162 163 -165
		mu 0 4 15 3 42 43
		f 4 -120 166 168 169
		mu 0 4 172 157 170 171
		f 4 -171 171 -173 -174
		mu 0 4 23 22 20 21
		f 4 -176 -178 178 -163
		mu 0 4 3 173 174 42
		f 4 -180 175 -123 -181
		mu 0 4 25 173 3 2
		f 4 -182 -183 180 125
		mu 0 4 12 26 25 2
		f 4 -184 184 145 185
		mu 0 4 27 72 73 11
		f 4 144 186 -188 -186
		mu 0 4 4 5 29 28
		f 4 189 -191 -187 -144
		mu 0 4 76 77 30 9
		f 4 192 -194 194 164
		mu 0 4 43 38 31 15
		f 4 -198 198 -136 -200
		mu 0 4 175 176 45 161
		f 4 -203 203 137 204
		mu 0 4 47 177 160 46
		f 4 -207 -208 173 -209
		mu 0 4 36 35 23 21
		f 4 -210 208 172 -211
		mu 0 4 37 36 21 20
		f 4 -213 -214 210 -172
		mu 0 4 22 32 37 20
		f 4 -169 214 202 215
		mu 0 4 171 170 177 178
		f 4 -179 -217 206 -218
		mu 0 4 42 174 179 36
		f 4 -164 217 209 -219
		mu 0 4 43 42 36 37
		f 4 213 -220 -193 218
		mu 0 4 37 180 181 43
		f 4 -221 212 -222 -199
		mu 0 4 176 180 22 45
		f 4 -137 221 170 -223
		mu 0 4 46 45 22 23
		f 4 -224 -205 222 207
		mu 0 4 179 178 46 23
		f 4 -121 224 179 -226
		mu 0 4 50 172 173 25
		f 4 -227 -155 225 182
		mu 0 4 26 51 50 25
		f 4 -142 227 183 228
		mu 0 4 52 71 72 27
		f 4 187 229 -127 -229
		mu 0 4 28 29 54 53
		f 4 230 -151 -230 190
		mu 0 4 182 183 55 30
		f 4 -159 231 193 232
		mu 0 4 167 56 31 181
		f 4 -157 -235 -237 237
		mu 0 4 56 169 184 58
		f 4 -240 240 152 241
		mu 0 4 61 185 166 51
		f 4 -243 -242 226 243
		mu 0 4 62 61 51 26
		f 4 -245 -244 181 245
		mu 0 4 63 62 26 12
		f 4 -125 246 -248 -246
		mu 0 4 13 14 65 64
		f 4 -195 -250 -251 -247
		mu 0 4 15 31 67 66
		f 4 -232 -238 -252 249
		mu 0 4 31 56 186 187
		f 4 236 -253 -149 253
		mu 0 4 186 184 164 183
		f 4 -141 254 239 255
		mu 0 4 71 163 185 61
		f 4 -228 -256 242 256
		mu 0 4 72 71 61 62
		f 4 -185 -257 244 257
		mu 0 4 73 72 62 63
		f 4 247 258 -143 -258
		mu 0 4 64 65 75 74
		f 4 250 -260 -190 -259
		mu 0 4 66 187 182 76
		f 4 4 -75 -6 -1
		mu 0 4 78 81 80 79
		f 4 6 -16 -8 -2
		mu 0 4 82 85 84 83
		f 4 77 3 -80 -81
		mu 0 4 86 89 88 87
		f 4 25 -68 -23 20
		mu 0 4 90 93 92 91
		f 4 -78 -105 -106 -11
		mu 0 4 94 97 96 95
		f 4 108 2 -111 -112
		mu 0 4 98 101 100 99
		f 4 -83 79 11 -103
		mu 0 4 102 105 104 103
		f 4 -77 -5 -15 17
		mu 0 4 106 81 78 107
		f 4 18 -84 -85 -17
		mu 0 4 108 111 110 109
		f 4 21 -62 -24 7
		mu 0 4 112 114 113 83
		f 4 -73 -58 -20 5
		mu 0 4 80 116 115 79
		f 4 27 24 -27 28
		mu 0 4 117 120 119 118
		f 4 23 -60 56 29
		mu 0 4 83 113 122 121
		f 4 31 1 -30 32
		mu 0 4 123 82 83 121
		f 4 -7 -32 34 33
		mu 0 4 124 82 123 125
		f 4 -9 -109 -110 106
		mu 0 4 126 129 128 127
		f 4 8 38 -10 -3
		mu 0 4 101 131 130 100
		f 4 110 9 40 -114
		mu 0 4 132 135 134 133
		f 4 -22 -40 41 -63
		mu 0 4 114 112 137 136
		f 4 43 22 -66 63
		mu 0 4 138 91 92 139
		f 4 -70 -26 -46 47
		mu 0 4 140 93 90 141
		f 4 48 -28 30 49
		mu 0 4 142 120 117 143
		f 4 50 -25 -49 51
		mu 0 4 144 119 120 142
		f 4 26 -51 52 42
		mu 0 4 118 119 144 145
		f 4 -71 -48 -56 57
		mu 0 4 116 140 141 115
		f 4 58 -50 46 59
		mu 0 4 113 142 143 122
		f 4 60 -52 -59 61
		mu 0 4 114 144 142 113
		f 4 -61 62 53 -53
		mu 0 4 144 114 136 145
		f 4 65 64 -43 44
		mu 0 4 139 92 118 145
		f 4 66 -29 -65 67
		mu 0 4 93 117 118 92
		f 4 -31 -67 69 68
		mu 0 4 143 117 93 140
		f 4 73 -33 -72 74
		mu 0 4 81 123 121 80
		f 4 -35 -74 76 75
		mu 0 4 125 123 81 106
		f 4 -36 -107 -108 104
		mu 0 4 97 126 127 96
		f 4 35 80 -38 -39
		mu 0 4 131 86 87 130
		f 4 -41 37 82 -115
		mu 0 4 133 134 105 102
		f 4 -55 -42 -82 84
		mu 0 4 110 136 137 109
		f 4 -86 87 86 16
		mu 0 4 109 147 146 108
		f 4 -79 -18 -89 90
		mu 0 4 148 106 107 149
		f 4 -37 -76 78 92
		mu 0 4 150 125 106 148
		f 4 -13 -34 36 94
		mu 0 4 151 124 125 150
		f 4 12 96 -14 15
		mu 0 4 85 153 152 84
		f 4 13 98 97 39
		mu 0 4 112 155 154 137
		f 4 -98 99 85 81
		mu 0 4 137 154 147 109
		f 4 -101 102 101 -88
		mu 0 4 147 102 103 146
		f 4 -90 -91 -104 105
		mu 0 4 96 148 149 95
		f 4 -92 -93 89 107
		mu 0 4 127 150 148 96
		f 4 -94 -95 91 109
		mu 0 4 128 151 150 127
		f 4 93 111 -96 -97
		mu 0 4 153 98 99 152
		f 4 95 113 112 -99
		mu 0 4 155 132 133 154
		f 4 0 116 -118 -116
		mu 0 4 0 1 157 156
		f 4 -4 129 130 -128
		mu 0 4 7 6 159 158
		f 4 -21 132 134 -134
		mu 0 4 18 19 161 160
		f 4 10 138 -140 -130
		mu 0 4 10 70 163 162
		f 4 -12 127 149 -148
		mu 0 4 69 8 165 164
		f 4 14 115 -154 -152
		mu 0 4 16 0 156 166
		f 4 83 159 -161 -158
		mu 0 4 57 39 168 167
		f 4 -19 155 161 -160
		mu 0 4 39 17 169 168
		f 4 19 165 -167 -117
		mu 0 4 1 40 170 157
		f 4 72 118 -170 -168
		mu 0 4 48 188 172 171
		f 4 -57 176 177 -175
		mu 0 4 24 41 174 173
		f 4 -64 195 197 -197
		mu 0 4 33 44 176 175
		f 4 -44 196 199 -133
		mu 0 4 19 33 175 161
		f 4 45 133 -204 -201
		mu 0 4 34 18 160 177
		f 4 55 200 -215 -166
		mu 0 4 40 34 177 170
		f 4 70 167 -216 -202
		mu 0 4 189 48 171 178
		f 4 -47 205 216 -177
		mu 0 4 41 190 179 174
		f 4 -54 191 219 -212
		mu 0 4 191 192 181 180
		f 4 -45 211 220 -196
		mu 0 4 44 193 180 176
		f 4 -69 201 223 -206
		mu 0 4 194 195 178 179
		f 4 71 174 -225 -119
		mu 0 4 196 24 173 172
		f 4 114 146 -231 -189
		mu 0 4 197 198 183 182
		f 4 54 157 -233 -192
		mu 0 4 199 57 167 181
		f 4 -87 233 234 -156
		mu 0 4 17 59 184 169
		f 4 88 151 -241 -239
		mu 0 4 60 16 166 185
		f 4 -100 248 251 -236
		mu 0 4 200 201 187 186
		f 4 -102 147 252 -234
		mu 0 4 59 69 164 184
		f 4 100 235 -254 -147
		mu 0 4 202 203 186 183
		f 4 103 238 -255 -139
		mu 0 4 70 60 185 163
		f 4 -113 188 259 -249
		mu 0 4 204 205 182 187;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "HouseColumn3" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.3642203915071036 1.242635850040946 1.2912933192369178 ;
	setAttr ".s" -type "double3" 0.079292831283670942 1.2426358500409458 0.079292831283670942 ;
	setAttr ".rp" -type "double3" -5.6340945266463322e-016 -1.242635850040946 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-015 -1.0000000000000002 0 ;
	setAttr ".spt" -type "double3" 6.5420179049363651e-015 -0.24263585004094573 0 ;
createNode mesh -n "HouseColumnShape3" -p "HouseColumn3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0.011852503 0 ;
	setAttr ".pt[9]" -type "float3" 7.1054274e-015 0.011852503 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.011852503 0 ;
	setAttr ".pt[11]" -type "float3" 0 0.011852503 -3.1974423e-014 ;
	setAttr ".pt[12]" -type "float3" 0 0.011852503 0 ;
	setAttr ".pt[13]" -type "float3" 7.1054274e-015 0.011852503 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.011852503 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.011852503 -3.1974423e-014 ;
	setAttr ".pt[17]" -type "float3" 7.1054274e-015 0.011852503 -3.1974423e-014 ;
	setAttr -s 18 ".vt[0:17]"  0.42426404 -1 -0.42426404 0 -1 -0.59999996
		 -0.42426404 -1 -0.42426404 -0.59999996 -1 0 -0.42426404 -1 0.42426404 0 -1 0.59999996
		 0.42426407 -1 0.42426407 0.60000002 -1 0 0.42426404 1 -0.42426404 0 1 -0.59999996
		 -0.42426404 1 -0.42426404 -0.59999996 1 0 -0.42426404 1 0.42426404 0 1 0.59999996
		 0.42426407 1 0.42426407 0.60000002 1 0 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "HouseColumn4" -p "HouseLevelStart";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.4131232057710577 1.242635850040946 -1.9075517070175092 ;
	setAttr ".s" -type "double3" 0.079292831283670942 1.2426358500409458 0.079292831283670942 ;
	setAttr ".rp" -type "double3" -5.6340945266463322e-016 -1.242635850040946 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-015 -1.0000000000000002 0 ;
	setAttr ".spt" -type "double3" 6.5420179049363651e-015 -0.24263585004094573 0 ;
createNode mesh -n "HouseColumnShape4" -p "HouseColumn4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0.011852503 0 ;
	setAttr ".pt[9]" -type "float3" 7.1054274e-015 0.011852503 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.011852503 0 ;
	setAttr ".pt[11]" -type "float3" 0 0.011852503 -3.1974423e-014 ;
	setAttr ".pt[12]" -type "float3" 0 0.011852503 0 ;
	setAttr ".pt[13]" -type "float3" 7.1054274e-015 0.011852503 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.011852503 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.011852503 -3.1974423e-014 ;
	setAttr ".pt[17]" -type "float3" 7.1054274e-015 0.011852503 -3.1974423e-014 ;
	setAttr -s 18 ".vt[0:17]"  0.42426404 -1 -0.42426404 0 -1 -0.59999996
		 -0.42426404 -1 -0.42426404 -0.59999996 -1 0 -0.42426404 -1 0.42426404 0 -1 0.59999996
		 0.42426407 -1 0.42426407 0.60000002 -1 0 0.42426404 1 -0.42426404 0 1 -0.59999996
		 -0.42426404 1 -0.42426404 -0.59999996 1 0 -0.42426404 1 0.42426404 0 1 0.59999996
		 0.42426407 1 0.42426407 0.60000002 1 0 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -n "roof" -p "HouseLevelStart";
	setAttr ".ove" yes;
createNode mesh -n "roofShape" -p "roof";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 1 1 1 0 0.0021776939
		 1 0.7190246 0.0015076342 1 1 0.50323844 1 0 0 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.5 ;
	setAttr ".pt[2]" -type "float3" 0 0 -0.5 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.5 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.5 ;
	setAttr ".pt[7]" -type "float3" 0 0.56351924 -0.5 ;
	setAttr ".pt[8]" -type "float3" 0 1.5635192 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.56452441 -0.5 ;
	setAttr ".pt[10]" -type "float3" 0 1.5635192 0.5 ;
	setAttr ".pt[11]" -type "float3" 0 0.56351924 0.5 ;
	setAttr -s 12 ".vt[0:11]"  6 3.5 6.5 6 2.5 2.04900074 -2.98693419 3.49899483 6.5
		 3.47122121 2.5 2.04900074 -3 3.5 -2.5 3.5 2.5 -2.5 3.5 2.5 2.029146194 6 1.93648076 6.5
		 6 0.93648076 2.04900074 -2.98693419 1.93547559 6.5 3.5 0.93648076 -2.5 -3 1.93648076 -2.5;
	setAttr -s 17 ".ed[0:16]"  0 1 0 1 3 0 2 0 0 2 3 0 5 4 0 4 2 0 6 5 0
		 6 2 0 0 7 0 1 8 0 7 8 0 2 9 0 9 7 0 5 10 0 4 11 0 10 11 0 11 9 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 2 0 1
		mu 0 4 3 2 0 1
		f 4 -8 6 4 5
		mu 0 4 4 5 6 7
		f 4 -1 8 10 -10
		mu 0 4 8 9 10 11
		f 4 -3 11 12 -9
		mu 0 4 12 13 14 15
		f 4 -5 13 15 -15
		mu 0 4 16 17 18 19
		f 4 -6 14 16 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vs" 5;
	setAttr ".bw" 3;
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.6393787077195885 4.7436123646418658 -7.6803068618187105 ;
	setAttr ".r" -type "double3" -19.538352729618637 142.99999999998028 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 13.465463124734558;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 8 -size 32 -divisions 16 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 1 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 46 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId1.id" "roofShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "roofShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "HouseWallsShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "roofShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HouseColumnShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HouseColumnShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape45.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape44.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape43.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape42.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape41.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape40.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape39.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape38.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape37.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape36.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape35.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape34.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape33.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WoodPlank_Shape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of HouseLevelStart_01_asset.ma
