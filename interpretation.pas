unit interpretation;

interface

uses Pacient, SysUtils;

 function ShowPsiStatus(Pacient: THuman): string;

 function ShowVospr(Pacient: THuman): string;
 function ShowMishl(Pacient: THuman): string;
 function ShowIntellect(Pacient: THuman): string;
 function ShowEmotion(Pacient: THuman): string;
 function ShowVolya(Pacient: THuman): string;
 function ShowPobEffect(Pacient: THuman): string;

implementation
 function ShowPsiStatus(Pacient: THuman): string;
 begin
 result:=ShowVospr(Pacient)+ShowMishl(Pacient)+ShowVolya(Pacient)+ShowEmotion(Pacient)+ShowIntellect(Pacient)+ShowPobEffect(Pacient);
 end;

 function ShowVospr(Pacient: THuman): string;
 var
  hstesia, pstesia, spatia, illusion, thall, fhall, dreal, dperson: string;
 begin
    case Pacient.hyper_hypostesia_anestesia of
      -2000..-601: hstesia:='������� �� ��������� �� �����-���� ������������ ����������� ��������� �������. ';
      -600..-451: hstesia:='������� �� ��������� �� �����-���� ������������. ';
      -450..-251: hstesia:='������� ��������� ������ �� ���������� � ������� ������������. ';
      -250..-151: hstesia:='������� ��������� ������ �� ������� ���� � ����������. ';
      -150..-31: hstesia:='������� ������� � ���, ��� ��� ���� �����-�� �������, ����� �������������, ���� �� ����� ������� � ��� ������ ���-�� ����������. ';
      -30..30: hstesia:='';
      31..70: hstesia:='������� �������, ��� ���� ����������� ��-�� ����, ��� ������� ����� ����� �������� ������� � ��������. ';
      71..500: hstesia:='�������� �������, ��� ���� ���� ����� �����, ����� �������� � ��������� ������ ������ ������������. ';
    end;
    case Pacient.parestesia of
      -30..30: pstesia:='';
      31..70: pstesia:='������ �������� ���������� ����������� � �����������. ';
      71..500: pstesia:='�������� ����� ���������� ����������� ����������� � ����������. ';
    end;
    case Pacient.senestopatia of
      -30..30: spatia:='';
      31..50: spatia:='�������� �� ���������� �������� � ����, ������� �� ����� ����� �������. ';
      51..150: spatia:='�������� �� ����� ���������� �������� � ���������� �������� � ����, ������� �� ����� ����� ����������������. ';
    end;
    case Pacient.illusions of
      -30..30: illusion:='';
      31..50: illusion:='�������, ��� � ���� ����� ������ �������, ��� �� �������� ��������� �������, �� ���-�� ��� �������� �� �����. ';
      51..70: illusion:='�������, ��� � ���������� ������� ������ �����-�� ���� �������������� ��� ������� � �����-�� ����� �������, ��� � ���� ���-�� ����. ';
      71..500: illusion:='C ���������� ������������ �����, ������� ��� �� ����� ������� ��������, ������������ � �����-�� ���� � ������. ';
    end;
    case Pacient.hallutination_true of
      -30..30: thall:='';
      31..70: thall:='������������ �� ��������, ������� � ������������ ��� ���� ������ ���, �� �� ��� ���� ����������� �� ���-�� ������. ';
      71..500: thall:='�����������, ������� ����-�� � �������, � ���-�� �������������, �������� � �������� ���. ';
    end;
    case Pacient.hallutination_false of
      -30..30: fhall:='';
      31..70: fhall:='�� ����� ������ ������� ������������ ����������� � ��������� ������� �����, ��� ���� �����, ��� �� � ����-�� �������������� � ����������� � ��� ����������� �����������. ';
      71..500: fhall:='������� ���, ��� ������ � ������ ���-�� ���� � ����� ���������� ������ ���� �� ���� ��������� �����-�� �����������. ';
    end;
    case Pacient.derealisacia of
      -30..30: dreal:='';
      31..70: dreal:='�������, ��� ��� ���-�� ���������, ���� �����, ����� � ����� �������� ��������. ';
      71..500: dreal:='�������, ��� ��� ���������, ���� �����-�� �������������. � ��� ��� �����, �� ��� ������ ��������, ������� ������ �������� ��� ��������. ';
    end;
    case Pacient.depersonalisacia of
      -30..30: dperson:='';
      31..70: dperson:='�������, ��� ��� �������, ��� �� ���� �����-�� ������. ';
      71..500: dperson:='������, ��� ���� �����-�� ������ - ������������� ��� �����. ';
    end;
    result:=hstesia+pstesia+spatia+illusion+thall+fhall+dreal+dperson;
 end;

 function ShowMishl(Pacient: THuman): string;
 var
 hmenzia, bsvaz, rigidnost, obstoyat, paralogichnost, obsesion_compulsion, sverhcenniost, bred_sistema, avtomatizm: string;
 tema_idei: string;
 begin

    case Pacient.hyper_hypomentzia of
      -300..-151: hmenzia:='��� ������������� ���������� �������, ������ ���� ����������� �����. ';
      -150..-101: hmenzia:='�������� �� ������� ����������. �������, ����� �������� �����, ������ ����� ��������� ��������� ���. ';
      -100..-71: hmenzia:='�������� � �������������. �� ������� �������� ������� � �� �����. ';
      -70..-41: hmenzia:='��������, �� ����� �������� �� �������. ';
      -40..40: hmenzia:='';
      41..70: hmenzia:='������ �������� � ������. ';
      71..150: hmenzia:='����������, �������� �� ������� �� �������� �� �� �����, ��������� ���������� �����. ';
      151..250: hmenzia:='������ ����������, ������� ������ � ������. ���� ��������� � �������. ';
      251..500: hmenzia:='������ ����������, ������ �� �������, ����� ������ ������� �� �������� ������������ �� ����� ����� � �����������, ������. ';
    end;
    case Pacient.bessvaznost of
      -30..30: bsvaz:='';
      31..70: bsvaz:='������ �� ����� ����� �������������� ���� ����� � ��������� ������ �����. ';
      71..150: bsvaz:='����������� ���������� ������������� �����, ����� � �����������. ';
      151..500: bsvaz:='';
    end;
      case Pacient.rigidnost of
        -500..-71: rigidnost:='�� ����� ��������� ��������������� �� ��������� ��������� ������ ������������� � ����� ���� �� ������. ';
        -70..-41: rigidnost:='������������ ����������� � ������������� � ����� ���� �� ������. ';
        -40..40: rigidnost:='';
        41..50: rigidnost:='� ������ ������������� � ����� ���� ��������� �� ������. ';
        51..70: begin
        if Pacient.eiforia_disforia>70 then
        rigidnost:='�� ����� ������������� � ����� ���� ������ �� ������, ����������� ��-�� ����, ��� ���� ��� ���������� � �� ����� ���������. '
        else rigidnost:='�� ����� ������������� � ����� ���� ������ �� ������. ';
        end;
        71..150: rigidnost:='�� ����� ��������������� �� ���������� ��������. ';
        151..500: rigidnost:='';
      end;
    if Pacient.hyper_hypomentzia>-30 then begin
      case Pacient.obstoyatelnost of
        -30..30: obstoyat:='';
        31..50:  obstoyat:='�������� �������� ������. ';
        51..70:  if Pacient.vozbugdenie_stupor>-70 then obstoyat:='�������� �� ���� ������� �������� ������, ������������� �� �������������� �������. ';
        71..100: if Pacient.vozbugdenie_stupor>-70 then obstoyat:='����� �������� �� ���� ������� �������� ������, ������������� �� �������������� �������. ';
      end;
    end;
    case Pacient.paralogichnost of
      -30..30: paralogichnost:='';
      31..70: paralogichnost:='������������ ����������� ���� ������� �������� �� ������, ��������� ��������� ���������� ��������������, ������� ������� ���������������. ';
      71..500: paralogichnost:='����������� ������������ ����, ������� ����� �� ��������� ����������� ����������. ';
    end;
    case Pacient.obsesion_compulsion of
      -30..30: obsesion_compulsion:='';
      31..50: obsesion_compulsion:='�������, ��� ������ ��������� ������ ����� � �������. ';
      51..70: obsesion_compulsion:='�������, ��� ������������ ��������� ������ ����� � �������, � �������� ���������� ��������, ����� �� �� ��������� � �����. ';
      71..500: obsesion_compulsion:='�������, ��� ��������� ��� ������ ������ ����� � �������, � �������� ����� ������ ��������. ';
