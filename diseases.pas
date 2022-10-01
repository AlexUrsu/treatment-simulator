unit diseases;

interface

type
  TSindrom = class(TObject)
  name: string;

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
    sverhcenniost: integer;
    bred_sistema: integer;
    tema_idei: string;
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

    parkinson, hyperkinez, dyskinez, adrenolit, holinolit, endo, sexi: Real;



  procedure CreateSindrom(name: string; sila: integer = 1); //���������� ��� �������� � ��� �������
  procedure CreateBSindrom;
  end;

  TDisease = class(TObject)
  name: string;
  sindroms: array[0..5] of TSindrom;

 // procedure AddSindrom(name: TSindrom);
  //procedure CreateDisease(name: string);
  end;


implementation
  procedure TSindrom.CreateBSindrom;
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
    self.intellect:=0;
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


  procedure TSindrom.CreateSindrom(name: string; sila: integer = 1);
  const
   DEISTVIE: integer = 11;
   EFFECT: integer = 16;
   OS_EFFECT: integer = 32;
  begin
    self.CreateBSindrom;
    self.name:=name;
    if name = '������������' then begin
    self.hyper_hypostesia_anestesia:=OS_EFFECT*sila;
    self.senestopatia:=DEISTVIE*sila;
    self.illusions:=DEISTVIE*sila;
    // ��������
    self.obsesion_compulsion:=DEISTVIE*sila;
    self.sverhcenniost:=DEISTVIE*sila;
    // ������ � ���������
    // emotion
    self.trevoga_spocoistvie:=DEISTVIE*sila;
    self.eiforia_disforia:=EFFECT*sila;
    self.emotion_labilnost:=OS_EFFECT*sila;
    // ���� � ����������
    self.hyper_hypobulia:=DEISTVIE*sila;
    self.vozbugdenie_stupor:=DEISTVIE*sila;
    self.katatonia:=false;
    // �������� - �������� ��������!
    end;
    if name = '�����������' then begin
    self.hyper_hypostesia_anestesia:=DEISTVIE*sila;
    self.obsesion_compulsion:=OS_EFFECT*sila;
    self.trevoga_spocoistvie:=EFFECT*sila;
    end;

    if name = '������������' then begin
      self.hyper_hypotimia:=-OS_EFFECT*sila;
      self.hyper_hypomentzia:=-OS_EFFECT*sila;
      self.hyper_hypomnesia:=-DEISTVIE*sila;
      self.hyperpatia_apatia:=-DEISTVIE*sila;
      self.hyper_hypobulia:=-OS_EFFECT*sila;
      self.vozbugdenie_stupor:=-DEISTVIE*sila;
      self.rigidnost:=DEISTVIE*sila;
    end;

    if name = '���������' then begin
        self.hyper_hypostesia_anestesia:=DEISTVIE*sila;
      // ��������
      self.rigidnost:=-DEISTVIE*sila;
      self.hyper_hypomnesia:=-DEISTVIE*sila;
      // ������
      self.hyper_hypotimia:=-DEISTVIE*sila;
      self.trevoga_spocoistvie:=+OS_EFFECT*sila;
      self.emotion_labilnost:=EFFECT*sila;
      // ���� � ����������
      self.vozbugdenie_stupor:=DEISTVIE*sila;
    end;

    if name = '������������' then begin
      self.hyper_hypostesia_anestesia:=DEISTVIE*sila;
      self.hyper_hypotimia:=OS_EFFECT*sila;
      self.hyper_hypomentzia:=OS_EFFECT*sila;
      self.hyper_hypomnesia:=DEISTVIE*sila;
      self.hyperpatia_apatia:=EFFECT*sila;
      self.hyper_hypobulia:=OS_EFFECT*sila;
      self.vozbugdenie_stupor:=DEISTVIE*sila;
      self.rigidnost:=-DEISTVIE*sila;
    end;
    if name = '�������-�����������' then begin
      self.hyper_hypomentzia:=-DEISTVIE*sila;
      self.hyperpatia_apatia:=-OS_EFFECT*sila;
      self.vozbugdenie_stupor:=-OS_EFFECT*sila;
      self.hyper_hypobulia:=-OS_EFFECT*sila;
      if self.trevoga_spocoistvie>30 then
        self.trevoga_spocoistvie:=-DEISTVIE*sila;
    end;
    if name = '����������' then begin
      self.hyper_hypostesia_anestesia:=DEISTVIE*sila;
      self.hallutination_true:=OS_EFFECT*sila;
      self.trevoga_spocoistvie:=EFFECT*sila;
      self.hyper_hypostesia_anestesia:=EFFECT*sila;
      self.vozbugdenie_stupor:=EFFECT*sila;
      self.eiforia_disforia:=DEISTVIE*sila;
    end;

    if name = '�����������������' then begin
      self.hyper_hypostesia_anestesia:=DEISTVIE*sila;
      self.senestopatia:=OS_EFFECT*sila;
      self.trevoga_spocoistvie:=EFFECT*sila;
      self.hyper_hypotimia:=-EFFECT*sila;
    end;

    if name = '�����������������' then begin
      self.hyper_hypomentzia:=-EFFECT*sila;
      self.hyper_hypomnesia:=-OS_EFFECT*sila;
      self.amnesia_fiks:=EFFECT*sila;
      self.rigidnost:=OS_EFFECT*sila;
      self.obstoyatelnost:=OS_EFFECT*sila;
