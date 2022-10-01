unit Pacient;

interface
uses
  SysUtils, diseases, drug;

type
  THuman = class(TObject)
    name: string;
    age: integer;
    sex: boolean;
  //����� �������
    //����������
    hyper_hypostesia_anestesia: integer;

    parestesia: integer;
    senestopatia: integer;

    illusions: integer;
    hallutination_true: integer;
    hallutination_false: integer;

    derealisacia: integer;
    depersonalisacia: integer;

    // ��������
    hyper_hypomentzia: integer;
    bessvaznost: integer;

    rigidnost: integer;
    obstoyatelnost: integer;

    paralogichnost: integer;
    rezonerstvo: integer;

    mentizm: integer;
    shperrung: integer;

    obsesion_compulsion: integer;
    sverhcenniost: integer;     // ��������� � �����
    bred_sistema: integer;     // ������� �������������� ���� (�����)
    tema_idei: string;        // ���������� ����
    // ��� ��������
    avtomatizm: integer;

    // ������ � ���������
    hyper_hypomnesia: integer;

    amnesia_retro: integer;
    amnesia_antero: integer;
    amnesia_congrad: integer;

    amnesia_fiks: integer;

    pseudoreminiscencii: integer;
    confabulacii: integer;
    cryptomnesii: integer;

    intellect: integer;

    // ������
    hyper_hypotimia: integer;
    hyperpatia_apatia: integer;

    trevoga_spocoistvie: integer;

    emo_uploshenie: integer;

    eiforia_disforia: integer;

    emotion_labilnost: integer;

    ammbivalentnost: integer;

    anestezia_psihica: integer;


    // ���� � ����������
    hyper_hypobulia: integer;
    vozbugdenie_stupor: integer;

    katatonia: boolean;
    // �������� - �������� ��������!
    hyper_oglushenie_sopor_coma: integer;

    // �������� ?!
    rigidnost_labilnost: integer;
    hypertymia_hypotymia: integer;
    agress_trevoga: integer;
    original_poryadok: integer;
    introvert_extravert: integer;
    zrelost_infantilnost: integer;

    {   ��
    ���?
    ��������� ��� ����������
    ������������ ����
    �������� ������� �� ��������
    �������������� � ����� ���������� ��������

    ����������������� �������
    ����������������� ��������� �����������
    ���������� ���������
    }

      /////////////////
      parkinson: real;
      hyperkinez: real;
      dyskinez: real;
      adrenolit: real;
      holinolit: real;
      endo: real;
      sexi: real;
      /////////////////

    //procedure ShowPsiStasus;
    procedure GetName;
    procedure GetPsiStatus;
    procedure GetLicnost;
    procedure SindromToPerson(sindrom: TSindrom);
    procedure DrugToPerson(drug: TDrug);
    procedure HaracterToPerson;
    procedure CopyPerson(man: THuman);
    function ShowPerson: string;
    function ShowLicnost: string;
    function GetPerson: string;


  end;

  const
    UM_VIR: string ='�������������� ';
    DO_VIR: string ='��������� ';
    VV_VIR: string ='���������� ';

implementation
uses Unit1;

  function interpreracia1 (x: integer; s: string): string;
     // �������� +-50 = �����, 50-65 ������� ��������, 65-85 �����������, >85 ���� ��������
    var
      s1: string;
    begin
      if x<=50 then
        s1:='';
      if (x>50) and (x<65) then
        s1:=UM_VIR+s;
      if (x>=65) and (x<85) then
        s1:=DO_VIR+s;
      if x>=85 then
        s1:=VV_VIR+s;
      result:=s1;
    end;

  function interpreracia2 (y: integer; s: string): string;
     // �������� +-50 = �����, 50-65 ������� ��������, 65-85 �����������, >85 ���� ��������
    var
      s2: string;
    begin
      if y>=-50 then
        s2:='';
      if (y<-50) and (y>-65) then
        s2:=UM_VIR+s;
      if (y<=-65) and (y>-85) then
        s2:=DO_VIR+s;
      if y<=-85 then
        s2:=VV_VIR+s;
      result:=s2;
    end;


  procedure THuman.GetLicnost;
  begin
    self.rigidnost_labilnost:=random(200)-100;
    self.hypertymia_hypotymia:=random(200)-100;
    self.agress_trevoga:=random(200)-100;
    self.original_poryadok:=random(200)-100;