// ������� � �������� ��������?
    end;
    case Pacient.sverhcenniost of
      -500..-31: sverhcenniost:='';
//      -150..-71: sverhcenniost:='�������� ������ ��� �����, ������ � ���, ��� ��� ������. ';
//      -70..-31: sverhcenniost:='������� ���������� ����� �������, �������, ��� ����� �� ��� ����������. ';
      -30..30: sverhcenniost:='';
      31..70: sverhcenniost:='������� ���� ���� ������� � �������� ����������� � ���, ��� �� ����� ���� �� ����. ';
      71..500: sverhcenniost:='������� ������� ����� ����� � ��������� ������� � ���, ��� ��� �����. ';
    end;
    case Pacient.bred_sistema of
      -500..-31: bred_sistema:='';
 //     -150..-71: bred_sistema:='����������� � ����� ������������, �� ����� ��������� ������ ������ � ����� �������. ';
 //     -70..-31: bred_sistema:='����� �� ����� ����������� ��������� ������ � ���� ��������� ����� ����. ';
      -30..30: bred_sistema:='';
      31..70: bred_sistema:='����������� � ����� ������, ��������� ��������� �� ���-�� ���������. ';
      71..500: bred_sistema:='������� �������� �������� ���� ����, ������� ��������� ������������� ����� ������. ';
    end;
    case Pacient.avtomatizm of
      -30..30: avtomatizm:='';
      31..50: avtomatizm:='�������, ��� ������ ��������� ���������� ����� ��� ����� ������. ';
      51..70: avtomatizm:='�������, ��� ������ ��������� ����� �����, ���-����� ���-�� ���������� �� � ������. ';
      71..150: avtomatizm:='�������, ��� ��� � ������ ���-�� ���������� ����� �����, �������� ��������� ��� ����������. ';
      151..500: avtomatizm:='�������, ��� ��� � ������ ���-�� ���������� ����� �����, ������� ������, ������� ������ � ��������� ����������. ';
    end;
    tema_idei:='';
