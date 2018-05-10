{hint: save all files to location: C:\Users\masdi\Documents\lamw-prj\baku_kata\jni\ }
library controls;  //[by LAMW: Lazarus Android Module Wizard: 5/9/2018 15:14:49]
  
{$mode delphi}
  
uses
  Classes, SysUtils, And_jni, And_jni_Bridge, AndroidWidget, Laz_And_Controls,
  Laz_And_Controls_Events, control_main, view_recitem;
  
{%region /fold 'LAMW generated code'}

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnCreate
  Signature: (Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/content/Intent;)V }
procedure pAppOnCreate(PEnv: PJNIEnv; this: JObject; context: JObject; 
  layout: JObject; intent: JObject); cdecl;
begin
  Java_Event_pAppOnCreate(PEnv, this, context, layout, intent); MainModule.Init(
    gApp);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnScreenStyle
  Signature: ()I }
function pAppOnScreenStyle(PEnv: PJNIEnv; this: JObject): JInt; cdecl;
begin
  Result:=Java_Event_pAppOnScreenStyle(PEnv, this);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnNewIntent
  Signature: (Landroid/content/Intent;)V }
procedure pAppOnNewIntent(PEnv: PJNIEnv; this: JObject; intent: JObject); cdecl;
begin
  Java_Event_pAppOnNewIntent(PEnv, this, intent);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnDestroy
  Signature: ()V }
procedure pAppOnDestroy(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnDestroy(PEnv, this);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnPause
  Signature: ()V }
procedure pAppOnPause(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnPause(PEnv, this);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnRestart
  Signature: ()V }
procedure pAppOnRestart(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnRestart(PEnv, this);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnResume
  Signature: ()V }
procedure pAppOnResume(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnResume(PEnv, this);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnStart
  Signature: ()V }
procedure pAppOnStart(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnStart(PEnv, this);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnStop
  Signature: ()V }
procedure pAppOnStop(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnStop(PEnv, this);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnBackPressed
  Signature: ()V }
procedure pAppOnBackPressed(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnBackPressed(PEnv, this);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnRotate
  Signature: (I)I }
function pAppOnRotate(PEnv: PJNIEnv; this: JObject; rotate: JInt): JInt; cdecl;
begin
  Result:=Java_Event_pAppOnRotate(PEnv, this, rotate);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnConfigurationChanged
  Signature: ()V }
procedure pAppOnConfigurationChanged(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnConfigurationChanged(PEnv, this);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnActivityResult
  Signature: (IILandroid/content/Intent;)V }
procedure pAppOnActivityResult(PEnv: PJNIEnv; this: JObject; requestCode: JInt; 
  resultCode: JInt; data: JObject); cdecl;
begin
  Java_Event_pAppOnActivityResult(PEnv, this, requestCode, resultCode, data);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnCreateOptionsMenu
  Signature: (Landroid/view/Menu;)V }
procedure pAppOnCreateOptionsMenu(PEnv: PJNIEnv; this: JObject; menu: JObject); 
  cdecl;
begin
  Java_Event_pAppOnCreateOptionsMenu(PEnv, this, menu);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnClickOptionMenuItem
  Signature: (Landroid/view/MenuItem;ILjava/lang/String;Z)V }
procedure pAppOnClickOptionMenuItem(PEnv: PJNIEnv; this: JObject; 
  menuItem: JObject; itemID: JInt; itemCaption: JString; checked: JBoolean); 
  cdecl;
begin
  Java_Event_pAppOnClickOptionMenuItem(PEnv, this, menuItem, itemID, 
    itemCaption, checked);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnPrepareOptionsMenu
  Signature: (Landroid/view/Menu;I)Z }
function pAppOnPrepareOptionsMenu(PEnv: PJNIEnv; this: JObject; menu: JObject; 
  menuSize: JInt): JBoolean; cdecl;
begin
  Result:=Java_Event_pAppOnPrepareOptionsMenu(PEnv, this, menu, menuSize);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnPrepareOptionsMenuItem
  Signature: (Landroid/view/Menu;Landroid/view/MenuItem;I)Z }
function pAppOnPrepareOptionsMenuItem(PEnv: PJNIEnv; this: JObject; 
  menu: JObject; menuItem: JObject; itemIndex: JInt): JBoolean; cdecl;
begin
  Result:=Java_Event_pAppOnPrepareOptionsMenuItem(PEnv, this, menu, menuItem, 
    itemIndex);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnCreateContextMenu
  Signature: (Landroid/view/ContextMenu;)V }
