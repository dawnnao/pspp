function varargout = adiBooterAdv(varargin)
% ADIBOOTERADV MATLAB code for adiBooterAdv.fig
%      ADIBOOTERADV, by itself, creates a new ADIBOOTERADV or raises the existing
%      singleton*.
%
%      H = ADIBOOTERADV returns the handle to a new ADIBOOTERADV or the handle to
%      the existing singleton*.
%
%      ADIBOOTERADV('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADIBOOTERADV.M with the given input arguments.
%
%      ADIBOOTERADV('Property','Value',...) creates a new ADIBOOTERADV or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before adiBooterAdv_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to adiBooterAdv_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to pushbutton_help adiBooterAdv

% Last Modified by GUIDE v2.5 10-Jan-2017 15:44:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @adiBooterAdv_OpeningFcn, ...
                   'gui_OutputFcn',  @adiBooterAdv_OutputFcn, ...
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


% --- Executes just before adiBooterAdv is made visible.
function adiBooterAdv_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to adiBooterAdv (see VARARGIN)

% Choose default command line output for adiBooterAdv
handles.output = hObject;
handles.stepTemp = [];
handles.labelName = [];
handles.trainRatio = [];

mainGUI = findobj('Tag','adiBooter');
if ~isempty(mainGUI)
    if ~isempty(getappdata(figure(mainGUI), 'step'))
        handles.step = getappdata(figure(mainGUI), 'step');
        if ismember(1, handles.step)
            set(handles.radiobutton_glance,'Value',1);
        end
        if ismember(2, handles.step)
            set(handles.radiobutton_label,'Value',1);
        end
        if ismember(3, handles.step)
            set(handles.radiobutton_train,'Value',1);
        end
        if ismember(4, handles.step)
            set(handles.radiobutton_detect,'Value',1);
        end
        if ismember(5, handles.step)
            set(handles.radiobutton_inspect,'Value',1);
        end
    end
end

guidata(hObject, handles);

% UIWAIT makes adiBooterAdv wait for user response (see UIRESUME)
% uiwait(handles.adiBooterAdv);


% --- Outputs from this function are returned to the command line.
function varargout = adiBooterAdv_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% Work Flow %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Executes on button press in radiobutton_glance.
function radiobutton_glance_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_glance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_glance
if handles.radiobutton_glance.Value == 1
    handles.stepTemp{1} = 1;
%     set(handles.radiobutton_glance,'Value',1);
else
    handles.stepTemp{1} = [];
end
guidata(hObject, handles);

% --- Executes on button press in radiobutton_label.
function radiobutton_label_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_label (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_label
if handles.radiobutton_label.Value == 1
    handles.stepTemp{2} = 2;
else
    handles.stepTemp{2} = [];
end
guidata(hObject, handles);

% --- Executes on button press in radiobutton_train.
function radiobutton_train_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_train (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_train
if handles.radiobutton_train.Value == 1
    handles.stepTemp{3} = 3;
else
    handles.stepTemp{3} = [];
end
guidata(hObject, handles);

% --- Executes on button press in radiobutton_detect.
function radiobutton_detect_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_detect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_detect
if handles.radiobutton_detect.Value == 1
    handles.stepTemp{4} = 4;
else
    handles.stepTemp{4} = [];
end
guidata(hObject, handles);

% --- Executes on button press in radiobutton_inspect.
function radiobutton_inspect_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_inspect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_inspect
if handles.radiobutton_inspect.Value == 1
    handles.stepTemp{5} = 5;
else
    handles.stepTemp{5} = [];
end
guidata(hObject, handles);

% radiobutton_label names & Manual radiobutton_train ratio %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit_labelName.
function edit_labelName_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit_labelName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.labelName = get(handles.edit_labelName,'String');
if strcmp(handles.labelName, 'variable name')
    set(hObject, 'Enable', 'On');
    set(handles.edit_labelName,'String', []);
    set(handles.edit_labelName,'ForegroundColor', [0 0 0]);
end
uicontrol(hObject);
guidata(hObject, handles);

function edit_labelName_Callback(hObject, eventdata, handles)
% hObject    handle to edit_labelName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_labelName as text
%        str2double(get(hObject,'String')) returns contents of edit_labelName as a double
handles.labelName = get(handles.edit_labelName,'String');
if isempty(handles.labelName)
    set(hObject, 'Enable', 'inactive');
    set(handles.edit_labelName,'ForegroundColor', [0.494 0.494 0.494]);
    set(handles.edit_labelName,'String', 'variable name');
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit_labelName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_labelName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton_preview.
function pushbutton_preview_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_preview (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.labelNamePreview = get(handles.edit_labelName,'String');
if  ~strcmp(handles.labelNamePreview, 'variable name')
    handles.labelName = evalin('base', handles.labelNamePreview);
    n = length(handles.labelName);
    handles.labelNamePreview = [];
    for m = 1 : n
        handles.labelNamePreview = [handles.labelNamePreview handles.labelName{m}];
        if m < n
            handles.labelNamePreview = [handles.labelNamePreview ', '];
        end
    end
    set(handles.text_labelNamePreview,'String', handles.labelNamePreview);
end
guidata(hObject, handles);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit_trainRatio.
function edit_trainRatio_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit_trainRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'Enable', 'On');

% handles.trainRatio = str2num(get(handles.edit_trainRatio,'String'));
handles.trainRatio = get(handles.edit_trainRatio,'String');

if strcmp(handles.trainRatio, 'decimal')
    set(handles.edit_trainRatio,'String', []);
    set(handles.edit_trainRatio,'ForegroundColor', [0 0 0]);
end
uicontrol(hObject);
guidata(hObject, handles);


function edit_trainRatio_Callback(hObject, eventdata, handles)
% hObject    handle to edit_trainRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_trainRatio as text
%        str2double(get(hObject,'String')) returns contents of edit_trainRatio as a double

handles.trainRatio = str2num(get(handles.edit_trainRatio,'String'));
% handles.trainRatio = get(handles.edit_trainRatio,'String');

if isempty(handles.trainRatio)
    set(hObject, 'Enable', 'inactive');
    set(handles.edit_trainRatio,'ForegroundColor', [0.494 0.494 0.494]);
    set(handles.edit_trainRatio,'String', 'decimal');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_trainRatio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_trainRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% apply & OK %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Executes on button press in pushbutton_help.
function pushbutton_help_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_apply.
function pushbutton_apply_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(handles.stepTemp)
    handles.step = cell2mat(handles.stepTemp);
end

mainGUI = findobj('Tag','adiBooter');
if ~isempty(mainGUI)
    setappdata(mainGUI, 'step', handles.step);
    setappdata(mainGUI, 'labelName', handles.labelName);
    setappdata(mainGUI, 'trainRatio', handles.trainRatio);
end
guidata(hObject, handles);

% --- Executes on button press in pushbutton_OK.
function pushbutton_OK_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_OK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(handles.stepTemp)
    handles.step = cell2mat(handles.stepTemp);
end

mainGUI = findobj('Tag','adiBooter');
if ~isempty(mainGUI)
    setappdata(mainGUI, 'step', handles.step);
    setappdata(mainGUI, 'labelName', handles.labelName);
    setappdata(mainGUI, 'trainRatio', handles.trainRatio);
end
guidata(hObject, handles);
close(figure(adiBooterAdv))