//    if (Pacient.hyper_hypotimia<-70) and (Pacient.hyper_hypotimia>-150)  then
//    tema_idei:=tema_idei+'������ � ���, ��� � ����� � ���� ��� ����� � ��� ��� �� ������ �� ���� �� ������������. ';
    if Pacient.hyper_hypotimia>70 then
    tema_idei:=tema_idei+'������, ��� �� ����� ��������� �������, ������� ����� ���������� ����� ��������� ���������. ';
    if (Pacient.hyperpatia_apatia<-100) and (Pacient.hyperpatia_apatia>-150)
      and (Pacient.vozbugdenie_stupor>-70) and (Pacient.hyper_hypotimia<-70) then
    tema_idei:=tema_idei+'�������, ��� ��� � ����� ������-�� ������, �.�. �� ����� ���� ������ �� ����� ��������. ';
//    if Pacient.obsesion_compulsion>50 then
//    tema_idei:=tema_idei+'';
//    if Pacient.trevoga_spocoistvie>50 then
//    tema_idei:=tema_idei+'';
//    if Pacient.senestopatia>50 then
//    tema_idei:=tema_idei+'';
//    if Pacient.avtomatizm>50 then
//    tema_idei:=tema_idei+'';

    //�������������
//    if (Pacient.bred_sistema>50) and (Pacient.sverhcenniost>50) then
//    tema_idei:=tema_idei+'';
    //�������������
    if (Pacient.bred_sistema>70) and (Pacient.trevoga_spocoistvie>70) then
    tema_idei:=tema_idei+'�������, ��� �� ��� ������ �����-�� ����. ������������, ��� ��� ��� ����� �����. ';
//    if (Pacient.hallutination_true>50) and (Pacient.trevoga_spocoistvie>50) then
//    tema_idei:=tema_idei+'';

    //��������������-�����������
//    if (Pacient.hallutination_false>50) and (Pacient.bred_sistema<-50) and (Pacient.sverhcenniost>50) then
//    tema_idei:=tema_idei+'';
{

    self.rezonerstvo:=0;
    self.mentizm:=0;
    self.shperrung:=0;

    tema_idei: string;        // ���������� ����
}

 result:=hmenzia+bsvaz+rigidnost+obstoyat+paralogichnost+obsesion_compulsion+avtomatizm+tema_idei+bred_sistema+sverhcenniost;

 end;

 function ShowIntellect(Pacient: THuman): string;
 var
 hyper_hypomnesia, intellect, amnesia_fiks, pseudoreminiscencii, confabulacii: string;
 begin
  if Pacient.vozbugdenie_stupor>-150 then begin
    case Pacient.hyper_hypomnesia of
      -500..-151: hyper_hypomnesia:='�� ������ ������� ��������� ��������, �� ������ ���������� ��������� �������� �� ������. ';
      -150..-71: hyper_hypomnesia:='������� ����������� ����� �� ��������� ������, ������� ��� ���� �������� ������� ��������� ��������. ';
      -70..-31: hyper_hypomnesia:='�������� ������������. �������, ��� ���� ���� ���������� ����� ��������. ';
      -30..80: hyper_hypomnesia:='';
      81..120: hyper_hypomnesia:='�������� ������� ������ � �������� ������������� ������������. ';
      121..500: hyper_hypomnesia:='������� ����� ���������� �����, �����, ������ ������������ � ����� �����. ';
    end;
    case Pacient.amnesia_fiks of
      -500..-71: amnesia_fiks:='';
      -70..-31: amnesia_fiks:='';
      -30..30: amnesia_fiks:='';
      31..70: amnesia_fiks:='�� ����� ����� ��������� ����������, ������� ������������ ������ ���� � �� �� �������. ';
      71..500: amnesia_fiks:='������� ����������� ����� �������� �� � ��� ���������, ������� ����� ��������� ����� ����� ��������� ���� � ��� �� ������. ';
    end;

    case Pacient.pseudoreminiscencii of
      -500..-71: pseudoreminiscencii:='';
      -70..-31: pseudoreminiscencii:='';
      -30..30: pseudoreminiscencii:='';
      31..70: pseudoreminiscencii:='������ � ����� ����� ������� ������ ������ ���������� �������. ';
      71..500: pseudoreminiscencii:='������� ��������� ������ ������������������ �������. ��������� ��� ����� ���� �� �������, ������� ���������� ���� ������ � ������ �����. ';
    end;

    case Pacient.confabulacii of
      -500..-71: confabulacii:='';
      -70..-31: confabulacii:='';
      -30..30: confabulacii:='';
      31..70: confabulacii:='����������� � ����� �����, ������ ������� � ��������, ������� �� ����� ���� �� ����. ';
      71..500: confabulacii:='��������� ������������ �� ������������ �������� �� ��� �����, ������� ���������� �� ����. ';
    end;
  end;
 //   intellect:='IQ = '+IntToStr(Pacient.intellect)+'. ';

 {
    self.amnesia_retro:=0;
    self.amnesia_antero:=0;
    self.amnesia_congrad:=0;
    self.cryptomnesii:=0;
 }
 /////////////////////////////////////////////////
 result:= hyper_hypomnesia+amnesia_fiks+pseudoreminiscencii+confabulacii;
 ////////////////////////////////////////////////
 end;
 function ShowEmotion(Pacient: THuman): string;
 var
 hyper_hypotimia, hyperpatia_apatia, trevoga_spocoistvie, eiforia_disforia, emotion_labilnost: string;
 emo_uploshenie: string;
 begin
    if Pacient.vozbugdenie_stupor>-150 then begin
      case Pacient.hyper_hypotimia of
         -350..-251: hyper_hypotimia:='�� ���� ����� � ������������ ���������� ������� �������� ������������ �������. ';
        -250..-151: hyper_hypotimia:='���������� ������ �� ���������� ������ ���������� � ������� ��������� ����� �������������. ';
        -150..-71: hyper_hypotimia:='���������� ������ �� ������ ����������, ������� �����, ������������� � ����� � ������������. ';
        -70..-51: hyper_hypotimia:='����������� ������ �� ������ ���������� � ������������ ����������� ����� � ������������. ';
        -50..-31: hyper_hypotimia:='����������� ������ �� ��������� ����������. ';
        -30..50: hyper_hypotimia:='';
        51..100: hyper_hypotimia:='������� ����, ����� � �������������, �������, ��� ��������� ���� ������. ';
        101..500: hyper_hypotimia:='������� ����-�� ����� ��������, �������, ���� ���������, �����, ������ � ����. �������, ��� ��������� ���� �����������. ';
      end;
    case Pacient.hyperpatia_apatia of
      -500..-71: hyperpatia_apatia:='�������, ��� ����� ��������, �� ����� ���-���� ������. ';
      -70..-51: hyperpatia_apatia:='�������� ����� ��������, ������ ���. ';
      -50..-31: hyperpatia_apatia:='������� ��� ����� � ����� ���������. ';
      -30..50: hyperpatia_apatia:='';
      51..90: hyperpatia_apatia:='�������� ������ ��� � �������. ';       {}
      91..150: hyperpatia_apatia:='�������� ������������ � ��������������. ';
      151..500: hyperpatia_apatia:='����� �������� ������������ � ��������������. '; {}
    end;
    case Pacient.trevoga_spocoistvie of
      -350..-201: trevoga_spocoistvie:='�������� �������� ������� ������� ������������� � �����������. ';
      -200..-101: trevoga_spocoistvie:='�������� �������� ������� �������������, ����������� � ������������. ';
      -100..-31: trevoga_spocoistvie:='�������� �������� ������� ����������� � ������������. ';
      -30..30: trevoga_spocoistvie:='';
      31..70: trevoga_spocoistvie:='������������ ���������� ������� �������. ';
      71..500: begin
      if Pacient.hyper_hypotimia<-50 then
      trevoga_spocoistvie:='�������� ���������� ������������. �������, ��� ���� ����������� �����-�� ����, ��� ���-�� ������ ������ ���������. '
      else
      trevoga_spocoistvie:='�������� ���������� ������������. ';
      end;
    end;
    case Pacient.eiforia_disforia of
      -500..-71: eiforia_disforia:='';
      -70..-31: eiforia_disforia:='������� ���������� � ����������. ';
      -30..30: eiforia_disforia:='';
      31..70: eiforia_disforia:='��������� ��������� �������� � �������� ���������� � �������. ';
      71..500: eiforia_disforia:='�� ��������������� ������ ����� ������������ � �������� �����. ';
    end;
    case Pacient.emotion_labilnost of
      -500..-71: emotion_labilnost:='';
      -70..-31: emotion_labilnost:='';
      -30..30: emotion_labilnost:='';
      31..70: if Pacient.hyper_hypotimia>-70 then emotion_labilnost:='� ����������� �� ���� ��������� ������ �������� �� �������, �� ���������. ';
      71..500: if Pacient.hyper_hypotimia>-50 then emotion_labilnost:='� ������ �� ��������� ������ ������, �� ����� ��������� ����� ��� ���������. ';
    end;
    case Pacient.emo_uploshenie of
      -500..-71: emo_uploshenie:='';
      -70..-31: emo_uploshenie:='';
      -30..30: emo_uploshenie:='';
      31..70: emo_uploshenie:='';
      71..500: emo_uploshenie:='';
    end;
    end;
{
    self.ammbivalentnost:=0;
    self.anestezia_psihica:=0;
}
 result:=hyper_hypotimia+hyperpatia_apatia+trevoga_spocoistvie+eiforia_disforia+emotion_labilnost+emo_uploshenie;

 end;
 function ShowVolya(Pacient: THuman): string;
 var
 hyper_hypobulia, vozbugdenie_stupor: string;
 begin
 if Pacient.vozbugdenie_stupor>-150 then begin
    case Pacient.hyper_hypobulia of
      -500..-151: hyper_hypobulia:='';
      -150..-71: hyper_hypobulia:='�������� ���������� �������� �������� � �����, ��������� ���-���� ������. ';
      -70..-51: hyper_hypobulia:='�������� ����� � ����. ';
      -50..-31: hyper_hypobulia:='�������� �������� �������� � ������������ �����. ';
      -30..30: hyper_hypobulia:='';
      31..50: hyper_hypobulia:='�������� ���������� ������ � ������� �������� ������-�� ������ ������. ';
      51..70: hyper_hypobulia:='�������� ������ ��� � �������, ���� ����� ������ � ���. ';
      71..500: hyper_hypobulia:='�������� ���������� ������ ���, ������������� ������� � ��� ����� � ������������ �����. ';
    end;
 end;
     case Pacient.vozbugdenie_stupor of
     -600..-301: vozbugdenie_stupor:='��������� ����. ';
     -300..-151: vozbugdenie_stupor:='��������������� ��� ���� ������� �����. ';
      -150..-71: vozbugdenie_stupor:='����������, ������. ';
      -70..-31: vozbugdenie_stupor:='����������, ���. ';
      -30..30: vozbugdenie_stupor:='';
      31..50: vozbugdenie_stupor:='���������� � �������. ';
      51..70: vozbugdenie_stupor:='�� ����� ����� ������� �� �����, ������� �������������. ';
      71..500: vozbugdenie_stupor:='������ �������, ��������� ���������, ����������� ������. ';
    end;