procedure pAppOnCreateContextMenu(PEnv: PJNIEnv; this: JObject; menu: JObject); 
  cdecl;
begin
  Java_Event_pAppOnCreateContextMenu(PEnv, this, menu);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnClickContextMenuItem
  Signature: (Landroid/view/MenuItem;ILjava/lang/String;Z)V }
procedure pAppOnClickContextMenuItem(PEnv: PJNIEnv; this: JObject; 
  menuItem: JObject; itemID: JInt; itemCaption: JString; checked: JBoolean); 
  cdecl;
begin
  Java_Event_pAppOnClickContextMenuItem(PEnv, this, menuItem, itemID, 
    itemCaption, checked);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnDraw
  Signature: (J)V }
procedure pOnDraw(PEnv: PJNIEnv; this: JObject; pasobj: JLong); cdecl;
begin
  Java_Event_pOnDraw(PEnv, this, TObject(pasobj));
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnTouch
  Signature: (JIIFFFF)V }
procedure pOnTouch(PEnv: PJNIEnv; this: JObject; pasobj: JLong; act: JInt; 
  cnt: JInt; x1: JFloat; y1: JFloat; x2: JFloat; y2: JFloat); cdecl;
begin
  Java_Event_pOnTouch(PEnv, this, TObject(pasobj), act, cnt, x1, y1, x2, y2);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnClickGeneric
  Signature: (JI)V }
procedure pOnClickGeneric(PEnv: PJNIEnv; this: JObject; pasobj: JLong; 
  value: JInt); cdecl;
begin
  Java_Event_pOnClickGeneric(PEnv, this, TObject(pasobj), value);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnSpecialKeyDown
  Signature: (CILjava/lang/String;)Z }
function pAppOnSpecialKeyDown(PEnv: PJNIEnv; this: JObject; keyChar: JChar; 
  keyCode: JInt; keyCodeString: JString): JBoolean; cdecl;
begin
  Result:=Java_Event_pAppOnSpecialKeyDown(PEnv, this, keyChar, keyCode, 
    keyCodeString);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnClick
  Signature: (JI)V }
procedure pOnClick(PEnv: PJNIEnv; this: JObject; pasobj: JLong; value: JInt); 
  cdecl;
begin
  Java_Event_pOnClick(PEnv, this, TObject(pasobj), value);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnLongClick
  Signature: (JI)V }
procedure pOnLongClick(PEnv: PJNIEnv; this: JObject; pasobj: JLong; value: JInt
  ); cdecl;
begin
  Java_Event_pOnLongClick(PEnv, this, TObject(pasobj), value);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnChange
  Signature: (JLjava/lang/String;I)V }
procedure pOnChange(PEnv: PJNIEnv; this: JObject; pasobj: JLong; txt: JString; 
  count: JInt); cdecl;
begin
  Java_Event_pOnChange(PEnv, this, TObject(pasobj), txt, count);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnChanged
  Signature: (JLjava/lang/String;I)V }
procedure pOnChanged(PEnv: PJNIEnv; this: JObject; pasobj: JLong; txt: JString; 
  count: JInt); cdecl;
begin
  Java_Event_pOnChanged(PEnv, this, TObject(pasobj), txt, count);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnEnter
  Signature: (J)V }
procedure pOnEnter(PEnv: PJNIEnv; this: JObject; pasobj: JLong); cdecl;
begin
  Java_Event_pOnEnter(PEnv, this, TObject(pasobj));
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnClose
  Signature: (J)V }
procedure pOnClose(PEnv: PJNIEnv; this: JObject; pasobj: JLong); cdecl;
begin
  Java_Event_pOnClose(PEnv, this, TObject(pasobj));
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnViewClick
  Signature: (Landroid/view/View;I)V }
procedure pAppOnViewClick(PEnv: PJNIEnv; this: JObject; view: JObject; id: JInt
  ); cdecl;
begin
  Java_Event_pAppOnViewClick(PEnv, this, view, id);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pAppOnListItemClick
  Signature: (Landroid/widget/AdapterView;Landroid/view/View;II)V }
procedure pAppOnListItemClick(PEnv: PJNIEnv; this: JObject; adapter: JObject; 
  view: JObject; position: JInt; id: JInt); cdecl;
begin
  Java_Event_pAppOnListItemClick(PEnv, this, adapter, view, position, id);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnFlingGestureDetected
  Signature: (JI)V }
