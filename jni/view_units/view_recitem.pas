{Hint: save all files to location: C:\Users\masdi\Documents\lamw-prj\baku_kata\jni }
unit view_recitem;

{$mode delphi}

interface

uses
  Classes, SysUtils, AndroidWidget, Laz_And_Controls, And_jni;
  
type

  { TAndroidModule2 }

  TAndroidModule2 = class(jForm)
    jImageView1: jImageView;
    jPanel1: jPanel;
    jTextView1: jTextView;
    procedure jTextView1AfterDispatchDraw(Sender: TObject; canvas: JObject;
      tag: integer);
    procedure jTextView1Layouting(Sender: TObject; changed: boolean);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  AndroidModule2: TAndroidModule2;

implementation
  
{$R *.lfm}
  

{ TAndroidModule2 }

procedure TAndroidModule2.jTextView1Layouting(Sender: TObject; changed: boolean
  );
begin

end;

procedure TAndroidModule2.jTextView1AfterDispatchDraw(Sender: TObject;
  canvas: JObject; tag: integer);
begin
  jTextView1.SetTextAsLink(jTextView1.Text);
end;

end.