//    self.introvert_extravert:=random(200)-100;
//    self.zrelost_infantilnost:=random(200)-100;
  end;

  function THuman.ShowLicnost;
  var
    re, rg, lab, hr, hy, agr, trev, orig, poryad, ivent, extrvent, infantil: string;
    i: integer;
  begin
    rg:=interpreracia1(self.rigidnost_labilnost, '����������; ');
    lab:=interpreracia2(self.rigidnost_labilnost, '������������� �����������; ');
    hr:=interpreracia1(self.hypertymia_hypotymia, '����������; ');
    hy:=interpreracia2(self.hypertymia_hypotymia, '���������; ');
    agr:=interpreracia1(self.agress_trevoga, '��������������; ');
    trev:=interpreracia2(self.agress_trevoga, '�����������; ');
    orig:=interpreracia1(self.original_poryadok, '��������������; ');
    poryad:=interpreracia2(self.original_poryadok, '�������������; ');
//    ivent:=interpreracia1(self.introvert_extravert, '�����������; ');
//    extrvent:=interpreracia2(self.introvert_extravert, '������������; ');
//    infantil:=interpreracia2(self.zrelost_infantilnost, '��������������; ');
    if (rg='') and (lab='') and (hr='') and (hy='') and (agr='') and (trev='') and (orig='') and (poryad='') then
    result:='� ��������� �� ����������� ����-���� ������������.' else begin
    re:='� ������� �����������: '+rg+lab+hr+hy+agr+trev+orig+poryad;
    i:=Length(re);
    i:=i-1;
    re[i]:='.';
    result:=re;
    end;
  end;

  procedure THuman.GetPsiStatus;
  begin
    self.hyper_hypostesia_anestesia:=0;
    self.parestesia:=0;
    self.senestopatia:=0;
    self.illusions:=0;
    self.hallutination_true:=0;
    self.hallutination_false:=0;
    self.derealisacia:=0;
    self.depersonalisacia:=0;
    // ��������
    self.hyper_hypomentzia:=0;
    self.bessvaznost:=0;
    self.rigidnost:=0;
    self.obstoyatelnost:=0;
    self.paralogichnost:=0;
    self.rezonerstvo:=0;
    self.mentizm:=0;
    self.shperrung:=0;
    self.obsesion_compulsion:=0;
    self.sverhcenniost:=0;
    self.bred_sistema:=0;
    self.tema_idei:='';
    self.avtomatizm:=0;
    // ������ � ���������
    self.hyper_hypomnesia:=0;
    self.amnesia_retro:=0;
    self.amnesia_antero:=0;
    self.amnesia_congrad:=0;
    self.amnesia_fiks:=0;
    self.pseudoreminiscencii:=0;
    self.confabulacii:=0;
    self.cryptomnesii:=0;
    self.intellect:=100;
    // ������
    self.hyper_hypotimia:=0;
    self.hyperpatia_apatia:=0;
    self.trevoga_spocoistvie:=0;
    self.emo_uploshenie:=0;
    self.eiforia_disforia:=0;
    self.emotion_labilnost:=0;
    self.ammbivalentnost:=0;
    self.anestezia_psihica:=0;
    // ���� � ����������
    self.hyper_hypobulia:=0;
    self.vozbugdenie_stupor:=0;
    self.katatonia:=false;
    // �������� - �������� ��������!
    self.hyper_oglushenie_sopor_coma:=0;

    self.parkinson:=0;
    self.hyperkinez:=0;
    self.dyskinez:=0;
    self.adrenolit:=0;
    self.holinolit:=0;
    self.endo:=0;
    self.sexi:=0;
  end;

  procedure THuman.GetName;
  var
    p_names: array[0..20] of char;
    s: char;
    i: integer;
  begin
    s:= '�';
    for i := 0 to 20 - 1 do begin
      p_names[i]:=s;
      Inc(s);
    end;
    s:=p_names[random(18)+1];
    self.age:=random(65)+18;
    self.name:=s;
