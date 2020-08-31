function varargout = Main(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main_OpeningFcn, ...
                   'gui_OutputFcn',  @Main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

% --- Executes just before Main is made visible.
function Main_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = Main_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



% --- Executes on button press in pushbutton_Select.
function pushbutton_Select_Callback(hObject, eventdata, handles)
clear all; clc;
global input; % Variable global : pour la passer entre les functions/callbacks

%% Parcourire le fichier Excel
[file, path]=uigetfile('*.xlsx','Parcourire Note(s)');
Getfile=strcat (path , file);   % pour recouvrire tout le chemin/lien

A = xlsread(Getfile);   % lire le fichier en tempque fichier excel

%% tester si le fichier est vide ou non
if file==0          % Test if the file loaded EMTPY or NOT
    msgbox('Selectionner un fichier Excel qui n est pas vide!','Error','Error');
    return
else
    msgbox('fichier Excel est charger avec succes, cliquer sur "Calculer Moyenne" pour to continue !','info','Help');
end
%% calculer la matrice transposer
input = A';

% --- Executes on button press in pushbutton_Calculer.
function pushbutton_Calculer_Callback(hObject, eventdata, handles)

%% recuperer la variable global
global input;

%% importer le calculateur du reseau de neurone
load('Cal_Moyen.mat');

%% Afficher les moyennes de(s) Nouveau etudiant(s)
Moyenne = N_network(input);
% Taill = size (Moyenne,2);

for i=1 : size (Moyenne,2)
    
    Moyen = Moyenne(i);

    if Moyen >= 10
        
        fprintf(['\n\nL^etudiant N° %i :\n',...
         'Est ADMIS Avec une Moyenne : %f.\n'],i,Moyen)
    
    else
        
        fprintf(['\n\nL^etudiant N° %i :\n',...
         'Est AJOURNER Avec une Moyenne : %f.\n'],i,Moyen)

    end
end
