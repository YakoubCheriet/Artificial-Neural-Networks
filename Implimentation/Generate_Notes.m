%% Ce scipte est pour generer aleatroiment des notes avec leurs moyennes selon les coef donner
   %Pour le semestre 2 Master 1 STIC 
   
Moyenne =0;

%% Generer des Notes (8 notes pour 100 eleves)
for i=1:100
    for j=1:8
        a = 0;
        b = 20;
        r(i,j) = (b-a).*rand(1) + a;
    end
end

% coef des module donner pour la specialite STIC Master 1
Coef = [5,5,3,5,4,4,2,2];

%% calculer les moyennes
for i=1:100
    for j=1:8
        Moyenne = Moyenne + ( r(i,j)* Coef(j) );
    end
    Moyenne_mat(i)= Moyenne / 30;
    Moyenne=0;
end

%% Exporter les Notes vers Excel
filename = 'Notes.xlsx';
xlswrite(filename,r,1)

%% Exporter les Moyennes vers Excel
filename = 'Moyennes.xlsx';
xlswrite(filename,Moyenne_mat,1)