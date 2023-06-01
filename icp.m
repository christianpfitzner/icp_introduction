% Iterative Closest Points Algorithmus
%
% Parameter:
% model: Modellpunktmenge
% scene: Szenenpunktmenge
% iter: Anzahl Iterationen
% T: Transformationsmatrix
% Autor: Stefan May
% Datum: 15.02.2011

function T = icp(model, scene, iter)

scene_tmp = scene;
T = eye(3);

for i=1:iter
	
	% Punktpaarsuche
	pairs = nearest_neighbors(model, scene_tmp);

	% Berechnung der Centroiden

	
	% Bestimmung der Transformation

	
	% Transformation

	
	% Aufmultiplizieren der iterativen Transformationen


	figure(1);
	plot(model(:,1), model(:,2), 'gx', ...
	        scene(:,1),scene(:,2),'rx', ...
	        scene_tmp(:,1), scene_tmp(:,2), 'bx');
	refresh
	
	%pause

end

end