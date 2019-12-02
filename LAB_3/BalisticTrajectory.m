function varargout = BalisticTrajectory(varargin)
% BALISTICTRAJECTORY MATLAB code for BalisticTrajectory.fig
%      BALISTICTRAJECTORY, by itself, creates a new BALISTICTRAJECTORY or raises the existing
%      singleton*.
%
%      H = BALISTICTRAJECTORY returns the handle to a new BALISTICTRAJECTORY or the handle to
%      the existing singleton*.
%
%      BALISTICTRAJECTORY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BALISTICTRAJECTORY.M with the given input arguments.
%
%      BALISTICTRAJECTORY('Property','Value',...) creates a new BALISTICTRAJECTORY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BalisticTrajectory_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BalisticTrajectory_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BalisticTrajectory

% Last Modified by GUIDE v2.5 02-Dec-2019 10:33:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BalisticTrajectory_OpeningFcn, ...
                   'gui_OutputFcn',  @BalisticTrajectory_OutputFcn, ...
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


% --- Executes just before BalisticTrajectory is made visible.
function BalisticTrajectory_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BalisticTrajectory (see VARARGIN)

% Choose default command line output for BalisticTrajectory
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BalisticTrajectory wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BalisticTrajectory_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function velocity_Callback(hObject, eventdata, handles)
% hObject    handle to velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
velocity = get(hObject, 'Value');

set(handles.velocityoutput, 'String' , num2str(velocity));


%%velocityoutput = str2double(get(hObject, '0'));

% --- Executes during object creation, after setting all properties.
function velocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function angle_Callback(hObject, eventdata, handles)
% hObject    handle to angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
angle = get(hObject, 'Value');
set(handles.angleoutput, 'String' , num2str(angle)); 


% --- Executes during object creation, after setting all properties.
function angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%%Get initial values
x0 = str2double(get(handles.initX, 'String'));
y0 = str2double(get(handles.initY, 'String'));
velocity = str2double(get(handles.velocityoutput, 'String'))
angle = str2double(get(handles.angleoutput, 'String'))
g = 9.81;
it = 1;
dt = 0.05;
%%Calculate trajectory
for t = 0:dt:100
   
    x(it) = x0 + t * velocity * cosd(angle);
    y(it) = y0 + t*velocity*sind(angle)-0.5*9.81*t^2;
    if((y(it)+ y0 + (t+dt)*velocity*sind(angle)-0.5*9.81*(t+dt)^2 )< 0)
        break;
    end
    it = it+1;
end
  
 %%Calculate X and Y max in trajectory
 Xmax = max(x);
 Ymax = max(y);
 
  plot(x, y); 
  ylim([0 Ymax+1])
% Xmax = ((velocity^2)*sind(angle*2)/g);
% Ymax = ((velocity^2)*sind(angle)^2)/(2*g);

%%Set total X and Max Y
set(handles.range, 'String', num2str(Xmax));
set(handles.height, 'String',  num2str(Ymax));


function initX_Callback(hObject, eventdata, handles)
% hObject    handle to initX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initX as text
%        str2double(get(hObject,'String')) returns contents of initX as a double


% --- Executes during object creation, after setting all properties.
function initX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function initY_Callback(hObject, eventdata, handles)
% hObject    handle to initY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initY as text
%        str2double(get(hObject,'String')) returns contents of initY as a double


% --- Executes during object creation, after setting all properties.
function initY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range_Callback(hObject, eventdata, handles)
% hObject    handle to range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range as text
%        str2double(get(hObject,'String')) returns contents of range as a double


% --- Executes during object creation, after setting all properties.
function range_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function height_Callback(hObject, eventdata, handles)
% hObject    handle to height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of height as text
%        str2double(get(hObject,'String')) returns contents of height as a double


% --- Executes during object creation, after setting all properties.
function height_CreateFcn(hObject, eventdata, handles)
% hObject    handle to height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function velocityoutput_Callback(hObject, eventdata, handles)
% hObject    handle to velocityoutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of velocityoutput as text
%        str2double(get(hObject,'String')) returns contents of velocityoutput as a double


% --- Executes during object creation, after setting all properties.
function velocityoutput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to velocityoutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angleoutput_Callback(hObject, eventdata, handles)
% hObject    handle to angleoutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angleoutput as text
%        str2double(get(hObject,'String')) returns contents of angleoutput as a double


% --- Executes during object creation, after setting all properties.
function angleoutput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angleoutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