procedure pOnFlingGestureDetected(PEnv: PJNIEnv; this: JObject; pasobj: JLong; 
  direction: JInt); cdecl;
begin
  Java_Event_pOnFlingGestureDetected(PEnv, this, TObject(pasobj), direction);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnPinchZoomGestureDetected
  Signature: (JFI)V }
procedure pOnPinchZoomGestureDetected(PEnv: PJNIEnv; this: JObject; 
  pasobj: JLong; scaleFactor: JFloat; state: JInt); cdecl;
begin
  Java_Event_pOnPinchZoomGestureDetected(PEnv, this, TObject(pasobj), 
    scaleFactor, state);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnLostFocus
  Signature: (JLjava/lang/String;)V }
procedure pOnLostFocus(PEnv: PJNIEnv; this: JObject; pasobj: JLong; 
  text: JString); cdecl;
begin
  Java_Event_pOnLostFocus(PEnv, this, TObject(pasobj), text);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnBeforeDispatchDraw
  Signature: (JLandroid/graphics/Canvas;I)V }
procedure pOnBeforeDispatchDraw(PEnv: PJNIEnv; this: JObject; pasobj: JLong; 
  canvas: JObject; tag: JInt); cdecl;
begin
  Java_Event_pOnBeforeDispatchDraw(PEnv, this, TObject(pasobj), canvas, tag);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnAfterDispatchDraw
  Signature: (JLandroid/graphics/Canvas;I)V }
procedure pOnAfterDispatchDraw(PEnv: PJNIEnv; this: JObject; pasobj: JLong; 
  canvas: JObject; tag: JInt); cdecl;
begin
  Java_Event_pOnAfterDispatchDraw(PEnv, this, TObject(pasobj), canvas, tag);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnLayouting
  Signature: (JZ)V }
procedure pOnLayouting(PEnv: PJNIEnv; this: JObject; pasobj: JLong; 
  changed: JBoolean); cdecl;
begin
  Java_Event_pOnLayouting(PEnv, this, TObject(pasobj), changed);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnAsyncEventDoInBackground
  Signature: (JI)Z }
function pOnAsyncEventDoInBackground(PEnv: PJNIEnv; this: JObject; 
  pasobj: JLong; progress: JInt): JBoolean; cdecl;
begin
  Result:=Java_Event_pOnAsyncEventDoInBackground(PEnv, this, TObject(pasobj), 
    progress);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnAsyncEventProgressUpdate
  Signature: (JI)I }
function pOnAsyncEventProgressUpdate(PEnv: PJNIEnv; this: JObject; 
  pasobj: JLong; progress: JInt): JInt; cdecl;
begin
  Result:=Java_Event_pOnAsyncEventProgressUpdate(PEnv, this, TObject(pasobj), 
    progress);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnAsyncEventPreExecute
  Signature: (J)I }
function pOnAsyncEventPreExecute(PEnv: PJNIEnv; this: JObject; pasobj: JLong
  ): JInt; cdecl;
begin
  Result:=Java_Event_pOnAsyncEventPreExecute(PEnv, this, TObject(pasobj));
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnAsyncEventPostExecute
  Signature: (JI)V }
procedure pOnAsyncEventPostExecute(PEnv: PJNIEnv; this: JObject; pasobj: JLong; 
  progress: JInt); cdecl;
begin
  Java_Event_pOnAsyncEventPostExecute(PEnv, this, TObject(pasobj), progress);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnHttpClientContentResult
  Signature: (JLjava/lang/String;)V }
procedure pOnHttpClientContentResult(PEnv: PJNIEnv; this: JObject; 
  pasobj: JLong; content: JString); cdecl;
begin
  Java_Event_pOnHttpClientContentResult(PEnv, this, TObject(pasobj), content);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnHttpClientCodeResult
  Signature: (JI)V }
procedure pOnHttpClientCodeResult(PEnv: PJNIEnv; this: JObject; pasobj: JLong; 
  code: JInt); cdecl;
begin
  Java_Event_pOnHttpClientCodeResult(PEnv, this, TObject(pasobj), code);
end;

{ Class:     id_web_lebah_baku_kata_Controls
  Method:    pOnScrollViewChanged
  Signature: (JIIIIII)V }
procedure pOnScrollViewChanged(PEnv: PJNIEnv; this: JObject; pasobj: JLong; 
  currenthorizontal: JInt; currentVertical: JInt; previousHorizontal: JInt; 
  previousVertical: JInt; onPosition: JInt; scrolldiff: JInt); cdecl;