//    i:=random(10)+1;
//    if i >= 5 then
    self.sex:=true
//    else
//    self.sex:=false;
  end;


  function GetLet(age: integer): string;
  begin
    if (age = 1) or (age = 21) or (age = 31) or (age = 41) or (age = 51) or (age = 61) or (age = 71) or (age = 81) or (age = 91) then
    result:=' ���.'
    else if (age = 2) or (age = 3) or (age = 4) or (age = 22) or (age = 23) or (age = 24) then
    result:=' ����.'
    else if (age = 32) or (age = 33) or (age = 34) or (age = 42) or (age = 43) or (age = 44) then
    result:=' ����.'
    else if (age = 52) or (age = 53) or (age = 54) or (age = 62) or (age = 63) or (age = 64) then
    result:=' ����.'
    else if (age = 72) or (age = 73) or (age = 74) or (age = 82) or (age = 83) or (age = 84) or (age = 92) or (age = 93) or (age = 94) then
    result:=' ����.'
    else
    result:=' ���.';
  end;

  function THuman.ShowPerson(): string;
  var
    let: string;
  begin
    let:=GetLet(self.age);
    if self.sex = true then
    result:= '������� '+self.name+'. '+IntToStr(self.age)+let else
    result:= '��������� '+self.name+'. '+IntToStr(self.age)+let;
  end;

  function THuman.GetPerson(): string;
  begin
    self.GetName;
    self.GetPsiStatus;
    result:=ShowPerson;
  end;

  procedure THuman.SindromToPerson(sindrom: TSindrom);
  var
  cor_age:integer;
  begin
    self.hyper_hypostesia_anestesia:=self.hyper_hypostesia_anestesia+sindrom.hyper_hypostesia_anestesia;
    self.parestesia:=self.parestesia+sindrom.parestesia;
    self.senestopatia:=self.senestopatia+sindrom.senestopatia;
    self.illusions:=self.illusions+sindrom.illusions;
    self.hallutination_true:=self.hallutination_true+sindrom.hallutination_true;
    self.hallutination_false:=self.hallutination_false+sindrom.hallutination_false;
    self.derealisacia:=self.derealisacia+sindrom.derealisacia;
    self.depersonalisacia:=self.depersonalisacia+sindrom.depersonalisacia;
    // ��������
    self.hyper_hypomentzia:=self.hyper_hypomentzia+sindrom.hyper_hypomentzia;
    self.bessvaznost:=self.bessvaznost+sindrom.bessvaznost;
    self.rigidnost:=self.rigidnost+sindrom.rigidnost;
    self.obstoyatelnost:=self.obstoyatelnost+sindrom.obstoyatelnost;
    self.paralogichnost:=self.paralogichnost+sindrom.paralogichnost;
    self.rezonerstvo:=self.rezonerstvo+sindrom.rezonerstvo;
    self.mentizm:=self.mentizm+sindrom.mentizm;
    self.shperrung:=self.shperrung+sindrom.shperrung;
    self.obsesion_compulsion:=self.obsesion_compulsion+sindrom.obsesion_compulsion;
    self.sverhcenniost:=self.sverhcenniost+sindrom.sverhcenniost;
    self.bred_sistema:=self.bred_sistema+sindrom.bred_sistema;
    self.tema_idei:=self.tema_idei+sindrom.tema_idei;
    self.avtomatizm:=self.avtomatizm+sindrom.avtomatizm;
    // ������ � ���������
    self.hyper_hypomnesia:=self.hyper_hypomnesia+sindrom.hyper_hypomnesia;
    self.amnesia_retro:=self.amnesia_retro+sindrom.amnesia_retro;
    self.amnesia_antero:=self.amnesia_antero+sindrom.amnesia_antero;
    self.amnesia_congrad:=self.amnesia_congrad+sindrom.amnesia_congrad;
    self.amnesia_fiks:=self.amnesia_fiks+sindrom.amnesia_fiks;
    self.pseudoreminiscencii:=self.pseudoreminiscencii+sindrom.pseudoreminiscencii;
    self.confabulacii:=self.confabulacii+sindrom.confabulacii;
    self.cryptomnesii:=self.cryptomnesii+sindrom.cryptomnesii;
    self.intellect:=self.intellect+sindrom.intellect;
