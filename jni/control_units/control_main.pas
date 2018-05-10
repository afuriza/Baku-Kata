{Hint: save all files to location: C:\Users\masdi\Documents\lamw-prj\baku_kata\jni }
unit control_main;

{$mode delphi}

interface

uses
  Classes, SysUtils, AndroidWidget, scoordinatorlayout, sfloatingbutton,
  sappbarlayout, scollapsingtoolbarlayout, stoolbar, Laz_And_Controls,
  srecyclerview, framelayout, captionpanel, stextinput, autocompletetextview,
  view_recitem,sax_html,dom_html,dom,htmwrite;
  
type

  { TMainModule }

  TMainModule = class(jForm)
    etSentences: jEditText;
    httpLebah: jHttpClient;
    dpProgress: jDialogProgress;
    atSendForm: jAsyncTask;
    jsCoordinatorLayout1: jsCoordinatorLayout;
    jsCoordinatorLayout2: jsCoordinatorLayout;
    jsCoordinatorLayout3: jsCoordinatorLayout;
    jScrollView1: jScrollView;
    btnSubmit: jsFloatingButton;
    jsToolbar1: jsToolbar;
    tvHint: jTextView;
    tvResult: jTextView;
    jTextViewCaption: jTextView;
    procedure btnSubmitClick(Sender: TObject);
    procedure atSendFormDoInBackground(Sender: TObject; progress: integer; out
      keepInBackground: boolean);
    procedure atSendFormPostExecute(Sender: TObject; progress: integer);
    procedure atSendFormPreExecute(Sender: TObject; out startProgress: integer
      );
    procedure MainModuleJNIPrompt(Sender: TObject);
  private
    {kasih nama Pak Lebah saja hasil concatnya, ada ide?}
    PakLebah: string;
    function SendFormPakLebah(Progress: integer): boolean;
    {private declarations}
  public
    {public declarations}
  end;

var
  MainModule: TMainModule;

implementation
  
{$R *.lfm}
  

{ TMainModule }

procedure TMainModule.MainModuleJNIPrompt(Sender: TObject);
begin
  //jsToolbar1.AsActionBar:= True;  need be seted in design time !!! --> Object Inspector
  jsToolbar1.SetFitsSystemWindows(True);
  // Aku ga tahu ini apa, tapi warnanya jadi biru tua di HPku
  jsToolbar1.SetBackgroundToPrimaryColor();

  jsToolbar1.SetSubtitle('Pemeriksa Kata Baku');
  jsToolbar1.SetSubtitleTextColor(colbrWhite);
  tvHint.SetTextAsLink('Masukkan <i>kalimat</i> untuk <i>memeriksa kata</i>, kemudian klik tombol bulat warna hijau dibawah.');
  tvResult.SetTextAsLink('<b>Hasil periksa teks:</b>'
    +'<br><font color="green"><s>Faham</s></font><i>paham</i> adalah contoh kata yang tidak baku.'
    +'<br><font color="red"><u>Ngalam</u></font> adalah contoh kata yang tidak dikenal.'
    +'<br><br><b>Statistik:</b>'
    +'<br>- Ditemukan 14 kata dengan 9 kata unik.'
    +'<br>- <font color="red"><u>merah</u></font>: ada 1 kata tidak dikenal.'
    +'<br>- <font color="green"><s>hijau</s></font><i></i>: ada 1 kata tidak baku. '
  );
  //jTextView5
  btnSubmit.ImageIdentifier:= 'af_send_white_36dp';  //  res/drawable ...
  //Pas dipencet biar ganti warna
  btnSubmit.SetPressedRippleColor(colbrCyan);
end;

procedure TMainModule.btnSubmitClick(Sender: TObject);
begin
  if not atSendForm.Running then
   begin
     //ShowMessage('Execute ... ');
     atSendForm.Execute
   end
  else
     ShowMessage('Masih mengerjakan');
end;

function TMainModule.SendFormPakLebah(Progress: integer): boolean;
var
  {HTML yang hasil submit data formnya post}
  formRes: string;
  {buat parse HTML? https://forum.lazarus.freepascal.org/index.php?topic=35607.0}
  doc: thtmldocument;
  {tag yang match ditampung di sini}
  els: tdomnodelist;


  {everything can be happen}
  function DOMToText(fDOM: TDOMNode): string;
  var
    fHTMLStream: TStringStream;
  begin
    fHTMLStream := TStringStream.Create('');
    WriteHTML(fdom, fHTMLStream);
    result := fHTMLStream.DataString;
    fHTMLStream.Free;
  end;

begin
  Result:= True; //doing task ...
  PakLebah += '<b>Hasil periksa teks:</b><br>';

  {masukkan form data input_1="contoh kalimat"}
  httpLebah.AddNameValueData('input_1', etSentences.Text);
  {kirimkan ke web Pak Lebah}
  formRes := httpLebah.Post('https://pak.lebah.web.id/cekbaku.cgi');
  {parse HTML ke var 'doc'}
  readhtmlfile(doc,tstringstream.create(formRes));
  {cari tag namanya '<blockquote> ... </blockquote>}
  els := doc.GetElementsByTagName('blockquote');
  {kalau ada error bahaya}
  if els.Count > 0 then begin
    {ambil tag awal}
    PakLebah += DOMToText(els[0]);
  end;
  {cari tag namanya '<p> ... </p>}
  els := doc.GetElementsByTagName('p');
  if els.Count > 0 then begin
    {ambil tag ke 3 (alias index nomor 2)}
    PakLebah += DOMToText(els[2]);
  end;

  PakLebah := SysUtils.StringReplace(PakLebah, '<blockquote>', '', [rfReplaceAll]);
  PakLebah := SysUtils.StringReplace(PakLebah, '</blockquote>', '<br>', [rfReplaceAll]);


  Result:= False; //done ...
end;

procedure TMainModule.atSendFormDoInBackground(Sender: TObject;
  progress: integer; out keepInBackground: boolean);
begin
  keepInBackground := SendFormPakLebah(Progress);
end;


procedure TMainModule.atSendFormPostExecute(Sender: TObject; progress: integer
  );
begin
  {sematkan ke 'tvResult',
     pakai fungsi 'SetTextAsLink' supaya bisa ikut style HTML teksnya}
  tvResult.SetTextAsLink(PakLebah);
  dpProgress.Close;
  atSendForm.Done;
end;

procedure TMainModule.atSendFormPreExecute(Sender: TObject; out
  startProgress: integer);
begin
  PakLebah := '';
  dpProgress.Show();
end;

end.