{
    self.katatonia:=false;
    self.hyper_oglushenie_sopor_coma:=0;
}

 result:= hyper_hypobulia+vozbugdenie_stupor;
 end;


  function ShowPobEffect(Pacient: THuman): string;
  var
  mx_effect, ad_effect, sex_effect, park_effect, hykinez_effect, dykinez_effect: string;
  begin
   {
  parkinson: real;
  hyperkinez: real;
  dyskinez: real;
  adrenolit: real;
  holinolit: real;
  endo: real;
  sexi: real;
  }
 if Pacient.vozbugdenie_stupor>-150 then begin
  case Round(Pacient.parkinson) of
    0..5: park_effect:='';
    6..10: park_effect:='����������� ������ ����� �����������, �������� ������. ';
    11..20: park_effect:='����������� ��������� ����� �����������, �������� � ������������� ���������� � �������� ����������, �������������� � ����������. ';
    21..50: park_effect:='����������� ���������� ����� ����������� � ������������� ��������, �������� ������, ���������� ��������������, ���������� � �������. ';
  end;
  case Round(Pacient.hyperkinez) of
    0..5: hykinez_effect:='';
    6..10: hykinez_effect:='����������� ������ ������. ';
    11..20: hykinez_effect:='����������� ��������� ������ � ������������ ���������. ';
    21..50: hykinez_effect:='����������� ���������� ������ � ���������. ';
  end;  
  case Round(Pacient.dyskinez) of
    0..5: dykinez_effect:='';
    6..10: dykinez_effect:='������ ��������� ����������� �����. ';
    11..20: dykinez_effect:='������������ ��������� ����������� ����� � ���������� ������. ';
    21..50: dykinez_effect:='����������� ������� ����������-�������� ���������� ������ � ����� ����������������� �����������. ';
  end;
  
  case Round(Pacient.holinolit) of
    0..5: mx_effect:='';
    6..10: mx_effect:='�������� ������� �� ���, �������� ����� � ����������. ';
    11..20: mx_effect:='�������� ���������� ������� �� ���, �������� �������������� � �����, ��������� �������������. ����������� ����� ����������� � ��������� �������������� ��������. ';
    21..50: mx_effect:='����������� �������� ��������������, ���������� ����������, ����������, ����� �����������, ��������� �������������� ��������, ����������� ��������, ��������������, ������� � ������������. ';
  end;
  case Round(Pacient.adrenolit) of
    0..5: ad_effect:='';
    6..10: ad_effect:='�������� ������ �������������� ��� ������ ���������. ';
    11..20: ad_effect:='�������� �������������� � ����� ��������. ';
    21..50: ad_effect:='����������� ���������� ������� ������������� ��������, �������� � ��������������. ';
  end;

  case Round(Pacient.sexi) of
    0..5: sex_effect:='';
    6..10: sex_effect:='�������� �������������� ����������� ����������. ';
    11..20: sex_effect:='�������� ����� ����������� ������������. ';
    21..50: sex_effect:='����������� ���������� ��������� ����������� �������. ';
  end;

 end;
  result:=park_effect+hykinez_effect+dykinez_effect+mx_effect+ad_effect+sex_effect;
  end;