///////////////////////////////////////////////////////////////////////////////////
    // ��������� �� ������� ��������  !!!!!!!!!!!! �������
    cor_age:=self.age*0;
    self.hyper_hypomentzia:=self.hyper_hypomentzia+cor_age;
    self.hyper_hypomnesia:=self.hyper_hypomnesia-cor_age;
    self.rigidnost:=self.rigidnost-cor_age;
    self.obstoyatelnost:=self.obstoyatelnost-cor_age;
///////////////////////////////////////////////////////////////////////////////////

    // ������
    self.hyper_hypotimia:=self.hyper_hypotimia+sindrom.hyper_hypotimia;
    self.hyperpatia_apatia:=self.hyperpatia_apatia+sindrom.hyperpatia_apatia;
    self.trevoga_spocoistvie:=self.trevoga_spocoistvie+sindrom.trevoga_spocoistvie;
    self.emo_uploshenie:=self.emo_uploshenie+sindrom.emo_uploshenie;
    self.eiforia_disforia:=self.eiforia_disforia+sindrom.eiforia_disforia;
    self.emotion_labilnost:=self.emotion_labilnost+sindrom.emotion_labilnost;
    self.ammbivalentnost:=self.ammbivalentnost+sindrom.ammbivalentnost;
    self.anestezia_psihica:=self.anestezia_psihica+sindrom.anestezia_psihica;
    // ���� � ����������
    self.hyper_hypobulia:=self.hyper_hypobulia+sindrom.hyper_hypobulia;
    self.vozbugdenie_stupor:=self.vozbugdenie_stupor+sindrom.vozbugdenie_stupor;

    self.parkinson:=self.parkinson+sindrom.parkinson;
    self.hyperkinez:=self.hyperkinez+sindrom.hyperkinez;
    self.dyskinez:=self.dyskinez+sindrom.dyskinez;
    self.adrenolit:=self.adrenolit+sindrom.adrenolit;
    self.holinolit:=self.holinolit+sindrom.holinolit;
    self.endo:=self.endo+sindrom.endo;
    self.sexi:=self.sexi+sindrom.sexi;


  end;

  procedure THuman.DrugToPerson(drug: TDrug);
  begin
    self.hyper_hypostesia_anestesia:=self.hyper_hypostesia_anestesia+drug.hyper_hypostesia_anestesia;
    self.parestesia:=self.parestesia+drug.parestesia;
    self.senestopatia:=self.senestopatia+drug.senestopatia;
    self.illusions:=self.illusions+drug.illusions;
    self.hallutination_true:=self.hallutination_true+drug.hallutination_true;
    self.hallutination_false:=self.hallutination_false+drug.hallutination_false;
    self.derealisacia:=self.derealisacia+drug.derealisacia;
    self.depersonalisacia:=self.depersonalisacia+drug.depersonalisacia;
    // ��������
    //if (drug.group='����������') and (self.hyper_hypomentzia<0) and (drug.name<>'����� ��������') then
    //self.hyper_hypomentzia:=self.hyper_hypomentzia-drug.hyper_hypomentzia else
    self.hyper_hypomentzia:=self.hyper_hypomentzia+drug.hyper_hypomentzia;

    self.bessvaznost:=self.bessvaznost+drug.bessvaznost;
    self.rigidnost:=self.rigidnost+drug.rigidnost;
    self.obstoyatelnost:=self.obstoyatelnost+drug.obstoyatelnost;
    self.paralogichnost:=self.paralogichnost+drug.paralogichnost;
    self.rezonerstvo:=self.rezonerstvo+drug.rezonerstvo;
    self.mentizm:=self.mentizm+drug.mentizm;
    self.shperrung:=self.shperrung+drug.shperrung;
    self.obsesion_compulsion:=self.obsesion_compulsion+drug.obsesion_compulsion;
    self.sverhcenniost:=self.sverhcenniost+drug.sverhcenniost;
    self.bred_sistema:=self.bred_sistema+drug.bred_sistema;
    self.tema_idei:=self.tema_idei+drug.tema_idei;
    self.avtomatizm:=self.avtomatizm+drug.avtomatizm;
    // ������
    //if (drug.group='����������') and (self.hyper_hypomnesia<0) and (drug.name<>'����� ��������') then
    //self.hyper_hypomnesia:=self.hyper_hypomnesia-drug.hyper_hypomnesia else
    self.hyper_hypomnesia:=self.hyper_hypomnesia+drug.hyper_hypomnesia;
    self.amnesia_retro:=self.amnesia_retro+drug.amnesia_retro;
    self.amnesia_antero:=self.amnesia_antero+drug.amnesia_antero;
    self.amnesia_congrad:=self.amnesia_congrad+drug.amnesia_congrad;
    self.amnesia_fiks:=self.amnesia_fiks+drug.amnesia_fiks;
    self.pseudoreminiscencii:=self.pseudoreminiscencii+drug.pseudoreminiscencii;
    self.confabulacii:=self.confabulacii+drug.confabulacii;
    self.cryptomnesii:=self.cryptomnesii+drug.cryptomnesii;
    self.intellect:=self.intellect+drug.intellect;
   // ������
    //if (drug.group='����������') and (self.hyper_hypotimia<0) and (drug.name<>'����� ��������') then
    //    self.hyper_hypotimia:=self.hyper_hypotimia-drug.hyper_hypotimia else
    self.hyper_hypotimia:=self.hyper_hypotimia+drug.hyper_hypotimia;
    //if (drug.group='����������') and (self.hyperpatia_apatia<0) and (drug.name<>'����� ��������') then
    //self.hyperpatia_apatia:=self.hyperpatia_apatia-drug.hyperpatia_apatia else
    self.hyperpatia_apatia:=self.hyperpatia_apatia+drug.hyperpatia_apatia;

    self.trevoga_spocoistvie:=self.trevoga_spocoistvie+drug.trevoga_spocoistvie;
    self.emo_uploshenie:=self.emo_uploshenie+drug.emo_uploshenie;
    self.eiforia_disforia:=self.eiforia_disforia+drug.eiforia_disforia;
    self.emotion_labilnost:=self.emotion_labilnost+drug.emotion_labilnost;
    self.ammbivalentnost:=self.ammbivalentnost+drug.ammbivalentnost;
    self.anestezia_psihica:=self.anestezia_psihica+drug.anestezia_psihica;
    // ���� � ����������
    self.hyper_hypobulia:=self.hyper_hypobulia+drug.hyper_hypobulia;
    self.vozbugdenie_stupor:=self.vozbugdenie_stupor+drug.vozbugdenie_stupor;

    self.parkinson:=self.parkinson+drug.parkinson;
    self.hyperkinez:=self.hyperkinez+drug.hyperkinez;
    self.dyskinez:=self.dyskinez+drug.dyskinez;
    self.adrenolit:=self.adrenolit+drug.adrenolit;
    self.holinolit:=self.holinolit+drug.holinolit;
    self.endo:=self.endo+drug.endo;
    self.sexi:=self.sexi+drug.sexi;
  end;

  procedure THuman.HaracterToPerson;
  var
  i1,i2,i3:integer;
  begin
  i1:=15;
  i2:=30;
  i3:=60;
     // �������� +-50 = �����, 50-65 ������� ��������, 65-85 �����������, >85 ���� ��������
    case self.rigidnost_labilnost of
    85..100: begin
    self.rigidnost:=self.rigidnost+i3;
    end;
    65..84: begin
    self.rigidnost:=self.rigidnost+i2;
    end;
    50..64: begin
    self.rigidnost:=self.rigidnost+i1;
    end;
        -49..49: ;
    -64..-50: begin
    self.emotion_labilnost:=self.emotion_labilnost+i1;
    end;
    -84..-65: begin
    self.emotion_labilnost:=self.emotion_labilnost+i2;
    end;
    -100..-85: begin
    self.emotion_labilnost:=self.emotion_labilnost+i3;
    end;
    end;

    case self.hypertymia_hypotymia of
    85..100: begin
    self.hyper_hypotimia:=self.hyper_hypotimia+i3;
    self.hyperpatia_apatia:=self.hyperpatia_apatia+i3;
    self.hyper_hypomentzia:=self.hyper_hypomentzia+i3;
    self.hyper_hypomnesia:=self.hyper_hypomnesia+i3;
    self.hyperpatia_apatia:=self.hyperpatia_apatia+i3;
    self.hyper_hypobulia:=self.hyper_hypobulia+i3;
    self.vozbugdenie_stupor:=self.vozbugdenie_stupor+i3;
    end;
    65..84: begin
    self.hyper_hypotimia:=self.hyper_hypotimia+i2;
    self.hyperpatia_apatia:=self.hyperpatia_apatia+i2;
    self.hyper_hypomentzia:=self.hyper_hypomentzia+i2;
    self.hyper_hypomnesia:=self.hyper_hypomnesia+i2;
    self.hyperpatia_apatia:=self.hyperpatia_apatia+i2;
    self.hyper_hypobulia:=self.hyper_hypobulia+i2;
    self.vozbugdenie_stupor:=self.vozbugdenie_stupor+i2;
    end;
    50..64: begin
    self.hyper_hypotimia:=self.hyper_hypotimia+i1;
    self.hyperpatia_apatia:=self.hyperpatia_apatia+i1;
    self.hyper_hypomentzia:=self.hyper_hypomentzia+i1;
    self.hyper_hypomnesia:=self.hyper_hypomnesia+i1;
    self.hyperpatia_apatia:=self.hyperpatia_apatia+i1;
    self.hyper_hypobulia:=self.hyper_hypobulia+i1;
    self.vozbugdenie_stupor:=self.vozbugdenie_stupor+i1;
    end;
    -64..-50: begin
    self.hyper_hypotimia:=self.hyper_hypotimia-i1;
    self.hyperpatia_apatia:=self.hyperpatia_apatia-i1;
    self.hyper_hypomentzia:=self.hyper_hypomentzia-i1;
    self.hyper_hypomnesia:=self.hyper_hypomnesia-i1;
    self.hyperpatia_apatia:=self.hyperpatia_apatia-i1;
    self.hyper_hypobulia:=self.hyper_hypobulia-i1;
    self.vozbugdenie_stupor:=self.vozbugdenie_stupor-i1;
    end;
    -84..-65: begin
    self.hyper_hypotimia:=self.hyper_hypotimia-i2;
    self.hyperpatia_apatia:=self.hyperpatia_apatia-i2;
    self.hyper_hypomentzia:=self.hyper_hypomentzia-i2;
    self.hyper_hypomnesia:=self.hyper_hypomnesia-i2;
    self.hyperpatia_apatia:=self.hyperpatia_apatia-i2;
    self.hyper_hypobulia:=self.hyper_hypobulia-i2;
    self.vozbugdenie_stupor:=self.vozbugdenie_stupor-i2;
    end;
    -100..-85: begin
    self.hyper_hypotimia:=self.hyper_hypotimia-i3;
    self.hyperpatia_apatia:=self.hyperpatia_apatia-i3;
    self.hyper_hypomentzia:=self.hyper_hypomentzia-i3;
    self.hyper_hypomnesia:=self.hyper_hypomnesia-i3;
    self.hyperpatia_apatia:=self.hyperpatia_apatia-i3;
    self.hyper_hypobulia:=self.hyper_hypobulia-i3;
    self.vozbugdenie_stupor:=self.vozbugdenie_stupor-i3;
    end;
    end;

    case self.agress_trevoga of
    85..100: begin
    self.eiforia_disforia:=self.eiforia_disforia+i3;
    end;
    65..84: begin
    self.eiforia_disforia:=self.eiforia_disforia+i2;
    end;
    50..64: begin
    self.eiforia_disforia:=self.eiforia_disforia+i1;
    end;
    -64..-50: begin
    self.trevoga_spocoistvie:=self.trevoga_spocoistvie+i1;
    end;
    -84..-65: begin
    self.trevoga_spocoistvie:=self.trevoga_spocoistvie+i2;
    end;
    -100..-85: begin
    self.trevoga_spocoistvie:=self.trevoga_spocoistvie+i3;
    end;
    end;

    case self.original_poryadok of
    85..100: begin
    self.paralogichnost:=self.paralogichnost+i3;
    end;
    65..84: begin
    self.paralogichnost:=self.paralogichnost+i2;
    end;
    50..64: begin
    self.paralogichnost:=self.paralogichnost+i1;
    end;
    -64..-50: begin
    self.obstoyatelnost:=self.obstoyatelnost+i1;
    end;
    -84..-65: begin
    self.obstoyatelnost:=self.obstoyatelnost+i2;
    end;
    -100..-85: begin
    self.obstoyatelnost:=self.obstoyatelnost+i3;
    end;
    end;

    {case self.introvert_extravert of
    85..100: begin

    end;
    65..84: begin

    end;
    50..64: begin

    end;
    -64..-50: begin

    end;
    -84..-65: begin

    end;
    -100..-85: begin

    end;
    end;

    case self.zrelost_infantilnost of
    85..100: begin

    end;
    65..84: begin

    end;
    50..64: begin

    end;
    -64..-50: begin

    end;
    -84..-65: begin

    end;
    -100..-85: begin

    end;
    end;}

  end;

  procedure THuman.CopyPerson(man: THuman);
  begin
    self.hyper_hypostesia_anestesia:=man.hyper_hypostesia_anestesia;
    self.parestesia:=man.parestesia;
    self.senestopatia:=man.senestopatia;
    self.illusions:=man.illusions;
    self.hallutination_true:=man.hallutination_true;
    self.hallutination_false:=man.hallutination_false;
    self.derealisacia:=man.derealisacia;
    self.depersonalisacia:=man.depersonalisacia;
    // ��������
    self.hyper_hypomentzia:=man.hyper_hypomentzia;
    self.bessvaznost:=man.bessvaznost;
    self.rigidnost:=man.rigidnost;
    self.obstoyatelnost:=man.obstoyatelnost;
    self.paralogichnost:=man.paralogichnost;
    self.rezonerstvo:=man.rezonerstvo;
    self.mentizm:=man.mentizm;
    self.shperrung:=man.shperrung;
    self.obsesion_compulsion:=man.obsesion_compulsion;
    self.sverhcenniost:=man.sverhcenniost;
    self.bred_sistema:=man.bred_sistema;
    self.tema_idei:=man.tema_idei;
    self.avtomatizm:=man.avtomatizm;

    self.hyper_hypomnesia:=man.hyper_hypomnesia;
    self.amnesia_retro:=man.amnesia_retro;
    self.amnesia_antero:=man.amnesia_antero;
    self.amnesia_congrad:=man.amnesia_congrad;
    self.amnesia_fiks:=man.amnesia_fiks;
    self.pseudoreminiscencii:=man.pseudoreminiscencii;
    self.confabulacii:=man.confabulacii;
    self.cryptomnesii:=man.cryptomnesii;
    self.intellect:=man.intellect;
   // ������
    self.hyper_hypotimia:=man.hyper_hypotimia;
    self.hyperpatia_apatia:=man.hyperpatia_apatia;
    self.trevoga_spocoistvie:=man.trevoga_spocoistvie;
    self.emo_uploshenie:=man.emo_uploshenie;
    self.eiforia_disforia:=man.eiforia_disforia;
    self.emotion_labilnost:=man.emotion_labilnost;
    self.ammbivalentnost:=man.ammbivalentnost;
    self.anestezia_psihica:=man.anestezia_psihica;
    // ���� � ����������
    self.hyper_hypobulia:=man.hyper_hypobulia;
    self.vozbugdenie_stupor:=man.vozbugdenie_stupor;

    self.parkinson:=man.parkinson;
    self.hyperkinez:=man.hyperkinez;
    self.dyskinez:=man.dyskinez;
    self.adrenolit:=man.adrenolit;
    self.holinolit:=man.holinolit;
    self.endo:=man.endo;
    self.sexi:=man.sexi;

  end;


end.