begin
  Java_Event_pOnScrollViewChanged(PEnv, this, TObject(pasobj), 
    currenthorizontal, currentVertical, previousHorizontal, previousVertical, 
    onPosition, scrolldiff);
end;

const NativeMethods: array[0..43] of JNINativeMethod = (
   (name: 'pAppOnCreate';
    signature: '(Landroid/content/Context;Landroid/widget/RelativeLayout;'
      +'Landroid/content/Intent;)V';
    fnPtr: @pAppOnCreate; ),
   (name: 'pAppOnScreenStyle';
    signature: '()I';
    fnPtr: @pAppOnScreenStyle; ),
   (name: 'pAppOnNewIntent';
    signature: '(Landroid/content/Intent;)V';
    fnPtr: @pAppOnNewIntent; ),
   (name: 'pAppOnDestroy';
    signature: '()V';
    fnPtr: @pAppOnDestroy; ),
   (name: 'pAppOnPause';
    signature: '()V';
    fnPtr: @pAppOnPause; ),
   (name: 'pAppOnRestart';
    signature: '()V';
    fnPtr: @pAppOnRestart; ),
   (name: 'pAppOnResume';
    signature: '()V';
    fnPtr: @pAppOnResume; ),
   (name: 'pAppOnStart';
    signature: '()V';
    fnPtr: @pAppOnStart; ),
   (name: 'pAppOnStop';
    signature: '()V';
    fnPtr: @pAppOnStop; ),
   (name: 'pAppOnBackPressed';
    signature: '()V';
    fnPtr: @pAppOnBackPressed; ),
   (name: 'pAppOnRotate';
    signature: '(I)I';
    fnPtr: @pAppOnRotate; ),
   (name: 'pAppOnConfigurationChanged';
    signature: '()V';
    fnPtr: @pAppOnConfigurationChanged; ),
   (name: 'pAppOnActivityResult';
    signature: '(IILandroid/content/Intent;)V';
    fnPtr: @pAppOnActivityResult; ),
   (name: 'pAppOnCreateOptionsMenu';
    signature: '(Landroid/view/Menu;)V';
    fnPtr: @pAppOnCreateOptionsMenu; ),
   (name: 'pAppOnClickOptionMenuItem';
    signature: '(Landroid/view/MenuItem;ILjava/lang/String;Z)V';
    fnPtr: @pAppOnClickOptionMenuItem; ),
   (name: 'pAppOnPrepareOptionsMenu';
    signature: '(Landroid/view/Menu;I)Z';
    fnPtr: @pAppOnPrepareOptionsMenu; ),
   (name: 'pAppOnPrepareOptionsMenuItem';
    signature: '(Landroid/view/Menu;Landroid/view/MenuItem;I)Z';
    fnPtr: @pAppOnPrepareOptionsMenuItem; ),
   (name: 'pAppOnCreateContextMenu';
    signature: '(Landroid/view/ContextMenu;)V';
    fnPtr: @pAppOnCreateContextMenu; ),
   (name: 'pAppOnClickContextMenuItem';
    signature: '(Landroid/view/MenuItem;ILjava/lang/String;Z)V';
    fnPtr: @pAppOnClickContextMenuItem; ),
   (name: 'pOnDraw';
    signature: '(J)V';
    fnPtr: @pOnDraw; ),
   (name: 'pOnTouch';
    signature: '(JIIFFFF)V';
    fnPtr: @pOnTouch; ),
   (name: 'pOnClickGeneric';
    signature: '(JI)V';
    fnPtr: @pOnClickGeneric; ),
   (name: 'pAppOnSpecialKeyDown';
    signature: '(CILjava/lang/String;)Z';
    fnPtr: @pAppOnSpecialKeyDown; ),
   (name: 'pOnClick';
    signature: '(JI)V';
    fnPtr: @pOnClick; ),
   (name: 'pOnLongClick';
    signature: '(JI)V';
    fnPtr: @pOnLongClick; ),
   (name: 'pOnChange';
    signature: '(JLjava/lang/String;I)V';
    fnPtr: @pOnChange; ),
   (name: 'pOnChanged';
    signature: '(JLjava/lang/String;I)V';
    fnPtr: @pOnChanged; ),
   (name: 'pOnEnter';
    signature: '(J)V';
    fnPtr: @pOnEnter; ),
   (name: 'pOnClose';
    signature: '(J)V';
    fnPtr: @pOnClose; ),
   (name: 'pAppOnViewClick';
    signature: '(Landroid/view/View;I)V';
    fnPtr: @pAppOnViewClick; ),
   (name: 'pAppOnListItemClick';
    signature: '(Landroid/widget/AdapterView;Landroid/view/View;II)V';
    fnPtr: @pAppOnListItemClick; ),
   (name: 'pOnFlingGestureDetected';
    signature: '(JI)V';
    fnPtr: @pOnFlingGestureDetected; ),
   (name: 'pOnPinchZoomGestureDetected';
    signature: '(JFI)V';
    fnPtr: @pOnPinchZoomGestureDetected; ),
   (name: 'pOnLostFocus';
    signature: '(JLjava/lang/String;)V';
    fnPtr: @pOnLostFocus; ),
   (name: 'pOnBeforeDispatchDraw';
    signature: '(JLandroid/graphics/Canvas;I)V';
    fnPtr: @pOnBeforeDispatchDraw; ),
   (name: 'pOnAfterDispatchDraw';
    signature: '(JLandroid/graphics/Canvas;I)V';
    fnPtr: @pOnAfterDispatchDraw; ),
   (name: 'pOnLayouting';
    signature: '(JZ)V';
    fnPtr: @pOnLayouting; ),
   (name: 'pOnAsyncEventDoInBackground';
    signature: '(JI)Z';
    fnPtr: @pOnAsyncEventDoInBackground; ),
   (name: 'pOnAsyncEventProgressUpdate';
    signature: '(JI)I';
    fnPtr: @pOnAsyncEventProgressUpdate; ),
   (name: 'pOnAsyncEventPreExecute';
    signature: '(J)I';
    fnPtr: @pOnAsyncEventPreExecute; ),
   (name: 'pOnAsyncEventPostExecute';
    signature: '(JI)V';
    fnPtr: @pOnAsyncEventPostExecute; ),
   (name: 'pOnHttpClientContentResult';
    signature: '(JLjava/lang/String;)V';
    fnPtr: @pOnHttpClientContentResult; ),
   (name: 'pOnHttpClientCodeResult';
    signature: '(JI)V';
    fnPtr: @pOnHttpClientCodeResult; ),
   (name: 'pOnScrollViewChanged';
    signature: '(JIIIIII)V';
    fnPtr: @pOnScrollViewChanged; )
);