{


�� ������� ������� ������� � ������� ������: �������� ����, ��������������, �������, ���������� ������������, ��������, �����������������, ����������, ��������, ��������� ����������, ������������ �����������, ������, ����������, �������������� ����������, ��������� �� ���, ��������� ������������ ��������, ���������, ����������� ��������, ������������, ��� � ����.

�� ������� ��������-���������� �������: ����������, ��������������� ����������, �������, ����������� ��, ���������� ��������� QRS �� ��� (��������� ������������������ ������������), �������� ��������� ���������������, �������, ��������� ������� �����, � �.�. �������������, ����������, �����������, ���������������, �������.

�� ������� ������� ���: �������, �����, ������, ���������, �������� ����������� � ����������, ����������, ��������� ���������� ���������� �����������, ��������, ��������� �����, ���������� �����.

�� ������� ������ �������: ����������, ��������� �������� ���; ����� � ����- ��� �������������, ��������� ������������� � �������.

�� ������� ����������� �������: ��������� ������, ��������, ���� �����, ����������, �����������.

������������� �������: ������ ����, ���, ������������������ ����, ����������.

������: ���������� �������� �������� ����� � ������ � ������, ��������� �����, ���������� ������������� �����, ������������������, ��������� ����� ���� (��� ���������� ����������), ������� ������: �������� ����, �������, �����, ������, �����������������, ��������� ��� � ������, ���������� ������������, ���������� ������������ (����� ����������� �������, �������� � ������� �����, ��� ������ ����������� ������ ���������).
}

end.