//    self.bessvaznost:=EFFECT*sila;
      self.emotion_labilnost:=DEISTVIE*sila;
      self.hyper_hypotimia:=-DEISTVIE*sila;
    end;

//    if name = '��������������������' then begin
//    end;

    if name = '������������' then begin
      self.hyper_hypomnesia:=-EFFECT*sila;
      self.amnesia_fiks:=OS_EFFECT*sila;
      self.pseudoreminiscencii:=OS_EFFECT*sila;
      self.confabulacii:=EFFECT*sila;
    end;

    if name = '�������������' then begin
      self.obstoyatelnost:=EFFECT*sila;
      self.rigidnost:=EFFECT*sila;
      self.hyper_hypotimia:=DEISTVIE*sila;
      self.hyperpatia_apatia:=DEISTVIE*sila;
      self.hyper_hypomentzia:=DEISTVIE*sila;
      self.sverhcenniost:=OS_EFFECT*sila;
      self.bred_sistema:=OS_EFFECT*sila;
    end;

    if name = '�����������' then begin
      self.derealisacia:=EFFECT*sila;
      self.depersonalisacia:=DEISTVIE*sila;
      self.paralogichnost:=OS_EFFECT*sila;
      self.bred_sistema:=-OS_EFFECT*sila;
      self.sverhcenniost:=EFFECT*sila;
    end;

    if name = '�����������-��������' then begin
      self.hallutination_false:=OS_EFFECT*sila;
      self.derealisacia:=EFFECT*sila;
      self.depersonalisacia:=EFFECT*sila;
      self.paralogichnost:=EFFECT*sila;
      self.bred_sistema:=-EFFECT*sila;
      self.sverhcenniost:=-DEISTVIE*sila;
      self.avtomatizm:=OS_EFFECT*sila;
      self.hyper_hypotimia:=-DEISTVIE*sila;
    end;
{            ��� ��������� �� ���� ���������
    if name = '���������' then begin
      self.hyper_hypostesia_anestesia:=-EFFECT*sila;
      self.hyper_hypomentzia:=-OS_EFFECT*sila;
      self.hyper_hypobulia:=-OS_EFFECT*sila;
      self.hyperpatia_apatia:=-OS_EFFECT*sila;
      self.bessvaznost:=OS_EFFECT*sila;
      self.vozbugdenie_stupor:=-OS_EFFECT*sila;
    // ���-�� ���� ��������� ������� ��������
    end;
    if name = '�����������' then begin
      self.hyper_hypostesia_anestesia:=EFFECT*sila;
      self.hyper_hypomentzia:=OS_EFFECT*sila;
      self.hyper_hypobulia:=OS_EFFECT*sila;
      self.hyperpatia_apatia:=OS_EFFECT*sila;
      self.vozbugdenie_stupor:=OS_EFFECT*sila;
    // ���-�� ���� ��������� ������� ��������
    end;

 }

  end;



end.