function RegisterNativeMethodsArray(PEnv: PJNIEnv; className: PChar; 
  methods: PJNINativeMethod; countMethods: integer): integer;
var
  curClass: jClass;
begin
  Result:= JNI_FALSE;
  curClass:= (PEnv^).FindClass(PEnv, className);
  if curClass <> nil then
  begin
    if (PEnv^).RegisterNatives(PEnv, curClass, methods, countMethods) > 0 
      then Result:= JNI_TRUE;
  end;
end;

function RegisterNativeMethods(PEnv: PJNIEnv; className: PChar): integer;
begin
  Result:= RegisterNativeMethodsArray(PEnv, className, @NativeMethods[0], Length
    (NativeMethods));
end;

function JNI_OnLoad(VM: PJavaVM; {%H-}reserved: pointer): JInt; cdecl;
var
  PEnv: PPointer;
  curEnv: PJNIEnv;
begin
  PEnv:= nil;
  Result:= JNI_VERSION_1_6;
  (VM^).GetEnv(VM, @PEnv, Result);
  if PEnv <> nil then
  begin
     curEnv:= PJNIEnv(PEnv);
     RegisterNativeMethods(curEnv, 'id/web/lebah/baku_kata/Controls');
  end;
  gVM:= VM; {AndroidWidget.pas}
end;

procedure JNI_OnUnload(VM: PJavaVM; {%H-}reserved: pointer); cdecl;
var
  PEnv: PPointer;
  curEnv: PJNIEnv;
begin
  PEnv:= nil;
  (VM^).GetEnv(VM, @PEnv, JNI_VERSION_1_6);
  if PEnv <> nil then
  begin
    curEnv:= PJNIEnv(PEnv);
    (curEnv^).DeleteGlobalRef(curEnv, gjClass);
    gjClass:= nil; {AndroidWidget.pas}
    gVM:= nil; {AndroidWidget.pas}
  end;
  gApp.Terminate;
  FreeAndNil(gApp);
end;

