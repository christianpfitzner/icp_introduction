clear all;

scan1 = dlmread('scan1.txt', ' ');
scan2 = dlmread('scan2.txt', ' ');
	
iter = 3;
T = icp(scan1, scan2, iter)

