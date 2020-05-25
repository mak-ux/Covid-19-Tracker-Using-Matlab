function varargout = Covid19TrackerByMak(varargin)
% COVID19TRACKERBYMAK MATLAB code for Covid19TrackerByMak.fig
%      COVID19TRACKERBYMAK, by itself, creates a new COVID19TRACKERBYMAK or raises the existing
%      singleton*.
%
%      H = COVID19TRACKERBYMAK returns the handle to a new COVID19TRACKERBYMAK or the handle to
%      the existing singleton*.
%
%      COVID19TRACKERBYMAK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COVID19TRACKERBYMAK.M with the given input arguments.
%
%      COVID19TRACKERBYMAK('Property','Value',...) creates a new COVID19TRACKERBYMAK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Covid19TrackerByMak_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Covid19TrackerByMak_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Covid19TrackerByMak

% Last Modified by GUIDE v2.5 24-May-2020 18:01:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Covid19TrackerByMak_OpeningFcn, ...
                   'gui_OutputFcn',  @Covid19TrackerByMak_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before Covid19TrackerByMak is made visible.
function Covid19TrackerByMak_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Covid19TrackerByMak (see VARARGIN)

% Choose default command line output for Covid19TrackerByMak
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Covid19TrackerByMak wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Covid19TrackerByMak_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushme.
function pushme_Callback(hObject, eventdata, handles)
% hObject    handle to pushme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=get(handles.pushme,'string');
n==str2num(fs1);
if(fs==1)
   addpath('C:\Users\DELL\Desktop\all_dataset\vovid_project\CV19')
   addpath('C:\Users\DELL\Desktop\all_dataset\vovid_project\data')
%w1 - weigth for values, w2 - weight for derivatives, prn - print results
res = fitVirusCV19(@getDataIndia,'prn','on','jpg','on','jpres','-r300');
 
elseif(fs==2)
    track;
elseif(fs==3)
     addpath('C:\Users\DELL\Desktop\all_dataset\vovid_project\CV19')
     addpath('C:\Users\DELL\Desktop\all_dataset\vovid_project\data')
%w1 - weigth for values, w2 - weight for derivatives, prn - print results
    res = fitVirusCV19(@getDataWorld,'prn','on','jpg','on','jpres','-r300');
    
else
    disp('sorry');
end


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