exports
  JNI_OnLoad name 'JNI_OnLoad',
  JNI_OnUnload name 'JNI_OnUnload',
  pAppOnCreate name 'Java_id_web_lebah_baku_kata_Controls_pAppOnCreate',
  pAppOnScreenStyle name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnScreenStyle',
  pAppOnNewIntent name 'Java_id_web_lebah_baku_kata_Controls_pAppOnNewIntent',
  pAppOnDestroy name 'Java_id_web_lebah_baku_kata_Controls_pAppOnDestroy',
  pAppOnPause name 'Java_id_web_lebah_baku_kata_Controls_pAppOnPause',
  pAppOnRestart name 'Java_id_web_lebah_baku_kata_Controls_pAppOnRestart',
  pAppOnResume name 'Java_id_web_lebah_baku_kata_Controls_pAppOnResume',
  pAppOnStart name 'Java_id_web_lebah_baku_kata_Controls_pAppOnStart',
  pAppOnStop name 'Java_id_web_lebah_baku_kata_Controls_pAppOnStop',
  pAppOnBackPressed name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnBackPressed',
  pAppOnRotate name 'Java_id_web_lebah_baku_kata_Controls_pAppOnRotate',
  pAppOnConfigurationChanged name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnConfigurationChanged',
  pAppOnActivityResult name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnActivityResult',
  pAppOnCreateOptionsMenu name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnCreateOptionsMenu',
  pAppOnClickOptionMenuItem name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnClickOptionMenuItem',
  pAppOnPrepareOptionsMenu name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnPrepareOptionsMenu',
  pAppOnPrepareOptionsMenuItem name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnPrepareOptionsMenuItem',
  pAppOnCreateContextMenu name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnCreateContextMenu',
  pAppOnClickContextMenuItem name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnClickContextMenuItem',
  pOnDraw name 'Java_id_web_lebah_baku_kata_Controls_pOnDraw',
  pOnTouch name 'Java_id_web_lebah_baku_kata_Controls_pOnTouch',
  pOnClickGeneric name 'Java_id_web_lebah_baku_kata_Controls_pOnClickGeneric',
  pAppOnSpecialKeyDown name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnSpecialKeyDown',
  pOnClick name 'Java_id_web_lebah_baku_kata_Controls_pOnClick',
  pOnLongClick name 'Java_id_web_lebah_baku_kata_Controls_pOnLongClick',
  pOnChange name 'Java_id_web_lebah_baku_kata_Controls_pOnChange',
  pOnChanged name 'Java_id_web_lebah_baku_kata_Controls_pOnChanged',
  pOnEnter name 'Java_id_web_lebah_baku_kata_Controls_pOnEnter',
  pOnClose name 'Java_id_web_lebah_baku_kata_Controls_pOnClose',
  pAppOnViewClick name 'Java_id_web_lebah_baku_kata_Controls_pAppOnViewClick',
  pAppOnListItemClick name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pAppOnListItemClick',
  pOnFlingGestureDetected name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnFlingGestureDetected',
  pOnPinchZoomGestureDetected name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnPinchZoomGestureDetected',
  pOnLostFocus name 'Java_id_web_lebah_baku_kata_Controls_pOnLostFocus',
  pOnBeforeDispatchDraw name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnBeforeDispatchDraw',
  pOnAfterDispatchDraw name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnAfterDispatchDraw',
  pOnLayouting name 'Java_id_web_lebah_baku_kata_Controls_pOnLayouting',
  pOnAsyncEventDoInBackground name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnAsyncEventDoInBackground',
  pOnAsyncEventProgressUpdate name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnAsyncEventProgressUpdate',
  pOnAsyncEventPreExecute name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnAsyncEventPreExecute',
  pOnAsyncEventPostExecute name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnAsyncEventPostExecute',
  pOnHttpClientContentResult name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnHttpClientContentResult',
  pOnHttpClientCodeResult name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnHttpClientCodeResult',
  pOnScrollViewChanged name 'Java_id_web_lebah_baku_kata_Controls_'
    +'pOnScrollViewChanged';

{%endregion}
  
begin
  gApp:= jApp.Create(nil);
  gApp.Title:= 'LAMW JNI Android Bridges Library';
  gjAppName:= 'id.web.lebah.baku_kata';
  gjClassName:= 'id/web/lebah/baku_kata/Controls';
  gApp.AppName:=gjAppName;
  gApp.ClassName:=gjClassName;
  gApp.Initialize;
  gApp.CreateForm(TMainModule, MainModule);
end.
