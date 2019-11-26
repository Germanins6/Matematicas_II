function varargout = Solver2ndOrder(varargin)
% SOLVER2NDORDER MATLAB code for Solver2ndOrder.fig
%      SOLVER2NDORDER, by itself, creates a new SOLVER2NDORDER or raises the existing
%      singleton*.
%
%      H = SOLVER2NDORDER returns the handle to a new SOLVER2NDORDER or the handle to
%      the existing singleton*.
%
%      SOLVER2NDORDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOLVER2NDORDER.M with the given input arguments.
%
%      SOLVER2NDORDER('Property','Value',...) creates a new SOLVER2NDORDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Solver2ndOrder_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Solver2ndOrder_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Solver2ndOrder

% Last Modified by GUIDE v2.5 26-Nov-2019 17:45:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Solver2ndOrder_OpeningFcn, ...
                   'gui_OutputFcn',  @Solver2ndOrder_OutputFcn, ...
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


% --- Executes just before Solver2ndOrder is made visible.
function Solver2ndOrder_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Solver2ndOrder (see VARARGIN)

% Choose default command line output for Solver2ndOrder
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Solver2ndOrder wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Solver2ndOrder_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function BTag_Callback(hObject, eventdata, handles)
% hObject    handle to BTag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BTag as text
%        str2double(get(hObject,'String')) returns contents of BTag as a double


% --- Executes during object creation, after setting all properties.
function BTag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BTag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CTag_Callback(hObject, eventdata, handles)
% hObject    handle to CTag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CTag as text
%        str2double(get(hObject,'String')) returns contents of CTag as a double


% --- Executes during object creation, after setting all properties.
function CTag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CTag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ATag_Callback(hObject, eventdata, handles)
% hObject    handle to ATag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ATag as text
%        str2double(get(hObject,'String')) returns contents of ATag as a double


% --- Executes during object creation, after setting all properties.
function ATag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ATag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(get(handles.ATag, 'String'));
b = str2double(get(handles.BTag, 'String'));
c = str2double(get(handles.CTag, 'String'));

x = roots([a b c]);

set(handles.ATag, 'String' , num2str(x1));
set(handles.edit5, 'String' , num2str(x2));

if isreal(x(1))
    set(handles.text10, 'String', 'YES');
    xv = min(x)-5:.01:max(x)+5;
    yv = a*xv.^2+b*xv+c;
    plot(xv, yv)
else
    set(handles.text10, 'String', 'NO')
end

disp('1')
