% Funktion zur Suche von nächsten Nachbarn
%
% Parameter:
% model: Modellpunktmenge
% scene: Szenenpunktmenge
% pairs: Koordinaten der n nächsten Nachbarn als nx4-Matrix
% Autor: Stefan May
% Datum: 15.02.2011

function pairs = nearest_neighbors(model, scene)
   for i=1:size(scene,1)
      dist_min = 1e20;
      j_min = 0;
      for j=1:size(model,1)
         dist = norm(scene(i,:) - model(j,:));
         if(dist < dist_min)
            dist_min = dist;
            j_min = j;
         end
      end

      pairs(i,1) = model(j_min,1);
      pairs(i,2) = model(j_min,2);
      pairs(i,3) = scene(i,1);
      pairs(i,4) = scene(i,2);
   end
end