.class public Lcom/papa91/arcapp/AppConfig_fba;
.super Lcom/papa91/common/BaseAppConfig;
.source "SourceFile"


# static fields
.field private static final HEX_DIGITS:[C

.field public static PATH:Ljava/lang/String; = "/papa91/arc/"

.field public static deviceDescrip:[Ljava/lang/String;

.field public static deviceID:[I

.field public static deviceName:[Ljava/lang/String;

.field public static strPgmGame:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "arc"

    .line 1
    sput-object v0, Lcom/papa91/common/BaseAppConfig;->EMU_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/papa91/arcapp/AppConfig_fba;->initPath(Landroid/content/Context;)V

    const/16 v0, 0x40a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BurnDrvCps1941"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "BurnDrvCps1941r1"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "BurnDrvCps1941u"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "BurnDrvCps1941j"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "BurnDrvCps3wonders"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "BurnDrvCps3wondersr1"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "BurnDrvCps3wondersu"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "BurnDrvCpsWonder3"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "BurnDrvCps3wondersh"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "BurnDrvCps3wondersb"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "BurnDrvCpsCaptcomm"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "BurnDrvCpsCaptcommr1"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "BurnDrvCpsCaptcommu"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "BurnDrvCpsCaptcommj"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "BurnDrvCpsCaptcommjr1"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "BurnDrvCpsCaptcommb"

    aput-object v3, v0, v1

    const-string v1, "BurnDrvCpsCaptcommb2"

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const/16 v1, 0x11

    const-string v4, "BurnDrvCpsCawing"

    aput-object v4, v0, v1

    const/16 v1, 0x12

    const-string v4, "BurnDrvCpsCawingr1"

    aput-object v4, v0, v1

    const/16 v1, 0x13

    const-string v4, "BurnDrvCpsCawingu"

    aput-object v4, v0, v1

    const/16 v1, 0x14

    const-string v4, "BurnDrvCpsCawingj"

    aput-object v4, v0, v1

    const/16 v1, 0x15

    const-string v4, "BurnDrvCpsCawingbl"

    aput-object v4, v0, v1

    const/16 v1, 0x16

    const-string v4, "BurnDrvCpsCawingb2"

    aput-object v4, v0, v1

    const/16 v1, 0x17

    const-string v4, "BurnDrvCpsCps1demo"

    aput-object v4, v0, v1

    const/16 v1, 0x18

    const-string v4, "BurnDrvCpsCworld2j"

    aput-object v4, v0, v1

    const/16 v1, 0x19

    const-string v4, "BurnDrvCpsDino"

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    const-string v4, "BurnDrvCpsDinoz"

    aput-object v4, v0, v1

    const/16 v1, 0x1b

    const-string v4, "BurnDrvCpsDinoxa"

    aput-object v4, v0, v1

    const/16 v1, 0x1c

    const-string v4, "BurnDrvCpsDinoxb"

    aput-object v4, v0, v1

    const/16 v1, 0x1d

    const-string v4, "BurnDrvCpsDinoxc"

    aput-object v4, v0, v1

    const/16 v1, 0x1e

    const-string v4, "BurnDrvCpsDinoxd"

    aput-object v4, v0, v1

    const/16 v1, 0x1f

    const-string v4, "BurnDrvCpsDinoxe"

    aput-object v4, v0, v1

    const/16 v1, 0x20

    const-string v4, "BurnDrvCpsDinoj"

    aput-object v4, v0, v1

    const/16 v1, 0x21

    const-string v4, "BurnDrvCpsDinou"

    aput-object v4, v0, v1

    const/16 v1, 0x22

    const-string v4, "BurnDrvCpsDinopic"

    aput-object v4, v0, v1

    const/16 v1, 0x23

    const-string v4, "BurnDrvCpsDinopic2"

    aput-object v4, v0, v1

    const/16 v1, 0x24

    const-string v4, "BurnDrvCpsDinopic3"

    aput-object v4, v0, v1

    const/16 v1, 0x25

    const-string v4, "BurnDrvCpsDinoh"

    aput-object v4, v0, v1

    const/16 v1, 0x26

    const-string v4, "BurnDrvCpsDinot"

    aput-object v4, v0, v1

    const/16 v1, 0x27

    const-string v4, "BurnDrvCpsDinotpic"

    aput-object v4, v0, v1

    const/16 v1, 0x28

    const-string v4, "BurnDrvCpsDinohunt"

    aput-object v4, v0, v1

    const/16 v1, 0x29

    const-string v4, "BurnDrvCpsDinoeh"

    aput-object v4, v0, v1

    const/16 v1, 0x2a

    const-string v4, "BurnDrvCpsDinohc"

    aput-object v4, v0, v1

    const/16 v1, 0x2b

    const-string v4, "BurnDrvCpsDynwar"

    aput-object v4, v0, v1

    const/16 v1, 0x2c

    const-string v4, "BurnDrvCpsDynwara"

    aput-object v4, v0, v1

    const/16 v1, 0x2d

    const-string v4, "BurnDrvCpsDynwarj"

    aput-object v4, v0, v1

    const/16 v1, 0x2e

    const-string v4, "BurnDrvCpsDynwarjr"

    aput-object v4, v0, v1

    const/16 v1, 0x2f

    const-string v4, "BurnDrvCpsFfight"

    aput-object v4, v0, v1

    const/16 v1, 0x30

    const-string v4, "BurnDrvCpsFfighta"

    aput-object v4, v0, v1

    const/16 v1, 0x31

    const-string v4, "BurnDrvCpsFfightu"

    aput-object v4, v0, v1

    const/16 v1, 0x32

    const-string v4, "BurnDrvCpsFfightu1"

    aput-object v4, v0, v1

    const/16 v1, 0x33

    const-string v4, "BurnDrvCpsFfightua"

    aput-object v4, v0, v1

    const/16 v1, 0x34

    const-string v4, "BurnDrvCpsFfightub"

    aput-object v4, v0, v1

    const/16 v1, 0x35

    const-string v4, "BurnDrvCpsFfightj"

    aput-object v4, v0, v1

    const/16 v1, 0x36

    const-string v4, "BurnDrvCpsFfightj1"

    aput-object v4, v0, v1

    const/16 v1, 0x37

    const-string v4, "BurnDrvCpsFfightj2"

    aput-object v4, v0, v1

    const/16 v1, 0x38

    const-string v4, "BurnDrvCpsFfightj3"

    aput-object v4, v0, v1

    const/16 v1, 0x39

    const-string v4, "BurnDrvCpsFfightjh"

    aput-object v4, v0, v1

    const/16 v1, 0x3a

    const-string v4, "BurnDrvCpsFfightbl"

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    const-string v4, "BurnDrvCpsFfightbl2"

    aput-object v4, v0, v1

    const/16 v1, 0x3c

    const-string v4, "BurnDrvCpsFcrash"

    aput-object v4, v0, v1

    const/16 v1, 0x3d

    const-string v4, "BurnDrvCpsForgottn"

    aput-object v4, v0, v1

    const/16 v1, 0x3e

    const-string v4, "BurnDrvCpsForgottnu"

    aput-object v4, v0, v1

    const/16 v1, 0x3f

    const-string v4, "BurnDrvCpsForgottnu1"

    aput-object v4, v0, v1

    const/16 v1, 0x40

    const-string v4, "BurnDrvCpsForgottnua"

    aput-object v4, v0, v1

    const/16 v1, 0x41

    const-string v4, "BurnDrvCpsForgottnuaa"

    aput-object v4, v0, v1

    const/16 v1, 0x42

    const-string v4, "BurnDrvCpsLostwrld"

    aput-object v4, v0, v1

    const/16 v1, 0x43

    const-string v4, "BurnDrvCpsLostwrldo"

    aput-object v4, v0, v1

    const/16 v1, 0x44

    const-string v4, "BurnDrvCpsGanbare"

    aput-object v4, v0, v1

    const/16 v1, 0x45

    const-string v4, "BurnDrvCpsGhouls"

    aput-object v4, v0, v1

    const/16 v1, 0x46

    const-string v4, "BurnDrvCpsGhoulsu"

    aput-object v4, v0, v1

    const/16 v1, 0x47

    const-string v4, "BurnDrvCpsDaimakai"

    aput-object v4, v0, v1

    const/16 v1, 0x48

    const-string v4, "BurnDrvCpsDaimakair"

    aput-object v4, v0, v1

    const/16 v1, 0x49

    const-string v4, "BurnDrvCpsDaimakaib"

    aput-object v4, v0, v1

    const/16 v1, 0x4a

    const-string v4, "BurnDrvCpsKnights"

    aput-object v4, v0, v1

    const/16 v1, 0x4b

    const-string v4, "BurnDrvCpsKnightsboos"

    aput-object v4, v0, v1

    const/16 v1, 0x4c

    const-string v4, "BurnDrvCpsKnightsu"

    aput-object v4, v0, v1

    const/16 v1, 0x4d

    const-string v4, "BurnDrvCpsKnightsj"

    aput-object v4, v0, v1

    const/16 v1, 0x4e

    const-string v4, "BurnDrvCpsKnightsja"

    aput-object v4, v0, v1

    const/16 v1, 0x4f

    const-string v4, "BurnDrvCpsKnightsb"

    aput-object v4, v0, v1

    const/16 v1, 0x50

    const-string v4, "BurnDrvCpsKnightsb2"

    aput-object v4, v0, v1

    const/16 v1, 0x51

    const-string v4, "BurnDrvCpsKnightsb3"

    aput-object v4, v0, v1

    const/16 v1, 0x52

    const-string v4, "BurnDrvCpsKnightsb4"

    aput-object v4, v0, v1

    const/16 v1, 0x53

    const-string v4, "BurnDrvCpsKnightsh"

    aput-object v4, v0, v1

    const/16 v1, 0x54

    const-string v4, "BurnDrvCpsKnightsh2"

    aput-object v4, v0, v1

    const/16 v1, 0x55

    const-string v4, "BurnDrvCpsKod"

    aput-object v4, v0, v1

    const/16 v1, 0x56

    const-string v4, "BurnDrvCpsKodr1"

    aput-object v4, v0, v1

    const/16 v1, 0x57

    const-string v4, "BurnDrvCpsKodu"

    aput-object v4, v0, v1

    const/16 v1, 0x58

    const-string v4, "BurnDrvCpsKodj"

    aput-object v4, v0, v1

    const/16 v1, 0x59

    const-string v4, "BurnDrvCpsKodja"

    aput-object v4, v0, v1

    const/16 v1, 0x5a

    const-string v4, "BurnDrvCpsKodb"

    aput-object v4, v0, v1

    const/16 v1, 0x5b

    const-string v4, "BurnDrvCpsKodh"

    aput-object v4, v0, v1

    const/16 v1, 0x5c

    const-string v4, "BurnDrvCpsKodda"

    aput-object v4, v0, v1

    const/16 v1, 0x5d

    const-string v4, "BurnDrvCpsMegaman"

    aput-object v4, v0, v1

    const/16 v1, 0x5e

    const-string v4, "BurnDrvCpsMegamana"

    aput-object v4, v0, v1

    const/16 v1, 0x5f

    const-string v4, "BurnDrvCpsRockmanj"

    aput-object v4, v0, v1

    const/16 v1, 0x60

    const-string v4, "BurnDrvCpsMercs"

    aput-object v4, v0, v1

    const/16 v1, 0x61

    const-string v4, "BurnDrvCpsMercsu"

    aput-object v4, v0, v1

    const/16 v1, 0x62

    const-string v4, "BurnDrvCpsMercsur1"

    aput-object v4, v0, v1

    const/16 v1, 0x63

    const-string v4, "BurnDrvCpsMercsj"

    aput-object v4, v0, v1

    const/16 v1, 0x64

    const-string v4, "BurnDrvCpsMsword"

    aput-object v4, v0, v1

    const/16 v1, 0x65

    const-string v4, "BurnDrvCpsMswordr1"

    aput-object v4, v0, v1

    const/16 v1, 0x66

    const-string v4, "BurnDrvCpsMswordj"

    aput-object v4, v0, v1

    const/16 v1, 0x67

    const-string v4, "BurnDrvCpsMswordu"

    aput-object v4, v0, v1

    const/16 v1, 0x68

    const-string v4, "BurnDrvCpsMtwins"

    aput-object v4, v0, v1

    const/16 v1, 0x69

    const-string v4, "BurnDrvCpsChikij"

    aput-object v4, v0, v1

    const/16 v1, 0x6a

    const-string v4, "BurnDrvCpsNemo"

    aput-object v4, v0, v1

    const/16 v1, 0x6b

    const-string v4, "BurnDrvCpsNemor1"

    aput-object v4, v0, v1

    const/16 v1, 0x6c

    const-string v4, "BurnDrvCpsNemoj"

    aput-object v4, v0, v1

    const/16 v1, 0x6d

    const-string v4, "BurnDrvCpsPang3"

    aput-object v4, v0, v1

    const/16 v1, 0x6e

    const-string v4, "BurnDrvCpsPang3r1"

    aput-object v4, v0, v1

    const/16 v1, 0x6f

    const-string v4, "BurnDrvCpsPang3r1a"

    aput-object v4, v0, v1

    const/16 v1, 0x70

    const-string v4, "BurnDrvCpsPang3b"

    aput-object v4, v0, v1

    const/16 v1, 0x71

    const-string v4, "BurnDrvCpsPang3b2"

    aput-object v4, v0, v1

    const/16 v1, 0x72

    const-string v4, "BurnDrvCpsPang3b3"

    aput-object v4, v0, v1

    const/16 v1, 0x73

    const-string v4, "BurnDrvCpsPang3j"

    aput-object v4, v0, v1

    const/16 v1, 0x74

    const-string v4, "BurnDrvCpsPnickj"

    aput-object v4, v0, v1

    const/16 v1, 0x75

    const-string v4, "BurnDrvCpsPunisher"

    aput-object v4, v0, v1

    const/16 v1, 0x76

    const-string v4, "BurnDrvCpsPunisheru"

    aput-object v4, v0, v1

    const/16 v1, 0x77

    const-string v4, "BurnDrvCpsPunisherj"

    aput-object v4, v0, v1

    const/16 v1, 0x78

    const-string v4, "BurnDrvCpsPunisherh"

    aput-object v4, v0, v1

    const/16 v1, 0x79

    const-string v4, "BurnDrvCpsPunipic"

    aput-object v4, v0, v1

    const/16 v1, 0x7a

    const-string v4, "BurnDrvCpsPunipic2"

    aput-object v4, v0, v1

    const/16 v1, 0x7b

    const-string v4, "BurnDrvCpsPunipic3"

    aput-object v4, v0, v1

    const/16 v1, 0x7c

    const-string v4, "BurnDrvCpsPunisherbz"

    aput-object v4, v0, v1

    const/16 v1, 0x7d

    const-string v4, "BurnDrvCpsQad"

    aput-object v4, v0, v1

    const/16 v1, 0x7e

    const-string v4, "BurnDrvCpsQadjr"

    aput-object v4, v0, v1

    const/16 v1, 0x7f

    const-string v4, "BurnDrvCpsQtono2j"

    aput-object v4, v0, v1

    const/16 v1, 0x80

    const-string v4, "BurnDrvCpsSf2"

    aput-object v4, v0, v1

    const/16 v1, 0x81

    const-string v4, "BurnDrvCpsSf2eb"

    aput-object v4, v0, v1

    const/16 v1, 0x82

    const-string v4, "BurnDrvCpsSf2ed"

    aput-object v4, v0, v1

    const/16 v1, 0x83

    const-string v4, "BurnDrvCpsSf2ee"

    aput-object v4, v0, v1

    const/16 v1, 0x84

    const-string v4, "BurnDrvCpsSf2ebbl"

    aput-object v4, v0, v1

    const/16 v1, 0x85

    const-string v4, "BurnDrvCpsSf2ebbl2"

    aput-object v4, v0, v1

    const/16 v1, 0x86

    const-string v4, "BurnDrvCpsSf2stt"

    aput-object v4, v0, v1

    const/16 v1, 0x87

    const-string v4, "BurnDrvCpsSf2ua"

    aput-object v4, v0, v1

    const/16 v1, 0x88

    const-string v4, "BurnDrvCpsSf2ub"

    aput-object v4, v0, v1

    const/16 v1, 0x89

    const-string v4, "BurnDrvCpsSf2uc"

    aput-object v4, v0, v1

    const/16 v1, 0x8a

    const-string v4, "BurnDrvCpsSf2ud"

    aput-object v4, v0, v1

    const/16 v1, 0x8b

    const-string v4, "BurnDrvCpsSf2ue"

    aput-object v4, v0, v1

    const/16 v1, 0x8c

    const-string v4, "BurnDrvCpsSf2uf"

    aput-object v4, v0, v1

    const/16 v1, 0x8d

    const-string v4, "BurnDrvCpsSf2ug"

    aput-object v4, v0, v1

    const/16 v1, 0x8e

    const-string v4, "BurnDrvCpsSf2ui"

    aput-object v4, v0, v1

    const/16 v1, 0x8f

    const-string v4, "BurnDrvCpsSf2uk"

    aput-object v4, v0, v1

    const/16 v1, 0x90

    const-string v4, "BurnDrvCpsSf2j"

    aput-object v4, v0, v1

    const/16 v1, 0x91

    const-string v4, "BurnDrvCpsSf2ja"

    aput-object v4, v0, v1

    const/16 v1, 0x92

    const-string v4, "BurnDrvCpsSf2jc"

    aput-object v4, v0, v1

    const/16 v1, 0x93

    const-string v4, "BurnDrvCpsSf2jf"

    aput-object v4, v0, v1

    const/16 v1, 0x94

    const-string v4, "BurnDrvCpsSf2jh"

    aput-object v4, v0, v1

    const/16 v1, 0x95

    const-string v4, "BurnDrvCpsSf2jl"

    aput-object v4, v0, v1

    const/16 v1, 0x96

    const-string v4, "BurnDrvCpsSf2qp1"

    aput-object v4, v0, v1

    const/16 v1, 0x97

    const-string v4, "BurnDrvCpsSf2thndr"

    aput-object v4, v0, v1

    const/16 v1, 0x98

    const-string v4, "BurnDrvCpsSf2b"

    aput-object v4, v0, v1

    const/16 v1, 0x99

    const-string v4, "BurnDrvCpsSf2b2"

    aput-object v4, v0, v1

    const/16 v1, 0x9a

    const-string v4, "BurnDrvCpsSf2ce"

    aput-object v4, v0, v1

    const/16 v1, 0x9b

    const-string v4, "BurnDrvCpsSf2ceea"

    aput-object v4, v0, v1

    const/16 v1, 0x9c

    const-string v4, "BurnDrvCpsSf2ceja"

    aput-object v4, v0, v1

    const/16 v1, 0x9d

    const-string v4, "BurnDrvCpsSf2cejb"

    aput-object v4, v0, v1

    const/16 v1, 0x9e

    const-string v4, "BurnDrvCpsSf2cejc"

    aput-object v4, v0, v1

    const/16 v1, 0x9f

    const-string v4, "BurnDrvCpsSf2ceua"

    aput-object v4, v0, v1

    const/16 v1, 0xa0

    const-string v4, "BurnDrvCpsSf2ceub"

    aput-object v4, v0, v1

    const/16 v1, 0xa1

    const-string v4, "BurnDrvCpsSf2ceuc"

    aput-object v4, v0, v1

    const/16 v1, 0xa2

    const-string v4, "BurnDrvCpsSf2acc"

    aput-object v4, v0, v1

    const/16 v1, 0xa3

    const-string v4, "BurnDrvCpsSf2acca"

    aput-object v4, v0, v1

    const/16 v1, 0xa4

    const-string v4, "BurnDrvCpsSf2accp2"

    aput-object v4, v0, v1

    const/16 v1, 0xa5

    const-string v4, "BurnDrvCpsSf2dkot2"

    aput-object v4, v0, v1

    const/16 v1, 0xa6

    const-string v4, "BurnDrvCpsSf2rb"

    aput-object v4, v0, v1

    const/16 v1, 0xa7

    const-string v4, "BurnDrvCpsSf2rb2"

    aput-object v4, v0, v1

    const/16 v1, 0xa8

    const-string v4, "BurnDrvCpsSf2rb3"

    aput-object v4, v0, v1

    const/16 v1, 0xa9

    const-string v4, "BurnDrvCpsSf2rb4"

    aput-object v4, v0, v1

    const/16 v1, 0xaa

    const-string v4, "BurnDrvCpsSf2rb5"

    aput-object v4, v0, v1

    const/16 v1, 0xab

    const-string v4, "BurnDrvCpsSf2rb6"

    aput-object v4, v0, v1

    const/16 v1, 0xac

    const-string v4, "BurnDrvCpsSf2red"

    aput-object v4, v0, v1

    const/16 v1, 0xad

    const-string v4, "BurnDrvCpsSf2red2"

    aput-object v4, v0, v1

    const/16 v1, 0xae

    const-string v4, "BurnDrvCpsSf2v004"

    aput-object v4, v0, v1

    const/16 v1, 0xaf

    const-string v4, "BurnDrvCpsSf2v0042"

    aput-object v4, v0, v1

    const/16 v1, 0xb0

    const-string v4, "BurnDrvCpsSf2v0043"

    aput-object v4, v0, v1

    const/16 v1, 0xb1

    const-string v4, "BurnDrvCpsSf2dongb"

    aput-object v4, v0, v1

    const/16 v1, 0xb2

    const-string v4, "BurnDrvCpsSf2bhh"

    aput-object v4, v0, v1

    const/16 v1, 0xb3

    const-string v4, "BurnDrvCpsSf2hf"

    aput-object v4, v0, v1

    const/16 v1, 0xb4

    const-string v4, "BurnDrvCpsSf2hfu"

    aput-object v4, v0, v1

    const/16 v1, 0xb5

    const-string v4, "BurnDrvCpsSf2hfj"

    aput-object v4, v0, v1

    const/16 v1, 0xb6

    const-string v4, "BurnDrvCpsSf2hfjb"

    aput-object v4, v0, v1

    const/16 v1, 0xb7

    const-string v4, "BurnDrvCpsSf2hfjb2"

    aput-object v4, v0, v1

    const/16 v1, 0xb8

    const-string v4, "BurnDrvCpsSf2yyc"

    aput-object v4, v0, v1

    const/16 v1, 0xb9

    const-string v4, "BurnDrvCpsSf2yyc2"

    aput-object v4, v0, v1

    const/16 v1, 0xba

    const-string v4, "BurnDrvCpsSf2koryu"

    aput-object v4, v0, v1

    const/16 v1, 0xbb

    const-string v4, "BurnDrvCpsSf2koryu2"

    aput-object v4, v0, v1

    const/16 v1, 0xbc

    const-string v4, "BurnDrvCpsSf2koryu3"

    aput-object v4, v0, v1

    const/16 v1, 0xbd

    const-string v4, "BurnDrvCpsSf2amf"

    aput-object v4, v0, v1

    const/16 v1, 0xbe

    const-string v4, "BurnDrvCpsSf2amf2"

    aput-object v4, v0, v1

    const/16 v1, 0xbf

    const-string v4, "BurnDrvCpsSf2amf3"

    aput-object v4, v0, v1

    const/16 v1, 0xc0

    const-string v4, "BurnDrvCpsSf2amf4"

    aput-object v4, v0, v1

    const/16 v1, 0xc1

    const-string v4, "BurnDrvCpsSf2amf5"

    aput-object v4, v0, v1

    const/16 v1, 0xc2

    const-string v4, "BurnDrvCpsSf2amf6"

    aput-object v4, v0, v1

    const/16 v1, 0xc3

    const-string v4, "BurnDrvCpsSf2amf7"

    aput-object v4, v0, v1

    const/16 v1, 0xc4

    const-string v4, "BurnDrvCpsSf2amf8"

    aput-object v4, v0, v1

    const/16 v1, 0xc5

    const-string v4, "BurnDrvCpsSf2mega"

    aput-object v4, v0, v1

    const/16 v1, 0xc6

    const-string v4, "BurnDrvCpsSf2mega2"

    aput-object v4, v0, v1

    const/16 v1, 0xc7

    const-string v4, "BurnDrvCpsSf2md"

    aput-object v4, v0, v1

    const/16 v1, 0xc8

    const-string v4, "BurnDrvCpsSf2mdt"

    aput-object v4, v0, v1

    const/16 v1, 0xc9

    const-string v4, "BurnDrvCpsSf2mdta"

    aput-object v4, v0, v1

    const/16 v1, 0xca

    const-string v4, "BurnDrvCpsSf2mdtb"

    aput-object v4, v0, v1

    const/16 v1, 0xcb

    const-string v4, "BurnDrvCpsSf2ceeabl"

    aput-object v4, v0, v1

    const/16 v1, 0xcc

    const-string v4, "BurnDrvCpsSf2ceeab2"

    aput-object v4, v0, v1

    const/16 v1, 0xcd

    const-string v4, "BurnDrvCpsSf2cejabl"

    aput-object v4, v0, v1

    const/16 v1, 0xce

    const-string v4, "BurnDrvCpsSf2cejab2"

    aput-object v4, v0, v1

    const/16 v1, 0xcf

    const-string v4, "BurnDrvCpsSf2ceuabl"

    aput-object v4, v0, v1

    const/16 v1, 0xd0

    const-string v4, "BurnDrvCpsSf2ceuab2"

    aput-object v4, v0, v1

    const/16 v1, 0xd1

    const-string v4, "BurnDrvCpsSf2ceuab3"

    aput-object v4, v0, v1

    const/16 v1, 0xd2

    const-string v4, "BurnDrvCpsSf2ceuab4"

    aput-object v4, v0, v1

    const/16 v1, 0xd3

    const-string v4, "BurnDrvCpsSf2ceuab5"

    aput-object v4, v0, v1

    const/16 v1, 0xd4

    const-string v4, "BurnDrvCpsSf2ceuab6"

    aput-object v4, v0, v1

    const/16 v1, 0xd5

    const-string v4, "BurnDrvCpsSf2ceuab7"

    aput-object v4, v0, v1

    const/16 v1, 0xd6

    const-string v4, "BurnDrvCpsSf2ceucbl"

    aput-object v4, v0, v1

    const/16 v1, 0xd7

    const-string v4, "BurnDrvCpsSf2tlona"

    aput-object v4, v0, v1

    const/16 v1, 0xd8

    const-string v4, "BurnDrvCpsSf2tlonb"

    aput-object v4, v0, v1

    const/16 v1, 0xd9

    const-string v4, "BurnDrvCpsSf2tlonc"

    aput-object v4, v0, v1

    const/16 v1, 0xda

    const-string v4, "BurnDrvCpsSf2sl73a"

    aput-object v4, v0, v1

    const/16 v1, 0xdb

    const-string v4, "BurnDrvCpsSfzch"

    aput-object v4, v0, v1

    const/16 v1, 0xdc

    const-string v4, "BurnDrvCpsSlammast"

    aput-object v4, v0, v1

    const/16 v1, 0xdd

    const-string v4, "BurnDrvCpsSlammastu"

    aput-object v4, v0, v1

    const/16 v1, 0xde

    const-string v4, "BurnDrvCpsMbomberj"

    aput-object v4, v0, v1

    const/16 v1, 0xdf

    const-string v4, "BurnDrvCpsMbombrd"

    aput-object v4, v0, v1

    const/16 v1, 0xe0

    const-string v4, "BurnDrvCpsMbombrdj"

    aput-object v4, v0, v1

    const/16 v1, 0xe1

    const-string v4, "BurnDrvCpsSlampic"

    aput-object v4, v0, v1

    const/16 v1, 0xe2

    const-string v4, "BurnDrvCpsStrider"

    aput-object v4, v0, v1

    const/16 v1, 0xe3

    const-string v4, "BurnDrvCpsStriderua"

    aput-object v4, v0, v1

    const/16 v1, 0xe4

    const-string v4, "BurnDrvCpsStriderjr"

    aput-object v4, v0, v1

    const/16 v1, 0xe5

    const-string v4, "BurnDrvCpsStriderj"

    aput-object v4, v0, v1

    const/16 v1, 0xe6

    const-string v4, "BurnDrvCpsUnsquad"

    aput-object v4, v0, v1

    const/16 v1, 0xe7

    const-string v4, "BurnDrvCpsArea88"

    aput-object v4, v0, v1

    const/16 v1, 0xe8

    const-string v4, "BurnDrvCpsArea88r"

    aput-object v4, v0, v1

    const/16 v1, 0xe9

    const-string v4, "BurnDrvCpsVarth"

    aput-object v4, v0, v1

    const/16 v1, 0xea

    const-string v4, "BurnDrvCpsVarthr1"

    aput-object v4, v0, v1

    const/16 v1, 0xeb

    const-string v4, "BurnDrvCpsVarthj"

    aput-object v4, v0, v1

    const/16 v1, 0xec

    const-string v4, "BurnDrvCpsVarthu"

    aput-object v4, v0, v1

    const/16 v1, 0xed

    const-string v4, "BurnDrvCpsWillow"

    aput-object v4, v0, v1

    const/16 v1, 0xee

    const-string v4, "BurnDrvCpsWillowo"

    aput-object v4, v0, v1

    const/16 v1, 0xef

    const-string v4, "BurnDrvCpsWillowj"

    aput-object v4, v0, v1

    const/16 v1, 0xf0

    const-string v4, "BurnDrvCpsWof"

    aput-object v4, v0, v1

    const/16 v1, 0xf1

    const-string v4, "BurnDrvCpsWofr1"

    aput-object v4, v0, v1

    const/16 v1, 0xf2

    const-string v4, "BurnDrvCpsWofu"

    aput-object v4, v0, v1

    const/16 v1, 0xf3

    const-string v4, "BurnDrvCpsWofj"

    aput-object v4, v0, v1

    const/16 v1, 0xf4

    const-string v4, "BurnDrvCpsWofjz"

    aput-object v4, v0, v1

    const/16 v1, 0xf5

    const-string v4, "BurnDrvCpsWofab"

    aput-object v4, v0, v1

    const/16 v1, 0xf6

    const-string v4, "BurnDrvCpsWofjxa"

    aput-object v4, v0, v1

    const/16 v1, 0xf7

    const-string v4, "BurnDrvCpsWofjxb"

    aput-object v4, v0, v1

    const/16 v1, 0xf8

    const-string v4, "BurnDrvCpsWofjxc"

    aput-object v4, v0, v1

    const/16 v1, 0xf9

    const-string v4, "BurnDrvCpsWofjxd"

    aput-object v4, v0, v1

    const/16 v1, 0xfa

    const-string v4, "BurnDrvCpsWofjxe"

    aput-object v4, v0, v1

    const/16 v1, 0xfb

    const-string v4, "BurnDrvCpsWofa"

    aput-object v4, v0, v1

    const/16 v1, 0xfc

    const-string v4, "BurnDrvCpsWofch"

    aput-object v4, v0, v1

    const/16 v1, 0xfd

    const-string v4, "BurnDrvCpsWofhfh"

    aput-object v4, v0, v1

    const/16 v1, 0xfe

    const-string v4, "BurnDrvCpsWofh"

    aput-object v4, v0, v1

    const/16 v1, 0xff

    const-string v4, "BurnDrvCpsWofha"

    aput-object v4, v0, v1

    const/16 v1, 0x100

    const-string v4, "BurnDrvCpsSgyxz"

    aput-object v4, v0, v1

    const/16 v1, 0x101

    const-string v4, "BurnDrvCpsWof3js"

    aput-object v4, v0, v1

    const/16 v1, 0x102

    const-string v4, "BurnDrvCpsWof3jsa"

    aput-object v4, v0, v1

    const/16 v1, 0x103

    const-string v4, "BurnDrvCpsWof3sj"

    aput-object v4, v0, v1

    const/16 v1, 0x104

    const-string v4, "BurnDrvCpsWof3sja"

    aput-object v4, v0, v1

    const/16 v1, 0x105

    const-string v4, "BurnDrvCpsWofsj"

    aput-object v4, v0, v1

    const/16 v1, 0x106

    const-string v4, "BurnDrvCpsWofsja"

    aput-object v4, v0, v1

    const/16 v1, 0x107

    const-string v4, "BurnDrvCpsWofsjb"

    aput-object v4, v0, v1

    const/16 v1, 0x108

    const-string v4, "BurnDrvCpsWofb"

    aput-object v4, v0, v1

    const/16 v1, 0x109

    const-string v4, "BurnDrvCpsWofjh"

    aput-object v4, v0, v1

    const/16 v1, 0x10a

    const-string v4, "BurnDrvCpsWofah"

    aput-object v4, v0, v1

    const/16 v1, 0x10b

    const-string v4, "BurnDrvCpsWofaha"

    aput-object v4, v0, v1

    const/16 v1, 0x10c

    const-string v4, "BurnDrvCpsWofahb"

    aput-object v4, v0, v1

    const/16 v1, 0x10d

    const-string v4, "BurnDrvCpsCps1frog"

    aput-object v4, v0, v1

    const/16 v1, 0x10e

    const-string v4, "BurnDrvCps19xx"

    aput-object v4, v0, v1

    const/16 v1, 0x10f

    const-string v4, "BurnDrvCps19xxa"

    aput-object v4, v0, v1

    const/16 v1, 0x110

    const-string v4, "BurnDrvCps19xxb"

    aput-object v4, v0, v1

    const/16 v1, 0x111

    const-string v4, "BurnDrvCps19xxh"

    aput-object v4, v0, v1

    const/16 v1, 0x112

    const-string v4, "BurnDrvCps19xxj"

    aput-object v4, v0, v1

    const/16 v1, 0x113

    const-string v4, "BurnDrvCps19xxjr1"

    aput-object v4, v0, v1

    const/16 v1, 0x114

    const-string v4, "BurnDrvCps19xxjr2"

    aput-object v4, v0, v1

    const/16 v1, 0x115

    const-string v4, "BurnDrvCps1944"

    aput-object v4, v0, v1

    const/16 v1, 0x116

    const-string v4, "BurnDrvCps1944j"

    aput-object v4, v0, v1

    const/16 v1, 0x117

    const-string v4, "BurnDrvCpsArmwar"

    aput-object v4, v0, v1

    const/16 v1, 0x118

    const-string v4, "BurnDrvCpsArmwarr1"

    aput-object v4, v0, v1

    const/16 v1, 0x119

    const-string v4, "BurnDrvCpsArmwaru"

    aput-object v4, v0, v1

    const/16 v1, 0x11a

    const-string v4, "BurnDrvCpsArmwaru1"

    aput-object v4, v0, v1

    const/16 v1, 0x11b

    const-string v4, "BurnDrvCpsPgear"

    aput-object v4, v0, v1

    const/16 v1, 0x11c

    const-string v4, "BurnDrvCpsPgearr1"

    aput-object v4, v0, v1

    const/16 v1, 0x11d

    const-string v4, "BurnDrvCpsArmwara"

    aput-object v4, v0, v1

    const/16 v1, 0x11e

    const-string v4, "BurnDrvCpsArmwarar1"

    aput-object v4, v0, v1

    const/16 v1, 0x11f

    const-string v4, "BurnDrvCpsAvsp"

    aput-object v4, v0, v1

    const/16 v1, 0x120

    const-string v4, "BurnDrvCpsAvspa"

    aput-object v4, v0, v1

    const/16 v1, 0x121

    const-string v4, "BurnDrvCpsAvsph"

    aput-object v4, v0, v1

    const/16 v1, 0x122

    const-string v4, "BurnDrvCpsAvspj"

    aput-object v4, v0, v1

    const/16 v1, 0x123

    const-string v4, "BurnDrvCpsAvspu"

    aput-object v4, v0, v1

    const/16 v1, 0x124

    const-string v4, "BurnDrvCpsBatcir"

    aput-object v4, v0, v1

    const/16 v1, 0x125

    const-string v4, "BurnDrvCpsBatcira"

    aput-object v4, v0, v1

    const/16 v1, 0x126

    const-string v4, "BurnDrvCpsBatcirj"

    aput-object v4, v0, v1

    const/16 v1, 0x127

    const-string v4, "BurnDrvCpsChoko"

    aput-object v4, v0, v1

    const/16 v1, 0x128

    const-string v4, "BurnDrvCpsCsclub"

    aput-object v4, v0, v1

    const/16 v1, 0x129

    const-string v4, "BurnDrvCpsCsclub1"

    aput-object v4, v0, v1

    const/16 v1, 0x12a

    const-string v4, "BurnDrvCpsCscluba"

    aput-object v4, v0, v1

    const/16 v1, 0x12b

    const-string v4, "BurnDrvCpsCsclubh"

    aput-object v4, v0, v1

    const/16 v1, 0x12c

    const-string v4, "BurnDrvCpsCsclubj"

    aput-object v4, v0, v1

    const/16 v1, 0x12d

    const-string v4, "BurnDrvCpsCsclubjr"

    aput-object v4, v0, v1

    const/16 v1, 0x12e

    const-string v4, "BurnDrvCpsCybots"

    aput-object v4, v0, v1

    const/16 v1, 0x12f

    const-string v4, "BurnDrvCpsCybotsj"

    aput-object v4, v0, v1

    const/16 v1, 0x130

    const-string v4, "BurnDrvCpsCybotsu"

    aput-object v4, v0, v1

    const/16 v1, 0x131

    const-string v4, "BurnDrvCpsDdsom"

    aput-object v4, v0, v1

    const/16 v1, 0x132

    const-string v4, "BurnDrvCpsDdsomr1"

    aput-object v4, v0, v1

    const/16 v1, 0x133

    const-string v4, "BurnDrvCpsDdsomr2"

    aput-object v4, v0, v1

    const/16 v1, 0x134

    const-string v4, "BurnDrvCpsDdsomr3"

    aput-object v4, v0, v1

    const/16 v1, 0x135

    const-string v4, "BurnDrvCpsDdsoma"

    aput-object v4, v0, v1

    const/16 v1, 0x136

    const-string v4, "BurnDrvCpsDdsomb"

    aput-object v4, v0, v1

    const/16 v1, 0x137

    const-string v4, "BurnDrvCpsDdsomh"

    aput-object v4, v0, v1

    const/16 v1, 0x138

    const-string v4, "BurnDrvCpsDdsomj"

    aput-object v4, v0, v1

    const/16 v1, 0x139

    const-string v4, "BurnDrvCpsDdsomchs"

    aput-object v4, v0, v1

    const/16 v1, 0x13a

    const-string v4, "BurnDrvCpsDdsomjr1"

    aput-object v4, v0, v1

    const/16 v1, 0x13b

    const-string v4, "BurnDrvCpsDdsomu"

    aput-object v4, v0, v1

    const/16 v1, 0x13c

    const-string v4, "BurnDrvCpsDdsomur1"

    aput-object v4, v0, v1

    const/16 v1, 0x13d

    const-string v4, "BurnDrvCpsDdtod"

    aput-object v4, v0, v1

    const/16 v1, 0x13e

    const-string v4, "BurnDrvCpsDdtodr1"

    aput-object v4, v0, v1

    const/16 v1, 0x13f

    const-string v4, "BurnDrvCpsDdtoda"

    aput-object v4, v0, v1

    const/16 v1, 0x140

    const-string v4, "BurnDrvCpsDdtodar1"

    aput-object v4, v0, v1

    const/16 v1, 0x141

    const-string v4, "BurnDrvCpsDdtodh"

    aput-object v4, v0, v1

    const/16 v1, 0x142

    const-string v4, "BurnDrvCpsDdtodhr1"

    aput-object v4, v0, v1

    const/16 v1, 0x143

    const-string v4, "BurnDrvCpsDdtodhr2"

    aput-object v4, v0, v1

    const/16 v1, 0x144

    const-string v4, "BurnDrvCpsDdtodj"

    aput-object v4, v0, v1

    const/16 v1, 0x145

    const-string v4, "BurnDrvCpsDdtodjr1"

    aput-object v4, v0, v1

    const/16 v1, 0x146

    const-string v4, "BurnDrvCpsDdtodjr2"

    aput-object v4, v0, v1

    const/16 v1, 0x147

    const-string v4, "BurnDrvCpsDdtodu"

    aput-object v4, v0, v1

    const/16 v1, 0x148

    const-string v4, "BurnDrvCpsDdtodur1"

    aput-object v4, v0, v1

    const/16 v1, 0x149

    const-string v4, "BurnDrvCpsDimahoo"

    aput-object v4, v0, v1

    const/16 v1, 0x14a

    const-string v4, "BurnDrvCpsGreatMahouDaiJ"

    aput-object v4, v0, v1

    const/16 v1, 0x14b

    const-string v4, "BurnDrvCpsDimahoou"

    aput-object v4, v0, v1

    const/16 v1, 0x14c

    const-string v4, "BurnDrvCpsDstlk"

    aput-object v4, v0, v1

    const/16 v1, 0x14d

    const-string v4, "BurnDrvCpsDstlka"

    aput-object v4, v0, v1

    const/16 v1, 0x14e

    const-string v4, "BurnDrvCpsDstlkh"

    aput-object v4, v0, v1

    const/16 v1, 0x14f

    const-string v4, "BurnDrvCpsDstlku"

    aput-object v4, v0, v1

    const/16 v1, 0x150

    const-string v4, "BurnDrvCpsDstlkur1"

    aput-object v4, v0, v1

    const/16 v1, 0x151

    const-string v4, "BurnDrvCpsVampj"

    aput-object v4, v0, v1

    const/16 v1, 0x152

    const-string v4, "BurnDrvCpsVampja"

    aput-object v4, v0, v1

    const/16 v1, 0x153

    const-string v4, "BurnDrvCpsVampjr1"

    aput-object v4, v0, v1

    const/16 v1, 0x154

    const-string v4, "BurnDrvCpsEcofghtr"

    aput-object v4, v0, v1

    const/16 v1, 0x155

    const-string v4, "BurnDrvCpsEcofghtra"

    aput-object v4, v0, v1

    const/16 v1, 0x156

    const-string v4, "BurnDrvCpsEcofghtrh"

    aput-object v4, v0, v1

    const/16 v1, 0x157

    const-string v4, "BurnDrvCpsEcofghtru"

    aput-object v4, v0, v1

    const/16 v1, 0x158

    const-string v4, "BurnDrvCpsEcofghtru1"

    aput-object v4, v0, v1

    const/16 v1, 0x159

    const-string v4, "BurnDrvCpsUecology"

    aput-object v4, v0, v1

    const/16 v1, 0x15a

    const-string v4, "BurnDrvCpsGigawing"

    aput-object v4, v0, v1

    const/16 v1, 0x15b

    const-string v4, "BurnDrvCpsGigawinga"

    aput-object v4, v0, v1

    const/16 v1, 0x15c

    const-string v4, "BurnDrvCpsGigawingb"

    aput-object v4, v0, v1

    const/16 v1, 0x15d

    const-string v4, "BurnDrvCpsGigawingh"

    aput-object v4, v0, v1

    const/16 v1, 0x15e

    const-string v4, "BurnDrvCpsGigawingj"

    aput-object v4, v0, v1

    const/16 v1, 0x15f

    const-string v4, "BurnDrvCpsHsf2"

    aput-object v4, v0, v1

    const/16 v1, 0x160

    const-string v4, "BurnDrvCpsHsf2a"

    aput-object v4, v0, v1

    const/16 v1, 0x161

    const-string v4, "BurnDrvCpsHsf2j"

    aput-object v4, v0, v1

    const/16 v1, 0x162

    const-string v4, "BurnDrvCpsJyangoku"

    aput-object v4, v0, v1

    const/16 v1, 0x163

    const-string v4, "BurnDrvCpsMegaman2"

    aput-object v4, v0, v1

    const/16 v1, 0x164

    const-string v4, "BurnDrvCpsMegaman2a"

    aput-object v4, v0, v1

    const/16 v1, 0x165

    const-string v4, "BurnDrvCpsMegaman2h"

    aput-object v4, v0, v1

    const/16 v1, 0x166

    const-string v4, "BurnDrvCpsRockman2j"

    aput-object v4, v0, v1

    const/16 v1, 0x167

    const-string v4, "BurnDrvCpsMmancp2u"

    aput-object v4, v0, v1

    const/16 v1, 0x168

    const-string v4, "BurnDrvCpsRmancp2j"

    aput-object v4, v0, v1

    const/16 v1, 0x169

    const-string v4, "BurnDrvCpsMarsMatrix"

    aput-object v4, v0, v1

    const/16 v1, 0x16a

    const-string v4, "BurnDrvCpsMarsMatrixJ"

    aput-object v4, v0, v1

    const/16 v1, 0x16b

    const-string v4, "BurnDrvCpsMPang"

    aput-object v4, v0, v1

    const/16 v1, 0x16c

    const-string v4, "BurnDrvCpsMPangr1"

    aput-object v4, v0, v1

    const/16 v1, 0x16d

    const-string v4, "BurnDrvCpsMPangu"

    aput-object v4, v0, v1

    const/16 v1, 0x16e

    const-string v4, "BurnDrvCpsMPangj"

    aput-object v4, v0, v1

    const/16 v1, 0x16f

    const-string v4, "BurnDrvCpsMsh"

    aput-object v4, v0, v1

    const/16 v1, 0x170

    const-string v4, "BurnDrvCpsMsha"

    aput-object v4, v0, v1

    const/16 v1, 0x171

    const-string v4, "BurnDrvCpsMshb"

    aput-object v4, v0, v1

    const/16 v1, 0x172

    const-string v4, "BurnDrvCpsMshh"

    aput-object v4, v0, v1

    const/16 v1, 0x173

    const-string v4, "BurnDrvCpsMshj"

    aput-object v4, v0, v1

    const/16 v1, 0x174

    const-string v4, "BurnDrvCpsMshjr1"

    aput-object v4, v0, v1

    const/16 v1, 0x175

    const-string v4, "BurnDrvCpsMshu"

    aput-object v4, v0, v1

    const/16 v1, 0x176

    const-string v4, "BurnDrvCpsMshvsf"

    aput-object v4, v0, v1

    const/16 v1, 0x177

    const-string v4, "BurnDrvCpsMshvsfa"

    aput-object v4, v0, v1

    const/16 v1, 0x178

    const-string v4, "BurnDrvCpsMshvsfa1"

    aput-object v4, v0, v1

    const/16 v1, 0x179

    const-string v4, "BurnDrvCpsMshvsfb"

    aput-object v4, v0, v1

    const/16 v1, 0x17a

    const-string v4, "BurnDrvCpsMshvsfb1"

    aput-object v4, v0, v1

    const/16 v1, 0x17b

    const-string v4, "BurnDrvCpsMshvsfh"

    aput-object v4, v0, v1

    const/16 v1, 0x17c

    const-string v4, "BurnDrvCpsMshvsfj"

    aput-object v4, v0, v1

    const/16 v1, 0x17d

    const-string v4, "BurnDrvCpsMshvsfj1"

    aput-object v4, v0, v1

    const/16 v1, 0x17e

    const-string v4, "BurnDrvCpsMshvsfj2"

    aput-object v4, v0, v1

    const/16 v1, 0x17f

    const-string v4, "BurnDrvCpsMshvsfu"

    aput-object v4, v0, v1

    const/16 v1, 0x180

    const-string v4, "BurnDrvCpsMshvsfu1"

    aput-object v4, v0, v1

    const/16 v1, 0x181

    const-string v4, "BurnDrvCpsMvsc"

    aput-object v4, v0, v1

    const/16 v1, 0x182

    const-string v4, "BurnDrvCpsMvscr1"

    aput-object v4, v0, v1

    const/16 v1, 0x183

    const-string v4, "BurnDrvCpsMvsca"

    aput-object v4, v0, v1

    const/16 v1, 0x184

    const-string v4, "BurnDrvCpsMvscar1"

    aput-object v4, v0, v1

    const/16 v1, 0x185

    const-string v4, "BurnDrvCpsMvscb"

    aput-object v4, v0, v1

    const/16 v1, 0x186

    const-string v4, "BurnDrvCpsMvsch"

    aput-object v4, v0, v1

    const/16 v1, 0x187

    const-string v4, "BurnDrvCpsMvscj"

    aput-object v4, v0, v1

    const/16 v1, 0x188

    const-string v4, "BurnDrvCpsMvscjr1"

    aput-object v4, v0, v1

    const/16 v1, 0x189

    const-string v4, "BurnDrvCpsMvscu"

    aput-object v4, v0, v1

    const/16 v1, 0x18a

    const-string v4, "BurnDrvCpsMvscur1"

    aput-object v4, v0, v1

    const/16 v1, 0x18b

    const-string v4, "BurnDrvCpsMvscjsing"

    aput-object v4, v0, v1

    const/16 v1, 0x18c

    const-string v4, "BurnDrvCpsNwarr"

    aput-object v4, v0, v1

    const/16 v1, 0x18d

    const-string v4, "BurnDrvCpsNwarra"

    aput-object v4, v0, v1

    const/16 v1, 0x18e

    const-string v4, "BurnDrvCpsNwarrb"

    aput-object v4, v0, v1

    const/16 v1, 0x18f

    const-string v4, "BurnDrvCpsNwarrh"

    aput-object v4, v0, v1

    const/16 v1, 0x190

    const-string v4, "BurnDrvCpsNwarru"

    aput-object v4, v0, v1

    const/16 v1, 0x191

    const-string v4, "BurnDrvCpsVhuntj"

    aput-object v4, v0, v1

    const/16 v1, 0x192

    const-string v4, "BurnDrvCpsVhuntjr1s"

    aput-object v4, v0, v1

    const/16 v1, 0x193

    const-string v4, "BurnDrvCpsVhuntjr1"

    aput-object v4, v0, v1

    const/16 v1, 0x194

    const-string v4, "BurnDrvCpsVhuntjr2"

    aput-object v4, v0, v1

    const/16 v1, 0x195

    const-string v4, "BurnDrvCpsProgear"

    aput-object v4, v0, v1

    const/16 v1, 0x196

    const-string v4, "BurnDrvCpsProgeara"

    aput-object v4, v0, v1

    const/16 v1, 0x197

    const-string v4, "BurnDrvCpsProgearj"

    aput-object v4, v0, v1

    const/16 v1, 0x198

    const-string v4, "BurnDrvCpsPzloop2"

    aput-object v4, v0, v1

    const/16 v1, 0x199

    const-string v4, "BurnDrvCpsPzloop2j"

    aput-object v4, v0, v1

    const/16 v1, 0x19a

    const-string v4, "BurnDrvCpsPzloop2jr1"

    aput-object v4, v0, v1

    const/16 v1, 0x19b

    const-string v4, "BurnDrvCpsQndream"

    aput-object v4, v0, v1

    const/16 v1, 0x19c

    const-string v4, "BurnDrvCpsRingdest"

    aput-object v4, v0, v1

    const/16 v1, 0x19d

    const-string v4, "BurnDrvCpsSmbomb"

    aput-object v4, v0, v1

    const/16 v1, 0x19e

    const-string v4, "BurnDrvCpsSmbombr1"

    aput-object v4, v0, v1

    const/16 v1, 0x19f

    const-string v4, "BurnDrvCpsRingdesta"

    aput-object v4, v0, v1

    const/16 v1, 0x1a0

    const-string v4, "BurnDrvCpsSfa"

    aput-object v4, v0, v1

    const/16 v1, 0x1a1

    const-string v4, "BurnDrvCpsSfar1"

    aput-object v4, v0, v1

    const/16 v1, 0x1a2

    const-string v4, "BurnDrvCpsSfar2"

    aput-object v4, v0, v1

    const/16 v1, 0x1a3

    const-string v4, "BurnDrvCpsSfar3"

    aput-object v4, v0, v1

    const/16 v1, 0x1a4

    const-string v4, "BurnDrvCpsSfau"

    aput-object v4, v0, v1

    const/16 v1, 0x1a5

    const-string v4, "BurnDrvCpsSfza"

    aput-object v4, v0, v1

    const/16 v1, 0x1a6

    const-string v4, "BurnDrvCpsSfzar1"

    aput-object v4, v0, v1

    const/16 v1, 0x1a7

    const-string v4, "BurnDrvCpsSfzb"

    aput-object v4, v0, v1

    const/16 v1, 0x1a8

    const-string v4, "BurnDrvCpsSfzbr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1a9

    const-string v4, "BurnDrvCpsSfzh"

    aput-object v4, v0, v1

    const/16 v1, 0x1aa

    const-string v4, "BurnDrvCpsSfzhr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1ab

    const-string v4, "BurnDrvCpsSfzj"

    aput-object v4, v0, v1

    const/16 v1, 0x1ac

    const-string v4, "BurnDrvCpsSfzjr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1ad

    const-string v4, "BurnDrvCpsSfzjr2"

    aput-object v4, v0, v1

    const/16 v1, 0x1ae

    const-string v4, "BurnDrvCpsSfa2"

    aput-object v4, v0, v1

    const/16 v1, 0x1af

    const-string v4, "BurnDrvCpsSfa2u"

    aput-object v4, v0, v1

    const/16 v1, 0x1b0

    const-string v4, "BurnDrvCpsSfa2ur1"

    aput-object v4, v0, v1

    const/16 v1, 0x1b1

    const-string v4, "BurnDrvCpsSfz2a"

    aput-object v4, v0, v1

    const/16 v1, 0x1b2

    const-string v4, "BurnDrvCpsSfz2b"

    aput-object v4, v0, v1

    const/16 v1, 0x1b3

    const-string v4, "BurnDrvCpsSfz2br1"

    aput-object v4, v0, v1

    const/16 v1, 0x1b4

    const-string v4, "BurnDrvCpsSfz2h"

    aput-object v4, v0, v1

    const/16 v1, 0x1b5

    const-string v4, "BurnDrvCpsSfz2j"

    aput-object v4, v0, v1

    const/16 v1, 0x1b6

    const-string v4, "BurnDrvCpsSfz2jr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1b7

    const-string v4, "BurnDrvCpsSfz2n"

    aput-object v4, v0, v1

    const/16 v1, 0x1b8

    const-string v4, "BurnDrvCpsSfz2al"

    aput-object v4, v0, v1

    const/16 v1, 0x1b9

    const-string v4, "BurnDrvCpsSfz2alb"

    aput-object v4, v0, v1

    const/16 v1, 0x1ba

    const-string v4, "BurnDrvCpsSfz2alh"

    aput-object v4, v0, v1

    const/16 v1, 0x1bb

    const-string v4, "BurnDrvCpsSfz2alj"

    aput-object v4, v0, v1

    const/16 v1, 0x1bc

    const-string v4, "BurnDrvCpsSfa3"

    aput-object v4, v0, v1

    const/16 v1, 0x1bd

    const-string v4, "BurnDrvCpsSfa3b"

    aput-object v4, v0, v1

    const/16 v1, 0x1be

    const-string v4, "BurnDrvCpsSfa3h"

    aput-object v4, v0, v1

    const/16 v1, 0x1bf

    const-string v4, "BurnDrvCpsSfa3hr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1c0

    const-string v4, "BurnDrvCpsSfa3u"

    aput-object v4, v0, v1

    const/16 v1, 0x1c1

    const-string v4, "BurnDrvCpsSfa3ur1"

    aput-object v4, v0, v1

    const/16 v1, 0x1c2

    const-string v4, "BurnDrvCpsSfz3a"

    aput-object v4, v0, v1

    const/16 v1, 0x1c3

    const-string v4, "BurnDrvCpsSfz3ar1"

    aput-object v4, v0, v1

    const/16 v1, 0x1c4

    const-string v4, "BurnDrvCpsSfz3j"

    aput-object v4, v0, v1

    const/16 v1, 0x1c5

    const-string v4, "BurnDrvCpsSfz3jr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1c6

    const-string v4, "BurnDrvCpsSfz3jr2"

    aput-object v4, v0, v1

    const/16 v1, 0x1c7

    const-string v4, "BurnDrvCpsSgemf"

    aput-object v4, v0, v1

    const/16 v1, 0x1c8

    const-string v4, "BurnDrvCpsPfghtj"

    aput-object v4, v0, v1

    const/16 v1, 0x1c9

    const-string v4, "BurnDrvCpsSgemfa"

    aput-object v4, v0, v1

    const/16 v1, 0x1ca

    const-string v4, "BurnDrvCpsSgemfh"

    aput-object v4, v0, v1

    const/16 v1, 0x1cb

    const-string v4, "BurnDrvCpsSpf2t"

    aput-object v4, v0, v1

    const/16 v1, 0x1cc

    const-string v4, "BurnDrvCpsSpf2xj"

    aput-object v4, v0, v1

    const/16 v1, 0x1cd

    const-string v4, "BurnDrvCpsSpf2ta"

    aput-object v4, v0, v1

    const/16 v1, 0x1ce

    const-string v4, "BurnDrvCpsSpf2th"

    aput-object v4, v0, v1

    const/16 v1, 0x1cf

    const-string v4, "BurnDrvCpsSsf2"

    aput-object v4, v0, v1

    const/16 v1, 0x1d0

    const-string v4, "BurnDrvCpsSsf2a"

    aput-object v4, v0, v1

    const/16 v1, 0x1d1

    const-string v4, "BurnDrvCpsSsf2ar1"

    aput-object v4, v0, v1

    const/16 v1, 0x1d2

    const-string v4, "BurnDrvCpsSsf2h"

    aput-object v4, v0, v1

    const/16 v1, 0x1d3

    const-string v4, "BurnDrvCpsSsf2j"

    aput-object v4, v0, v1

    const/16 v1, 0x1d4

    const-string v4, "BurnDrvCpsSsf2jr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1d5

    const-string v4, "BurnDrvCpsSsf2jr2"

    aput-object v4, v0, v1

    const/16 v1, 0x1d6

    const-string v4, "BurnDrvCpsSsf2u"

    aput-object v4, v0, v1

    const/16 v1, 0x1d7

    const-string v4, "BurnDrvCpsSsf2tb"

    aput-object v4, v0, v1

    const/16 v1, 0x1d8

    const-string v4, "BurnDrvCpsSsf2tbr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1d9

    const-string v4, "BurnDrvCpsSsf2tbj"

    aput-object v4, v0, v1

    const/16 v1, 0x1da

    const-string v4, "BurnDrvCpsSsf2tbh"

    aput-object v4, v0, v1

    const/16 v1, 0x1db

    const-string v4, "BurnDrvCpsSsf2t"

    aput-object v4, v0, v1

    const/16 v1, 0x1dc

    const-string v4, "BurnDrvCpsSsf2ta"

    aput-object v4, v0, v1

    const/16 v1, 0x1dd

    const-string v4, "BurnDrvCpsSsf2tu"

    aput-object v4, v0, v1

    const/16 v1, 0x1de

    const-string v4, "BurnDrvCpsSsf2tur1"

    aput-object v4, v0, v1

    const/16 v1, 0x1df

    const-string v4, "BurnDrvCpsSsf2xj"

    aput-object v4, v0, v1

    const/16 v1, 0x1e0

    const-string v4, "BurnDrvCpsSsf2xjr"

    aput-object v4, v0, v1

    const/16 v1, 0x1e1

    const-string v4, "BurnDrvCpsVhunt2"

    aput-object v4, v0, v1

    const/16 v1, 0x1e2

    const-string v4, "BurnDrvCpsVhunt2r1"

    aput-object v4, v0, v1

    const/16 v1, 0x1e3

    const-string v4, "BurnDrvCpsVsav"

    aput-object v4, v0, v1

    const/16 v1, 0x1e4

    const-string v4, "BurnDrvCpsVsava"

    aput-object v4, v0, v1

    const/16 v1, 0x1e5

    const-string v4, "BurnDrvCpsVsavh"

    aput-object v4, v0, v1

    const/16 v1, 0x1e6

    const-string v4, "BurnDrvCpsVsavj"

    aput-object v4, v0, v1

    const/16 v1, 0x1e7

    const-string v4, "BurnDrvCpsVsavu"

    aput-object v4, v0, v1

    const/16 v1, 0x1e8

    const-string v4, "BurnDrvCpsVsav2"

    aput-object v4, v0, v1

    const/16 v1, 0x1e9

    const-string v4, "BurnDrvCpsXmcota"

    aput-object v4, v0, v1

    const/16 v1, 0x1ea

    const-string v4, "BurnDrvCpsXmcotar1"

    aput-object v4, v0, v1

    const/16 v1, 0x1eb

    const-string v4, "BurnDrvCpsXmcotaa"

    aput-object v4, v0, v1

    const/16 v1, 0x1ec

    const-string v4, "BurnDrvCpsXmcotaar1"

    aput-object v4, v0, v1

    const/16 v1, 0x1ed

    const-string v4, "BurnDrvCpsXmcotah"

    aput-object v4, v0, v1

    const/16 v1, 0x1ee

    const-string v4, "BurnDrvCpsXmcotahr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1ef

    const-string v4, "BurnDrvCpsXmcotaj"

    aput-object v4, v0, v1

    const/16 v1, 0x1f0

    const-string v4, "BurnDrvCpsXmcotaj1"

    aput-object v4, v0, v1

    const/16 v1, 0x1f1

    const-string v4, "BurnDrvCpsXmcotaj2"

    aput-object v4, v0, v1

    const/16 v1, 0x1f2

    const-string v4, "BurnDrvCpsXmcotaj3"

    aput-object v4, v0, v1

    const/16 v1, 0x1f3

    const-string v4, "BurnDrvCpsXmcotajr"

    aput-object v4, v0, v1

    const/16 v1, 0x1f4

    const-string v4, "BurnDrvCpsXmcotau"

    aput-object v4, v0, v1

    const/16 v1, 0x1f5

    const-string v4, "BurnDrvCpsXmvsf"

    aput-object v4, v0, v1

    const/16 v1, 0x1f6

    const-string v4, "BurnDrvCpsXmvsfr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1f7

    const-string v4, "BurnDrvCpsXmvsfa"

    aput-object v4, v0, v1

    const/16 v1, 0x1f8

    const-string v4, "BurnDrvCpsXmvsfar1"

    aput-object v4, v0, v1

    const/16 v1, 0x1f9

    const-string v4, "BurnDrvCpsXmvsfar2"

    aput-object v4, v0, v1

    const/16 v1, 0x1fa

    const-string v4, "BurnDrvCpsXmvsfar3"

    aput-object v4, v0, v1

    const/16 v1, 0x1fb

    const-string v4, "BurnDrvCpsXmvsfb"

    aput-object v4, v0, v1

    const/16 v1, 0x1fc

    const-string v4, "BurnDrvCpsXmvsfh"

    aput-object v4, v0, v1

    const/16 v1, 0x1fd

    const-string v4, "BurnDrvCpsXmvsfj"

    aput-object v4, v0, v1

    const/16 v1, 0x1fe

    const-string v4, "BurnDrvCpsXmvsfjr1"

    aput-object v4, v0, v1

    const/16 v1, 0x1ff

    const-string v4, "BurnDrvCpsXmvsfjr2"

    aput-object v4, v0, v1

    const/16 v1, 0x200

    const-string v4, "BurnDrvCpsXmvsfu"

    aput-object v4, v0, v1

    const/16 v1, 0x201

    const-string v4, "BurnDrvCpsXmvsfur1"

    aput-object v4, v0, v1

    const/16 v1, 0x202

    const-string v4, "BurnDrvCps19xxd"

    aput-object v4, v0, v1

    const/16 v1, 0x203

    const-string v4, "BurnDrvCps1944d"

    aput-object v4, v0, v1

    const/16 v1, 0x204

    const-string v4, "BurnDrvCps1944ad"

    aput-object v4, v0, v1

    const/16 v1, 0x205

    const-string v4, "BurnDrvCpsArmwar1d"

    aput-object v4, v0, v1

    const/16 v1, 0x206

    const-string v4, "BurnDrvCpsAvspd"

    aput-object v4, v0, v1

    const/16 v1, 0x207

    const-string v4, "BurnDrvCpsBatcird"

    aput-object v4, v0, v1

    const/16 v1, 0x208

    const-string v4, "BurnDrvCpsCsclub1d"

    aput-object v4, v0, v1

    const/16 v1, 0x209

    const-string v4, "BurnDrvCpsCybotsud"

    aput-object v4, v0, v1

    const/16 v1, 0x20a

    const-string v4, "BurnDrvCpsCybotsjd"

    aput-object v4, v0, v1

    const/16 v1, 0x20b

    const-string v4, "BurnDrvCpsDdsomud"

    aput-object v4, v0, v1

    const/16 v1, 0x20c

    const-string v4, "BurnDrvCpsDdtodd"

    aput-object v4, v0, v1

    const/16 v1, 0x20d

    const-string v4, "BurnDrvCpsDimahoud"

    aput-object v4, v0, v1

    const/16 v1, 0x20e

    const-string v4, "BurnDrvCpsDstlku1d"

    aput-object v4, v0, v1

    const/16 v1, 0x20f

    const-string v4, "BurnDrvCpsEcofghtrd"

    aput-object v4, v0, v1

    const/16 v1, 0x210

    const-string v4, "BurnDrvCpsGigawingd"

    aput-object v4, v0, v1

    const/16 v1, 0x211

    const-string v4, "BurnDrvCpsGigawingjd"

    aput-object v4, v0, v1

    const/16 v1, 0x212

    const-string v4, "BurnDrvCpsHsf2d"

    aput-object v4, v0, v1

    const/16 v1, 0x213

    const-string v4, "BurnDrvCpsHsf2da"

    aput-object v4, v0, v1

    const/16 v1, 0x214

    const-string v4, "BurnDrvCpsMegamn2d"

    aput-object v4, v0, v1

    const/16 v1, 0x215

    const-string v4, "BurnDrvCpsMarsMatrixd"

    aput-object v4, v0, v1

    const/16 v1, 0x216

    const-string v4, "BurnDrvCpsMPangjd"

    aput-object v4, v0, v1

    const/16 v1, 0x217

    const-string v4, "BurnDrvCpsMshud"

    aput-object v4, v0, v1

    const/16 v1, 0x218

    const-string v4, "BurnDrvCpsMshvsfu1d"

    aput-object v4, v0, v1

    const/16 v1, 0x219

    const-string v4, "BurnDrvCpsMvscud"

    aput-object v4, v0, v1

    const/16 v1, 0x21a

    const-string v4, "BurnDrvCpsNwarrud"

    aput-object v4, v0, v1

    const/16 v1, 0x21b

    const-string v4, "BurnDrvCpsProgearud"

    aput-object v4, v0, v1

    const/16 v1, 0x21c

    const-string v4, "BurnDrvCpsProgearjd"

    aput-object v4, v0, v1

    const/16 v1, 0x21d

    const-string v4, "BurnDrvCpsRingdstd"

    aput-object v4, v0, v1

    const/16 v1, 0x21e

    const-string v4, "BurnDrvCpsSfad"

    aput-object v4, v0, v1

    const/16 v1, 0x21f

    const-string v4, "BurnDrvCpsSfaud"

    aput-object v4, v0, v1

    const/16 v1, 0x220

    const-string v4, "BurnDrvCpsSfz2ad"

    aput-object v4, v0, v1

    const/16 v1, 0x221

    const-string v4, "BurnDrvCpsSfz2jd"

    aput-object v4, v0, v1

    const/16 v1, 0x222

    const-string v4, "BurnDrvCpsSfz2ald"

    aput-object v4, v0, v1

    const/16 v1, 0x223

    const-string v4, "BurnDrvCpsSfa3ud"

    aput-object v4, v0, v1

    const/16 v1, 0x224

    const-string v4, "BurnDrvCpsSfz3jr2d"

    aput-object v4, v0, v1

    const/16 v1, 0x225

    const-string v4, "BurnDrvCpsSgemfd"

    aput-object v4, v0, v1

    const/16 v1, 0x226

    const-string v4, "BurnDrvCpsSpf2td"

    aput-object v4, v0, v1

    const/16 v1, 0x227

    const-string v4, "BurnDrvCpsSpf2xjd"

    aput-object v4, v0, v1

    const/16 v1, 0x228

    const-string v4, "BurnDrvCpsSsf2d"

    aput-object v4, v0, v1

    const/16 v1, 0x229

    const-string v4, "BurnDrvCpsSsf2ud"

    aput-object v4, v0, v1

    const/16 v1, 0x22a

    const-string v4, "BurnDrvCpsSsf2tbd"

    aput-object v4, v0, v1

    const/16 v1, 0x22b

    const-string v4, "BurnDrvCpsSsf2td"

    aput-object v4, v0, v1

    const/16 v1, 0x22c

    const-string v4, "BurnDrvCpsSsf2tad"

    aput-object v4, v0, v1

    const/16 v1, 0x22d

    const-string v4, "BurnDrvCpsSsf2xjd"

    aput-object v4, v0, v1

    const/16 v1, 0x22e

    const-string v4, "BurnDrvCpsVsavd"

    aput-object v4, v0, v1

    const/16 v1, 0x22f

    const-string v4, "BurnDrvCpsVhunt2d"

    aput-object v4, v0, v1

    const/16 v1, 0x230

    const-string v4, "BurnDrvCpsVsav2d"

    aput-object v4, v0, v1

    const/16 v1, 0x231

    const-string v4, "BurnDrvCpsXmcotar1d"

    aput-object v4, v0, v1

    const/16 v1, 0x232

    const-string v4, "BurnDrvCpsXmvsfu1d"

    aput-object v4, v0, v1

    const/16 v1, 0x233

    const-string v4, "BurnDrvCpsProgearjbl"

    aput-object v4, v0, v1

    const/16 v1, 0x234

    const-string v4, "BurnDrvCpsGigaman2"

    aput-object v4, v0, v1

    const/16 v1, 0x235

    const-string v4, "BurnDrvNeoGeo"

    aput-object v4, v0, v1

    const/16 v1, 0x236

    const-string v4, "BurnDrvNeoGeoMVS"

    aput-object v4, v0, v1

    const/16 v1, 0x237

    const-string v4, "BurnDrvneocdz"

    aput-object v4, v0, v1

    const/16 v1, 0x238

    const-string v4, "BurnDrvNam1975"

    aput-object v4, v0, v1

    const/16 v1, 0x239

    const-string v4, "BurnDrvBstars"

    aput-object v4, v0, v1

    const/16 v1, 0x23a

    const-string v4, "BurnDrvBstarsh"

    aput-object v4, v0, v1

    const/16 v1, 0x23b

    const-string v4, "BurnDrvTpgolf"

    aput-object v4, v0, v1

    const/16 v1, 0x23c

    const-string v4, "BurnDrvMahretsu"

    aput-object v4, v0, v1

    const/16 v1, 0x23d

    const-string v4, "BurnDrvRidhero"

    aput-object v4, v0, v1

    const/16 v1, 0x23e

    const-string v4, "BurnDrvRidheroh"

    aput-object v4, v0, v1

    const/16 v1, 0x23f

    const-string v4, "BurnDrvAlpham2"

    aput-object v4, v0, v1

    const/16 v1, 0x240

    const-string v4, "BurnDrvAlpham2p"

    aput-object v4, v0, v1

    const/16 v1, 0x241

    const-string v4, "BurnDrvCyberlip"

    aput-object v4, v0, v1

    const/16 v1, 0x242

    const-string v4, "BurnDrvSuperspy"

    aput-object v4, v0, v1

    const/16 v1, 0x243

    const-string v4, "BurnDrvMutnat"

    aput-object v4, v0, v1

    const/16 v1, 0x244

    const-string v4, "BurnDrvKotm"

    aput-object v4, v0, v1

    const/16 v1, 0x245

    const-string v4, "BurnDrvKotmh"

    aput-object v4, v0, v1

    const/16 v1, 0x246

    const-string v4, "BurnDrvSengoku"

    aput-object v4, v0, v1

    const/16 v1, 0x247

    const-string v4, "BurnDrvSengokuh"

    aput-object v4, v0, v1

    const/16 v1, 0x248

    const-string v4, "BurnDrvBurningf"

    aput-object v4, v0, v1

    const/16 v1, 0x249

    const-string v4, "BurnDrvBurningfh"

    aput-object v4, v0, v1

    const/16 v1, 0x24a

    const-string v4, "BurnDrvBurningfp"

    aput-object v4, v0, v1

    const/16 v1, 0x24b

    const-string v4, "BurnDrvLbowling"

    aput-object v4, v0, v1

    const/16 v1, 0x24c

    const-string v4, "BurnDrvGpilots"

    aput-object v4, v0, v1

    const/16 v1, 0x24d

    const-string v4, "BurnDrvGpilotsh"

    aput-object v4, v0, v1

    const/16 v1, 0x24e

    const-string v4, "BurnDrvJoyjoy"

    aput-object v4, v0, v1

    const/16 v1, 0x24f

    const-string v4, "BurnDrvQuizdais"

    aput-object v4, v0, v1

    const/16 v1, 0x250

    const-string v4, "BurnDrvQuizdaisk"

    aput-object v4, v0, v1

    const/16 v1, 0x251

    const-string v4, "BurnDrvLresort"

    aput-object v4, v0, v1

    const/16 v1, 0x252

    const-string v4, "BurnDrvEightman"

    aput-object v4, v0, v1

    const/16 v1, 0x253

    const-string v4, "BurnDrvLegendos"

    aput-object v4, v0, v1

    const/16 v1, 0x254

    const-string v4, "BurnDrvbb2020"

    aput-object v4, v0, v1

    const/16 v1, 0x255

    const-string v4, "BurnDrvbba2020"

    aput-object v4, v0, v1

    const/16 v1, 0x256

    const-string v4, "BurnDrvbbh2020"

    aput-object v4, v0, v1

    const/16 v1, 0x257

    const-string v4, "BurnDrvSocbrawl"

    aput-object v4, v0, v1

    const/16 v1, 0x258

    const-string v4, "BurnDrvSocbrawlh"

    aput-object v4, v0, v1

    const/16 v1, 0x259

    const-string v4, "BurnDrvFatFury1"

    aput-object v4, v0, v1

    const/16 v1, 0x25a

    const-string v4, "BurnDrvRoboarmy"

    aput-object v4, v0, v1

    const/16 v1, 0x25b

    const-string v4, "BurnDrvFbfrenzy"

    aput-object v4, v0, v1

    const/16 v1, 0x25c

    const-string v4, "BurnDrvKotm2"

    aput-object v4, v0, v1

    const/16 v1, 0x25d

    const-string v4, "BurnDrvKotm2p"

    aput-object v4, v0, v1

    const/16 v1, 0x25e

    const-string v4, "BurnDrvSengoku2"

    aput-object v4, v0, v1

    const/16 v1, 0x25f

    const-string v4, "BurnDrvBstars2"

    aput-object v4, v0, v1

    const/16 v1, 0x260

    const-string v4, "BurnDrvQuizdai2"

    aput-object v4, v0, v1

    const/16 v1, 0x261

    const-string v4, "BurnDrv3Countb"

    aput-object v4, v0, v1

    const/16 v1, 0x262

    const-string v4, "BurnDrvAof"

    aput-object v4, v0, v1

    const/16 v1, 0x263

    const-string v4, "BurnDrvSamSho"

    aput-object v4, v0, v1

    const/16 v1, 0x264

    const-string v4, "BurnDrvSamShoh"

    aput-object v4, v0, v1

    const/16 v1, 0x265

    const-string v4, "BurnDrvtophntr"

    aput-object v4, v0, v1

    const/16 v1, 0x266

    const-string v4, "BurnDrvtophntrh"

    aput-object v4, v0, v1

    const/16 v1, 0x267

    const-string v4, "BurnDrvFatfury2"

    aput-object v4, v0, v1

    const/16 v1, 0x268

    const-string v4, "BurnDrvSsideki"

    aput-object v4, v0, v1

    const/16 v1, 0x269

    const-string v4, "BurnDrvKof94"

    aput-object v4, v0, v1

    const/16 v1, 0x26a

    const-string v4, "BurnDrvAof2"

    aput-object v4, v0, v1

    const/16 v1, 0x26b

    const-string v4, "BurnDrvAof2a"

    aput-object v4, v0, v1

    const/16 v1, 0x26c

    const-string v4, "BurnDrvFatfursp"

    aput-object v4, v0, v1

    const/16 v1, 0x26d

    const-string v4, "BurnDrvFatfurspa"

    aput-object v4, v0, v1

    const/16 v1, 0x26e

    const-string v4, "BurnDrvSavagere"

    aput-object v4, v0, v1

    const/16 v1, 0x26f

    const-string v4, "BurnDrvSsideki2"

    aput-object v4, v0, v1

    const/16 v1, 0x270

    const-string v4, "BurnDrvSamSho2"

    aput-object v4, v0, v1

    const/16 v1, 0x271

    const-string v4, "BurnDrvsamsho2k"

    aput-object v4, v0, v1

    const/16 v1, 0x272

    const-string v4, "BurnDrvFatfury3"

    aput-object v4, v0, v1

    const/16 v1, 0x273

    const-string v4, "BurnDrvSsideki3"

    aput-object v4, v0, v1

    const/16 v1, 0x274

    const-string v4, "BurnDrvKof95"

    aput-object v4, v0, v1

    const/16 v1, 0x275

    const-string v4, "BurnDrvKof95a"

    aput-object v4, v0, v1

    const/16 v1, 0x276

    const-string v4, "BurnDrvKof95h"

    aput-object v4, v0, v1

    const/16 v1, 0x277

    const-string v4, "BurnDrvSamSho3"

    aput-object v4, v0, v1

    const/16 v1, 0x278

    const-string v4, "BurnDrvSamSho3h"

    aput-object v4, v0, v1

    const/16 v1, 0x279

    const-string v4, "BurnDrvfswords"

    aput-object v4, v0, v1

    const/16 v1, 0x27a

    const-string v4, "BurnDrvrbff1"

    aput-object v4, v0, v1

    const/16 v1, 0x27b

    const-string v4, "BurnDrvrbff1a"

    aput-object v4, v0, v1

    const/16 v1, 0x27c

    const-string v4, "BurnDrvAof3"

    aput-object v4, v0, v1

    const/16 v1, 0x27d

    const-string v4, "BurnDrvAof3k"

    aput-object v4, v0, v1

    const/16 v1, 0x27e

    const-string v4, "BurnDrvKof96"

    aput-object v4, v0, v1

    const/16 v1, 0x27f

    const-string v4, "BurnDrvKof96h"

    aput-object v4, v0, v1

    const/16 v1, 0x280

    const-string v4, "BurnDrvSsideki4"

    aput-object v4, v0, v1

    const/16 v1, 0x281

    const-string v4, "BurnDrvKizuna"

    aput-object v4, v0, v1

    const/16 v1, 0x282

    const-string v4, "BurnDrvSamSho4"

    aput-object v4, v0, v1

    const/16 v1, 0x283

    const-string v4, "BurnDrvSamSho4k"

    aput-object v4, v0, v1

    const/16 v1, 0x284

    const-string v4, "BurnDrvrbffspec"

    aput-object v4, v0, v1

    const/16 v1, 0x285

    const-string v4, "BurnDrvrbffspeck"

    aput-object v4, v0, v1

    const/16 v1, 0x286

    const-string v4, "BurnDrvKof97"

    aput-object v4, v0, v1

    const/16 v1, 0x287

    const-string v4, "BurnDrvkof973v"

    aput-object v4, v0, v1

    const/16 v1, 0x288

    const-string v4, "BurnDrvKof97ts"

    aput-object v4, v0, v1

    const/16 v1, 0x289

    const-string v4, "BurnDrvKof97h"

    aput-object v4, v0, v1

    const/16 v1, 0x28a

    const-string v4, "BurnDrvKof97k"

    aput-object v4, v0, v1

    const/16 v1, 0x28b

    const-string v4, "BurnDrvKof97pls"

    aput-object v4, v0, v1

    const/16 v1, 0x28c

    const-string v4, "BurnDrvKog"

    aput-object v4, v0, v1

    const/16 v1, 0x28d

    const-string v4, "BurnDrvKogplus"

    aput-object v4, v0, v1

    const/16 v1, 0x28e

    const-string v4, "BurnDrvlastblad"

    aput-object v4, v0, v1

    const/16 v1, 0x28f

    const-string v4, "BurnDrvlastblada"

    aput-object v4, v0, v1

    const/16 v1, 0x290

    const-string v4, "BurnDrvlastbladh"

    aput-object v4, v0, v1

    const/16 v1, 0x291

    const-string v4, "BurnDrvlastsold"

    aput-object v4, v0, v1

    const/16 v1, 0x292

    const-string v4, "BurnDrvIrrmaze"

    aput-object v4, v0, v1

    const/16 v1, 0x293

    const-string v4, "BurnDrvrbff2"

    aput-object v4, v0, v1

    const/16 v1, 0x294

    const-string v4, "BurnDrvrbff2h"

    aput-object v4, v0, v1

    const/16 v1, 0x295

    const-string v4, "BurnDrvrbff2k"

    aput-object v4, v0, v1

    const/16 v1, 0x296

    const-string v4, "BurnDrvMSlug2"

    aput-object v4, v0, v1

    const/16 v1, 0x297

    const-string v4, "BurnDrvKof98"

    aput-object v4, v0, v1

    const/16 v1, 0x298

    const-string v4, "BurnDrvKof98a"

    aput-object v4, v0, v1

    const/16 v1, 0x299

    const-string v4, "BurnDrvKof98k"

    aput-object v4, v0, v1

    const/16 v1, 0x29a

    const-string v4, "BurnDrvKof98ka"

    aput-object v4, v0, v1

    const/16 v1, 0x29b

    const-string v4, "BurnDrvKof98h"

    aput-object v4, v0, v1

    const/16 v1, 0x29c

    const-string v4, "BurnDrvlastbld2"

    aput-object v4, v0, v1

    const/16 v1, 0x29d

    const-string v4, "BurnDrvNeocup98"

    aput-object v4, v0, v1

    const/16 v1, 0x29e

    const-string v4, "BurnDrvMSlugX"

    aput-object v4, v0, v1

    const/16 v1, 0x29f

    const-string v4, "BurnDrvMSlugXh"

    aput-object v4, v0, v1

    const/16 v1, 0x2a0

    const-string v4, "BurnDrvkof99"

    aput-object v4, v0, v1

    const/16 v1, 0x2a1

    const-string v4, "BurnDrvkof99h"

    aput-object v4, v0, v1

    const/16 v1, 0x2a2

    const-string v4, "BurnDrvkof99e"

    aput-object v4, v0, v1

    const/16 v1, 0x2a3

    const-string v4, "BurnDrvkof99k"

    aput-object v4, v0, v1

    const/16 v1, 0x2a4

    const-string v4, "BurnDrvkof99p"

    aput-object v4, v0, v1

    const/16 v1, 0x2a5

    const-string v4, "BurnDrvGarou"

    aput-object v4, v0, v1

    const/16 v1, 0x2a6

    const-string v4, "BurnDrvgarouh"

    aput-object v4, v0, v1

    const/16 v1, 0x2a7

    const-string v4, "BurnDrvGaroup"

    aput-object v4, v0, v1

    const/16 v1, 0x2a8

    const-string v4, "BurnDrvgaroubl"

    aput-object v4, v0, v1

    const/16 v1, 0x2a9

    const-string v4, "BurnDrvmslug3"

    aput-object v4, v0, v1

    const/16 v1, 0x2aa

    const-string v4, "BurnDrvmslug3h"

    aput-object v4, v0, v1

    const/16 v1, 0x2ab

    const-string v4, "BurnDrvmslug3b6"

    aput-object v4, v0, v1

    const/16 v1, 0x2ac

    const-string v4, "BurnDrvkof2000"

    aput-object v4, v0, v1

    const/16 v1, 0x2ad

    const-string v4, "BurnDrvkof2000n"

    aput-object v4, v0, v1

    const/16 v1, 0x2ae

    const-string v4, "BurnDrvZupapa"

    aput-object v4, v0, v1

    const/16 v1, 0x2af

    const-string v4, "BurnDrvSengoku3"

    aput-object v4, v0, v1

    const/16 v1, 0x2b0

    const-string v4, "BurnDrvkof2001"

    aput-object v4, v0, v1

    const/16 v1, 0x2b1

    const-string v4, "BurnDrvkof2001h"

    aput-object v4, v0, v1

    const/16 v1, 0x2b2

    const-string v4, "BurnDrvcthd2003"

    aput-object v4, v0, v1

    const/16 v1, 0x2b3

    const-string v4, "BurnDrvct2k3sp"

    aput-object v4, v0, v1

    const/16 v1, 0x2b4

    const-string v4, "BurnDrvct2k3sa"

    aput-object v4, v0, v1

    const/16 v1, 0x2b5

    const-string v4, "BurnDrvkof2002"

    aput-object v4, v0, v1

    const/16 v1, 0x2b6

    const-string v4, "BurnDrvkof2002b"

    aput-object v4, v0, v1

    const/16 v1, 0x2b7

    const-string v4, "BurnDrvkf2k2pls"

    aput-object v4, v0, v1

    const/16 v1, 0x2b8

    const-string v4, "BurnDrvkf2k2pla"

    aput-object v4, v0, v1

    const/16 v1, 0x2b9

    const-string v4, "BurnDrvkf2k2mp"

    aput-object v4, v0, v1

    const/16 v1, 0x2ba

    const-string v4, "BurnDrvkf2k2mp2"

    aput-object v4, v0, v1

    const/16 v1, 0x2bb

    const-string v4, "BurnDrvkf2k2mp3"

    aput-object v4, v0, v1

    const/16 v1, 0x2bc

    const-string v4, "BurnDrvkf2k2mp4"

    aput-object v4, v0, v1

    const/16 v1, 0x2bd

    const-string v4, "BurnDrvkf2k2mp5"

    aput-object v4, v0, v1

    const/16 v1, 0x2be

    const-string v4, "BurnDrvkof10th"

    aput-object v4, v0, v1

    const/16 v1, 0x2bf

    const-string v4, "BurnDrvkf10thep"

    aput-object v4, v0, v1

    const/16 v1, 0x2c0

    const-string v4, "BurnDrvkf2k5uni"

    aput-object v4, v0, v1

    const/16 v1, 0x2c1

    const-string v4, "BurnDrvkof2k4se"

    aput-object v4, v0, v1

    const/16 v1, 0x2c2

    const-string v4, "BurnDrvmslug5"

    aput-object v4, v0, v1

    const/16 v1, 0x2c3

    const-string v4, "BurnDrvmslug5h"

    aput-object v4, v0, v1

    const/16 v1, 0x2c4

    const-string v4, "BurnDrvms5pcb"

    aput-object v4, v0, v1

    const/16 v1, 0x2c5

    const-string v4, "BurnDrvms5plus"

    aput-object v4, v0, v1

    const/16 v1, 0x2c6

    const-string v4, "BurnDrvsvcpcb"

    aput-object v4, v0, v1

    const/16 v1, 0x2c7

    const-string v4, "BurnDrvsvcpcba"

    aput-object v4, v0, v1

    const/16 v1, 0x2c8

    const-string v4, "BurnDrvsvc"

    aput-object v4, v0, v1

    const/16 v1, 0x2c9

    const-string v4, "BurnDrvsvcboot"

    aput-object v4, v0, v1

    const/16 v1, 0x2ca

    const-string v4, "BurnDrvsvcplus"

    aput-object v4, v0, v1

    const/16 v1, 0x2cb

    const-string v4, "BurnDrvsvcplusa"

    aput-object v4, v0, v1

    const/16 v1, 0x2cc

    const-string v4, "BurnDrvsvcsplus"

    aput-object v4, v0, v1

    const/16 v1, 0x2cd

    const-string v4, "BurnDrvsamsho5"

    aput-object v4, v0, v1

    const/16 v1, 0x2ce

    const-string v4, "BurnDrvsamsho5h"

    aput-object v4, v0, v1

    const/16 v1, 0x2cf

    const-string v4, "BurnDrvsamsho5b"

    aput-object v4, v0, v1

    const/16 v1, 0x2d0

    const-string v4, "BurnDrvkf2k3pcb"

    aput-object v4, v0, v1

    const/16 v1, 0x2d1

    const-string v4, "BurnDrvkof2003"

    aput-object v4, v0, v1

    const/16 v1, 0x2d2

    const-string v4, "BurnDrvkof2003h"

    aput-object v4, v0, v1

    const/16 v1, 0x2d3

    const-string v4, "BurnDrvkf2k3bl"

    aput-object v4, v0, v1

    const/16 v1, 0x2d4

    const-string v4, "BurnDrvkf2k3pl"

    aput-object v4, v0, v1

    const/16 v1, 0x2d5

    const-string v4, "BurnDrvkf2k3upl"

    aput-object v4, v0, v1

    const/16 v1, 0x2d6

    const-string v4, "BurnDrvsamsh5sp"

    aput-object v4, v0, v1

    const/16 v1, 0x2d7

    const-string v4, "BurnDrvsamsh5sph"

    aput-object v4, v0, v1

    const/16 v1, 0x2d8

    const-string v4, "BurnDrvsamsh5spho"

    aput-object v4, v0, v1

    const/16 v1, 0x2d9

    const-string v4, "BurnDrvmaglord"

    aput-object v4, v0, v1

    const/16 v1, 0x2da

    const-string v4, "BurnDrvmaglordh"

    aput-object v4, v0, v1

    const/16 v1, 0x2db

    const-string v4, "BurnDrvncombat"

    aput-object v4, v0, v1

    const/16 v1, 0x2dc

    const-string v4, "BurnDrvncombath"

    aput-object v4, v0, v1

    const/16 v1, 0x2dd

    const-string v4, "BurnDrvbjourney"

    aput-object v4, v0, v1

    const/16 v1, 0x2de

    const-string v4, "BurnDrvcrsword"

    aput-object v4, v0, v1

    const/16 v1, 0x2df

    const-string v4, "BurnDrvtrally"

    aput-object v4, v0, v1

    const/16 v1, 0x2e0

    const-string v4, "BurnDrvncommand"

    aput-object v4, v0, v1

    const/16 v1, 0x2e1

    const-string v4, "BurnDrvwh1"

    aput-object v4, v0, v1

    const/16 v1, 0x2e2

    const-string v4, "BurnDrvwh1h"

    aput-object v4, v0, v1

    const/16 v1, 0x2e3

    const-string v4, "BurnDrvwh1ha"

    aput-object v4, v0, v1

    const/16 v1, 0x2e4

    const-string v4, "BurnDrvwh2"

    aput-object v4, v0, v1

    const/16 v1, 0x2e5

    const-string v4, "BurnDrvwh2j"

    aput-object v4, v0, v1

    const/16 v1, 0x2e6

    const-string v4, "BurnDrvaodk"

    aput-object v4, v0, v1

    const/16 v1, 0x2e7

    const-string v4, "BurnDrvwhp"

    aput-object v4, v0, v1

    const/16 v1, 0x2e8

    const-string v4, "BurnDrvmosyougi"

    aput-object v4, v0, v1

    const/16 v1, 0x2e9

    const-string v4, "BurnDrvovertop"

    aput-object v4, v0, v1

    const/16 v1, 0x2ea

    const-string v4, "BurnDrvninjamas"

    aput-object v4, v0, v1

    const/16 v1, 0x2eb

    const-string v4, "BurnDrvtwinspri"

    aput-object v4, v0, v1

    const/16 v1, 0x2ec

    const-string v4, "BurnDrvzintrckb"

    aput-object v4, v0, v1

    const/16 v1, 0x2ed

    const-string v4, "BurnDrvviewpoin"

    aput-object v4, v0, v1

    const/16 v1, 0x2ee

    const-string v4, "BurnDrvjanshin"

    aput-object v4, v0, v1

    const/16 v1, 0x2ef

    const-string v4, "BurnDrvpulstar"

    aput-object v4, v0, v1

    const/16 v1, 0x2f0

    const-string v4, "BurnDrvblazstar"

    aput-object v4, v0, v1

    const/16 v1, 0x2f1

    const-string v4, "BurnDrvpreisle2"

    aput-object v4, v0, v1

    const/16 v1, 0x2f2

    const-string v4, "BurnDrvspinmast"

    aput-object v4, v0, v1

    const/16 v1, 0x2f3

    const-string v4, "BurnDrvwjammers"

    aput-object v4, v0, v1

    const/16 v1, 0x2f4

    const-string v4, "BurnDrvkarnovr"

    aput-object v4, v0, v1

    const/16 v1, 0x2f5

    const-string v4, "BurnDrvstrhoop"

    aput-object v4, v0, v1

    const/16 v1, 0x2f6

    const-string v4, "BurnDrvghostlop"

    aput-object v4, v0, v1

    const/16 v1, 0x2f7

    const-string v4, "BurnDrvmagdrop2"

    aput-object v4, v0, v1

    const/16 v1, 0x2f8

    const-string v4, "BurnDrvmagdrop3"

    aput-object v4, v0, v1

    const/16 v1, 0x2f9

    const-string v4, "BurnDrvnitd"

    aput-object v4, v0, v1

    const/16 v1, 0x2fa

    const-string v4, "BurnDrvnitdbl"

    aput-object v4, v0, v1

    const/16 v1, 0x2fb

    const-string v4, "BurnDrvgururin"

    aput-object v4, v0, v1

    const/16 v1, 0x2fc

    const-string v4, "BurnDrvmiexchng"

    aput-object v4, v0, v1

    const/16 v1, 0x2fd

    const-string v4, "BurnDrvpanicbom"

    aput-object v4, v0, v1

    const/16 v1, 0x2fe

    const-string v4, "BurnDrvkabukikl"

    aput-object v4, v0, v1

    const/16 v1, 0x2ff

    const-string v4, "BurnDrvneobombe"

    aput-object v4, v0, v1

    const/16 v1, 0x300

    const-string v4, "BurnDrvminasan"

    aput-object v4, v0, v1

    const/16 v1, 0x301

    const-string v4, "BurnDrvbakatono"

    aput-object v4, v0, v1

    const/16 v1, 0x302

    const-string v4, "BurnDrvturfmast"

    aput-object v4, v0, v1

    const/16 v1, 0x303

    const-string v4, "BurnDrvmslug"

    aput-object v4, v0, v1

    const/16 v1, 0x304

    const-string v4, "BurnDrvzedblade"

    aput-object v4, v0, v1

    const/16 v1, 0x305

    const-string v4, "BurnDrvs1945p"

    aput-object v4, v0, v1

    const/16 v1, 0x306

    const-string v4, "BurnDrvquizkof"

    aput-object v4, v0, v1

    const/16 v1, 0x307

    const-string v4, "BurnDrvquizkofk"

    aput-object v4, v0, v1

    const/16 v1, 0x308

    const-string v4, "BurnDrvstakwin"

    aput-object v4, v0, v1

    const/16 v1, 0x309

    const-string v4, "BurnDrvragnagrd"

    aput-object v4, v0, v1

    const/16 v1, 0x30a

    const-string v4, "BurnDrvpgoal"

    aput-object v4, v0, v1

    const/16 v1, 0x30b

    const-string v4, "BurnDrvstakwin2"

    aput-object v4, v0, v1

    const/16 v1, 0x30c

    const-string v4, "BurnDrvshocktro"

    aput-object v4, v0, v1

    const/16 v1, 0x30d

    const-string v4, "BurnDrvshocktroa"

    aput-object v4, v0, v1

    const/16 v1, 0x30e

    const-string v4, "BurnDrvshocktr2"

    aput-object v4, v0, v1

    const/16 v1, 0x30f

    const-string v4, "BurnDrvlans2004"

    aput-object v4, v0, v1

    const/16 v1, 0x310

    const-string v4, "BurnDrvgalaxyfg"

    aput-object v4, v0, v1

    const/16 v1, 0x311

    const-string v4, "BurnDrvwakuwak7"

    aput-object v4, v0, v1

    const/16 v1, 0x312

    const-string v4, "BurnDrvpbobblen"

    aput-object v4, v0, v1

    const/16 v1, 0x313

    const-string v4, "BurnDrvpbobblenb"

    aput-object v4, v0, v1

    const/16 v1, 0x314

    const-string v4, "BurnDrvpbobbl2n"

    aput-object v4, v0, v1

    const/16 v1, 0x315

    const-string v4, "BurnDrvpnyaa"

    aput-object v4, v0, v1

    const/16 v1, 0x316

    const-string v4, "BurnDrvmarukodq"

    aput-object v4, v0, v1

    const/16 v1, 0x317

    const-string v4, "BurnDrvdoubledr"

    aput-object v4, v0, v1

    const/16 v1, 0x318

    const-string v4, "BurnDrvgowcaizr"

    aput-object v4, v0, v1

    const/16 v1, 0x319

    const-string v4, "BurnDrvsdodgeb"

    aput-object v4, v0, v1

    const/16 v1, 0x31a

    const-string v4, "BurnDrvtws96"

    aput-object v4, v0, v1

    const/16 v1, 0x31b

    const-string v4, "BurnDrvfightfev"

    aput-object v4, v0, v1

    const/16 v1, 0x31c

    const-string v4, "BurnDrvfightfeva"

    aput-object v4, v0, v1

    const/16 v1, 0x31d

    const-string v4, "BurnDrvpspikes2"

    aput-object v4, v0, v1

    const/16 v1, 0x31e

    const-string v4, "BurnDrvsonicwi2"

    aput-object v4, v0, v1

    const/16 v1, 0x31f

    const-string v4, "BurnDrvsonicwi3"

    aput-object v4, v0, v1

    const/16 v1, 0x320

    const-string v4, "BurnDrvpopbounc"

    aput-object v4, v0, v1

    const/16 v1, 0x321

    const-string v4, "BurnDrvandrodun"

    aput-object v4, v0, v1

    const/16 v1, 0x322

    const-string v4, "BurnDrvpuzzledp"

    aput-object v4, v0, v1

    const/16 v1, 0x323

    const-string v4, "BurnDrvneomrdo"

    aput-object v4, v0, v1

    const/16 v1, 0x324

    const-string v4, "BurnDrvgoalx3"

    aput-object v4, v0, v1

    const/16 v1, 0x325

    const-string v4, "BurnDrvneodrift"

    aput-object v4, v0, v1

    const/16 v1, 0x326

    const-string v4, "BurnDrvbreakers"

    aput-object v4, v0, v1

    const/16 v1, 0x327

    const-string v4, "BurnDrvpuzzldpr"

    aput-object v4, v0, v1

    const/16 v1, 0x328

    const-string v4, "BurnDrvbreakrev"

    aput-object v4, v0, v1

    const/16 v1, 0x329

    const-string v4, "BurnDrvflipshot"

    aput-object v4, v0, v1

    const/16 v1, 0x32a

    const-string v4, "BurnDrvctomaday"

    aput-object v4, v0, v1

    const/16 v1, 0x32b

    const-string v4, "BurnDrvganryu"

    aput-object v4, v0, v1

    const/16 v1, 0x32c

    const-string v4, "BurnDrvbangbead"

    aput-object v4, v0, v1

    const/16 v1, 0x32d

    const-string v4, "BurnDrvmslug4"

    aput-object v4, v0, v1

    const/16 v1, 0x32e

    const-string v4, "BurnDrvmslug4c"

    aput-object v4, v0, v1

    const/16 v1, 0x32f

    const-string v4, "BurnDrvmslug4h"

    aput-object v4, v0, v1

    const/16 v1, 0x330

    const-string v4, "BurnDrvms4plus"

    aput-object v4, v0, v1

    const/16 v1, 0x331

    const-string v4, "BurnDrvrotd"

    aput-object v4, v0, v1

    const/16 v1, 0x332

    const-string v4, "BurnDrvmatrim"

    aput-object v4, v0, v1

    const/16 v1, 0x333

    const-string v4, "BurnDrvmatrimbl"

    aput-object v4, v0, v1

    const/16 v1, 0x334

    const-string v4, "BurnDrvjockeygp"

    aput-object v4, v0, v1

    const/16 v1, 0x335

    const-string v4, "BurnDrvjockeygpa"

    aput-object v4, v0, v1

    const/16 v1, 0x336

    const-string v4, "BurnDrvvliner"

    aput-object v4, v0, v1

    const/16 v1, 0x337

    const-string v4, "BurnDrvvlinero"

    aput-object v4, v0, v1

    const/16 v1, 0x338

    const-string v4, "BurnDrvdiggerma"

    aput-object v4, v0, v1

    const/16 v1, 0x339

    const-string v4, "BurnDrvbangbedp"

    aput-object v4, v0, v1

    const/16 v1, 0x33a

    const-string v4, "BurnDrvcthd2k3a"

    aput-object v4, v0, v1

    const/16 v1, 0x33b

    const-string v4, "BurnDrvfr2ch"

    aput-object v4, v0, v1

    const/16 v1, 0x33c

    const-string v4, "BurnDrvironclad"

    aput-object v4, v0, v1

    const/16 v1, 0x33d

    const-string v4, "BurnDrvironclado"

    aput-object v4, v0, v1

    const/16 v1, 0x33e

    const-string v4, "BurnDrvb2buster"

    aput-object v4, v0, v1

    const/16 v1, 0x33f

    const-string v4, "BurnDrvtotcarib"

    aput-object v4, v0, v1

    const/16 v1, 0x340

    const-string v4, "BurnDrvkf2k1pla"

    aput-object v4, v0, v1

    const/16 v1, 0x341

    const-string v4, "BurnDrvkf2k1pls"

    aput-object v4, v0, v1

    const/16 v1, 0x342

    const-string v4, "BurnDrvkf2k2plb"

    aput-object v4, v0, v1

    const/16 v1, 0x343

    const-string v4, "BurnDrvkf2k2tt"

    aput-object v4, v0, v1

    const/16 v1, 0x344

    const-string v4, "BurnDrvkf2k2plc"

    aput-object v4, v0, v1

    const/16 v1, 0x345

    const-string v4, "BurnDrvkf2k2ps2"

    aput-object v4, v0, v1

    const/16 v1, 0x346

    const-string v4, "BurnDrvkf2k4pls"

    aput-object v4, v0, v1

    const/16 v1, 0x347

    const-string v4, "BurnDrvkof96ae"

    aput-object v4, v0, v1

    const/16 v1, 0x348

    const-string v4, "BurnDrvkof96ae20"

    aput-object v4, v0, v1

    const/16 v1, 0x349

    const-string v4, "BurnDrvkof96cn"

    aput-object v4, v0, v1

    const/16 v1, 0x34a

    const-string v4, "BurnDrvkof96ep"

    aput-object v4, v0, v1

    const/16 v1, 0x34b

    const-string v4, "BurnDrvkof97cn"

    aput-object v4, v0, v1

    const/16 v1, 0x34c

    const-string v4, "BurnDrvkof97pla"

    aput-object v4, v0, v1

    const/16 v1, 0x34d

    const-string v4, "BurnDrvKof97oro"

    aput-object v4, v0, v1

    const/16 v1, 0x34e

    const-string v4, "BurnDrvkof97xt"

    aput-object v4, v0, v1

    const/16 v1, 0x34f

    const-string v4, "BurnDrvkof98ae"

    aput-object v4, v0, v1

    const/16 v1, 0x350

    const-string v4, "BurnDrvkf98ae16"

    aput-object v4, v0, v1

    const/16 v1, 0x351

    const-string v4, "BurnDrvlhcdb"

    aput-object v4, v0, v1

    const/16 v1, 0x352

    const-string v4, "BurnDrvmslug5b"

    aput-object v4, v0, v1

    const/16 v1, 0x353

    const-string v4, "BurnDrvsamsho2k2"

    aput-object v4, v0, v1

    const/16 v1, 0x354

    const-string v4, "BurnDrvzintrkcd"

    aput-object v4, v0, v1

    const/16 v1, 0x355

    const-string v4, "BurnDrv4play"

    aput-object v4, v0, v1

    const/16 v1, 0x356

    const-string v4, "BurnDrvbeast"

    aput-object v4, v0, v1

    const/16 v1, 0x357

    const-string v4, "BurnDrvcnbe"

    aput-object v4, v0, v1

    const/16 v1, 0x358

    const-string v4, "BurnDrvcolumnsn"

    aput-object v4, v0, v1

    const/16 v1, 0x359

    const-string v4, "BurnDrvltorb1"

    aput-object v4, v0, v1

    const/16 v1, 0x35a

    const-string v4, "BurnDrvneo2500"

    aput-object v4, v0, v1

    const/16 v1, 0x35b

    const-string v4, "BurnDrvneodemo"

    aput-object v4, v0, v1

    const/16 v1, 0x35c

    const-string v4, "BurnDrvneonopon"

    aput-object v4, v0, v1

    const/16 v1, 0x35d

    const-string v4, "BurnDrvneopong"

    aput-object v4, v0, v1

    const/16 v1, 0x35e

    const-string v4, "BurnDrvneoponga"

    aput-object v4, v0, v1

    const/16 v1, 0x35f

    const-string v4, "BurnDrvngem2k"

    aput-object v4, v0, v1

    const/16 v1, 0x360

    const-string v4, "BurnDrvngfrog"

    aput-object v4, v0, v1

    const/16 v1, 0x361

    const-string v4, "BurnDrvpoknight"

    aput-object v4, v0, v1

    const/16 v1, 0x362

    const-string v4, "BurnDrvsyscheck"

    aput-object v4, v0, v1

    const/16 v1, 0x363

    const-string v4, "BurnDrvcndi"

    aput-object v4, v0, v1

    const/16 v1, 0x364

    const-string v4, "BurnDrvdwi"

    aput-object v4, v0, v1

    const/16 v1, 0x365

    const-string v4, "BurnDrvdwia"

    aput-object v4, v0, v1

    const/16 v1, 0x366

    const-string v4, "BurnDrvducki"

    aput-object v4, v0, v1

    const/16 v1, 0x367

    const-string v4, "BurnDrvghostbi"

    aput-object v4, v0, v1

    const/16 v1, 0x368

    const-string v4, "BurnDrvrobocopi"

    aput-object v4, v0, v1

    const/16 v1, 0x369

    const-string v4, "BurnDrvspidermi"

    aput-object v4, v0, v1

    const/16 v1, 0x36a

    const-string v4, "BurnDrvtmnti"

    aput-object v4, v0, v1

    const/16 v1, 0x36b

    const-string v4, "BurnDrvtmntia"

    aput-object v4, v0, v1

    const/16 v1, 0x36c

    const-string v4, "BurnDrvneothndr"

    aput-object v4, v0, v1

    const/16 v1, 0x36d

    const-string v4, "BurnDrvngftdemo"

    aput-object v4, v0, v1

    const/16 v1, 0x36e

    const-string v4, "BurnDrvneocstlv"

    aput-object v4, v0, v1

    const/16 v1, 0x36f

    const-string v4, "BurnDrvneo3ddmo"

    aput-object v4, v0, v1

    const/16 v1, 0x370

    const-string v4, "BurnDrvneoww2"

    aput-object v4, v0, v1

    const/16 v1, 0x371

    const-string v4, "BurnDrvkof97y"

    aput-object v4, v0, v1

    const/16 v1, 0x372

    const-string v4, "BurnDrvkof97yk"

    aput-object v4, v0, v1

    const/16 v1, 0x373

    const-string v4, "BurnDrvkof99ae"

    aput-object v4, v0, v1

    const/16 v1, 0x374

    const-string v4, "BurnDrvkof98c"

    aput-object v4, v0, v1

    const/16 v1, 0x375

    const-string v4, "BurnDrvkof98m"

    aput-object v4, v0, v1

    const/16 v1, 0x376

    const-string v4, "BurnDrvkof99evo"

    aput-object v4, v0, v1

    const/16 v1, 0x377

    const-string v4, "BurnDrvPgm"

    aput-object v4, v0, v1

    const/16 v1, 0x378

    const-string v4, "BurnDrvOrlegend"

    aput-object v4, v0, v1

    const/16 v1, 0x379

    const-string v4, "BurnDrvOrlegend112e"

    aput-object v4, v0, v1

    const/16 v1, 0x37a

    const-string v4, "BurnDrvOrlegend112c"

    aput-object v4, v0, v1

    const/16 v1, 0x37b

    const-string v4, "BurnDrvOrlegend112ca"

    aput-object v4, v0, v1

    const/16 v1, 0x37c

    const-string v4, "BurnDrvOrlegend111c"

    aput-object v4, v0, v1

    const/16 v1, 0x37d

    const-string v4, "BurnDrvOrlegend105k"

    aput-object v4, v0, v1

    const/16 v1, 0x37e

    const-string v4, "BurnDrvDrgw2"

    aput-object v4, v0, v1

    const/16 v1, 0x37f

    const-string v4, "BurnDrvDrgw2c"

    aput-object v4, v0, v1

    const/16 v1, 0x380

    const-string v4, "BurnDrvDrgw2j"

    aput-object v4, v0, v1

    const/16 v1, 0x381

    const-string v4, "BurnDrvDrgw2x"

    aput-object v4, v0, v1

    const/16 v1, 0x382

    const-string v4, "BurnDrvKillbld"

    aput-object v4, v0, v1

    const/16 v1, 0x383

    const-string v4, "BurnDrvKillbld104"

    aput-object v4, v0, v1

    const/16 v1, 0x384

    const-string v4, "BurnDrvOlds"

    aput-object v4, v0, v1

    const/16 v1, 0x385

    const-string v4, "BurnDrvOlds100"

    aput-object v4, v0, v1

    const/16 v1, 0x386

    const-string v4, "BurnDrvOlds100a"

    aput-object v4, v0, v1

    const/16 v1, 0x387

    const-string v4, "BurnDrvOlds103t"

    aput-object v4, v0, v1

    const/16 v1, 0x388

    const-string v4, "BurnDrvKov"

    aput-object v4, v0, v1

    const/16 v1, 0x389

    const-string v4, "BurnDrvKov115"

    aput-object v4, v0, v1

    const/16 v1, 0x38a

    const-string v4, "BurnDrvKov100"

    aput-object v4, v0, v1

    const/16 v1, 0x38b

    const-string v4, "BurnDrvKovplus"

    aput-object v4, v0, v1

    const/16 v1, 0x38c

    const-string v4, "BurnDrvKovplusa"

    aput-object v4, v0, v1

    const/16 v1, 0x38d

    const-string v4, "BurnDrvKovsh"

    aput-object v4, v0, v1

    const/16 v1, 0x38e

    const-string v4, "BurnDrvKovsh102"

    aput-object v4, v0, v1

    const/16 v1, 0x38f

    const-string v4, "BurnDrvKovsh101"

    aput-object v4, v0, v1

    const/16 v1, 0x390

    const-string v4, "BurnDrvKovsh100"

    aput-object v4, v0, v1

    const/16 v1, 0x391

    const-string v4, "BurnDrvPhotoy2k"

    aput-object v4, v0, v1

    const/16 v1, 0x392

    const-string v4, "BurnDrvPhotoy2k104"

    aput-object v4, v0, v1

    const/16 v1, 0x393

    const-string v4, "BurnDrvphotoy2k102"

    aput-object v4, v0, v1

    const/16 v1, 0x394

    const-string v4, "BurnDrvPuzlstar"

    aput-object v4, v0, v1

    const/16 v1, 0x395

    const-string v4, "BurnDrvPuzzli2"

    aput-object v4, v0, v1

    const/16 v1, 0x396

    const-string v4, "BurnDrvPuzzli2s"

    aput-object v4, v0, v1

    const/16 v1, 0x397

    const-string v4, "BurnDrvMartmast"

    aput-object v4, v0, v1

    const/16 v1, 0x398

    const-string v4, "BurnDrvmartmastc"

    aput-object v4, v0, v1

    const/16 v1, 0x399

    const-string v4, "BurnDrvmartmastc102"

    aput-object v4, v0, v1

    const/16 v1, 0x39a

    const-string v4, "BurnDrvKov2"

    aput-object v4, v0, v1

    const/16 v1, 0x39b

    const-string v4, "BurnDrvKov2106"

    aput-object v4, v0, v1

    const/16 v1, 0x39c

    const-string v4, "BurnDrvKov2103"

    aput-object v4, v0, v1

    const/16 v1, 0x39d

    const-string v4, "BurnDrvKov2102"

    aput-object v4, v0, v1

    const/16 v1, 0x39e

    const-string v4, "BurnDrvKov2101"

    aput-object v4, v0, v1

    const/16 v1, 0x39f

    const-string v4, "BurnDrvKov2100"

    aput-object v4, v0, v1

    const/16 v1, 0x3a0

    const-string v4, "BurnDrvKov2p"

    aput-object v4, v0, v1

    const/16 v1, 0x3a1

    const-string v4, "BurnDrvKov2p204"

    aput-object v4, v0, v1

    const/16 v1, 0x3a2

    const-string v4, "BurnDrvKov2p202"

    aput-object v4, v0, v1

    const/16 v1, 0x3a3

    const-string v4, "BurnDrvDdp2"

    aput-object v4, v0, v1

    const/16 v1, 0x3a4

    const-string v4, "BurnDrvDdp2101"

    aput-object v4, v0, v1

    const/16 v1, 0x3a5

    const-string v4, "BurnDrvDdp2100"

    aput-object v4, v0, v1

    const/16 v1, 0x3a6

    const-string v4, "BurnDrvDdp2hk"

    aput-object v4, v0, v1

    const/16 v1, 0x3a7

    const-string v4, "BurnDrvDdp2101hk"

    aput-object v4, v0, v1

    const/16 v1, 0x3a8

    const-string v4, "BurnDrvDdp2100hk"

    aput-object v4, v0, v1

    const/16 v1, 0x3a9

    const-string v4, "BurnDrvDdp2k"

    aput-object v4, v0, v1

    const/16 v1, 0x3aa

    const-string v4, "BurnDrvDdp2101k"

    aput-object v4, v0, v1

    const/16 v1, 0x3ab

    const-string v4, "BurnDrvDdp2100k"

    aput-object v4, v0, v1

    const/16 v1, 0x3ac

    const-string v4, "BurnDrvDdp2j"

    aput-object v4, v0, v1

    const/16 v1, 0x3ad

    const-string v4, "BurnDrvDdp2101j"

    aput-object v4, v0, v1

    const/16 v1, 0x3ae

    const-string v4, "BurnDrvDdp2100j"

    aput-object v4, v0, v1

    const/16 v1, 0x3af

    const-string v4, "BurnDrvDdp2t"

    aput-object v4, v0, v1

    const/16 v1, 0x3b0

    const-string v4, "BurnDrvDdp2101t"

    aput-object v4, v0, v1

    const/16 v1, 0x3b1

    const-string v4, "BurnDrvDdp2100t"

    aput-object v4, v0, v1

    const/16 v1, 0x3b2

    const-string v4, "BurnDrvDdp2c"

    aput-object v4, v0, v1

    const/16 v1, 0x3b3

    const-string v4, "BurnDrvDdp2101c"

    aput-object v4, v0, v1

    const/16 v1, 0x3b4

    const-string v4, "BurnDrvDdp2100c"

    aput-object v4, v0, v1

    const/16 v1, 0x3b5

    const-string v4, "BurnDrvDw2001"

    aput-object v4, v0, v1

    const/16 v1, 0x3b6

    const-string v4, "BurnDrvdwpc"

    aput-object v4, v0, v1

    const/16 v1, 0x3b7

    const-string v4, "BurnDrvDmnfrnt"

    aput-object v4, v0, v1

    const/16 v1, 0x3b8

    const-string v4, "BurnDrvdmnfrntb"

    aput-object v4, v0, v1

    const/16 v1, 0x3b9

    const-string v4, "BurnDrvdmnfrnta"

    aput-object v4, v0, v1

    const/16 v1, 0x3ba

    const-string v4, "BurnDrvTheglad"

    aput-object v4, v0, v1

    const/16 v1, 0x3bb

    const-string v4, "BurnDrvTheglad101"

    aput-object v4, v0, v1

    const/16 v1, 0x3bc

    const-string v4, "BurnDrvtheglada"

    aput-object v4, v0, v1

    const/16 v1, 0x3bd

    const-string v4, "BurnDrvhappy6"

    aput-object v4, v0, v1

    const/16 v1, 0x3be

    const-string v4, "BurnDrvhappy6101"

    aput-object v4, v0, v1

    const/16 v1, 0x3bf

    const-string v4, "BurnDrvkovshp"

    aput-object v4, v0, v1

    const/16 v1, 0x3c0

    const-string v4, "BurnDrvkovshpa"

    aput-object v4, v0, v1

    const/16 v1, 0x3c1

    const-string v4, "BurnDrvkovytzy"

    aput-object v4, v0, v1

    const/16 v1, 0x3c2

    const-string v4, "BurnDrvoldsplus"

    aput-object v4, v0, v1

    const/16 v1, 0x3c3

    const-string v4, "BurnDrvKillbldp"

    aput-object v4, v0, v1

    const/16 v1, 0x3c4

    const-string v4, "BurnDrvSvg"

    aput-object v4, v0, v1

    const/16 v1, 0x3c5

    const-string v4, "BurnDrvDdp3"

    aput-object v4, v0, v1

    const/16 v1, 0x3c6

    const-string v4, "BurnDrvDdp3a"

    aput-object v4, v0, v1

    const/16 v1, 0x3c7

    const-string v4, "BurnDrvDdp3b"

    aput-object v4, v0, v1

    const/16 v1, 0x3c8

    const-string v4, "BurnDrvDdp3blk"

    aput-object v4, v0, v1

    const/16 v1, 0x3c9

    const-string v4, "BurnDrvDdp3blka"

    aput-object v4, v0, v1

    const/16 v1, 0x3ca

    const-string v4, "BurnDrvKet"

    aput-object v4, v0, v1

    const/16 v1, 0x3cb

    const-string v4, "BurnDrvKetalt"

    aput-object v4, v0, v1

    const/16 v1, 0x3cc

    const-string v4, "BurnDrvKeta"

    aput-object v4, v0, v1

    const/16 v1, 0x3cd

    const-string v4, "BurnDrvKetb"

    aput-object v4, v0, v1

    const/16 v1, 0x3ce

    const-string v4, "BurnDrvketarr"

    aput-object v4, v0, v1

    const/16 v1, 0x3cf

    const-string v4, "BurnDrvketarr15"

    aput-object v4, v0, v1

    const/16 v1, 0x3d0

    const-string v4, "BurnDrvketarr151"

    aput-object v4, v0, v1

    const/16 v1, 0x3d1

    const-string v4, "BurnDrvketstoicu"

    aput-object v4, v0, v1

    const/16 v1, 0x3d2

    const-string v4, "BurnDrvEspgal"

    aput-object v4, v0, v1

    const/16 v1, 0x3d3

    const-string v4, "BurnDrvThegladpcb"

    aput-object v4, v0, v1

    const/16 v1, 0x3d4

    const-string v4, "BurnDrvDmnfrntpcb"

    aput-object v4, v0, v1

    const/16 v1, 0x3d5

    const-string v4, "BurnDrvSvgpcb"

    aput-object v4, v0, v1

    const/16 v1, 0x3d6

    const-string v4, "BurnDrvkovqhsgs"

    aput-object v4, v0, v1

    const/16 v1, 0x3d7

    const-string v4, "BurnDrvkovqhsgsa"

    aput-object v4, v0, v1

    const/16 v1, 0x3d8

    const-string v4, "BurnDrvkovshxas"

    aput-object v4, v0, v1

    const/16 v1, 0x3d9

    const-string v4, "BurnDrvKovsgqyz"

    aput-object v4, v0, v1

    const/16 v1, 0x3da

    const-string v4, "BurnDrvKovsgqyza"

    aput-object v4, v0, v1

    const/16 v1, 0x3db

    const-string v4, "BurnDrvKovsgqyzb"

    aput-object v4, v0, v1

    const/16 v1, 0x3dc

    const-string v4, "BurnDrvKovsgqyzc"

    aput-object v4, v0, v1

    const/16 v1, 0x3dd

    const-string v4, "BurnDrvKovshb"

    aput-object v4, v0, v1

    const/16 v1, 0x3de

    const-string v4, "BurnDrvkovshpd"

    aput-object v4, v0, v1

    const/16 v1, 0x3df

    const-string v4, "BurnDrvkovshpd2"

    aput-object v4, v0, v1

    const/16 v1, 0x3e0

    const-string v4, "BurnDrvkovshdf"

    aput-object v4, v0, v1

    const/16 v1, 0x3e1

    const-string v4, "BurnDrvkovshyh"

    aput-object v4, v0, v1

    const/16 v1, 0x3e2

    const-string v4, "BurnDrvkovshxs"

    aput-object v4, v0, v1

    const/16 v1, 0x3e3

    const-string v4, "BurnDrvkovshzs"

    aput-object v4, v0, v1

    const/16 v1, 0x3e4

    const-string v4, "BurnDrvkovplusqxlw"

    aput-object v4, v0, v1

    const/16 v1, 0x3e5

    const-string v4, "BurnDrvkovpluszlfy"

    aput-object v4, v0, v1

    const/16 v1, 0x3e6

    const-string v4, "BurnDrvkovplusqyz"

    aput-object v4, v0, v1

    const/16 v1, 0x3e7

    const-string v4, "BurnDrvkovp2k7"

    aput-object v4, v0, v1

    const/16 v1, 0x3e8

    const-string v4, "BurnDrvkovp2k12"

    aput-object v4, v0, v1

    const/16 v1, 0x3e9

    const-string v4, "BurnDrvkovp2k9"

    aput-object v4, v0, v1

    const/16 v1, 0x3ea

    const-string v4, "BurnDrvkov2p205"

    aput-object v4, v0, v1

    const/16 v1, 0x3eb

    const-string v4, "BurnDrvkovqm"

    aput-object v4, v0, v1

    const/16 v1, 0x3ec

    const-string v4, "BurnDrvkovqy"

    aput-object v4, v0, v1

    const/16 v1, 0x3ed

    const-string v4, "BurnDrvkovds"

    aput-object v4, v0, v1

    const/16 v1, 0x3ee

    const-string v4, "BurnDrvkov2k2em"

    aput-object v4, v0, v1

    const/16 v1, 0x3ef

    const-string v4, "BurnDrvkov2k2ws"

    aput-object v4, v0, v1

    const/16 v1, 0x3f0

    const-string v4, "BurnDrvoldsp"

    aput-object v4, v0, v1

    const/16 v1, 0x3f1

    const-string v4, "BurnDrvkovshh"

    aput-object v4, v0, v1

    const/16 v1, 0x3f2

    const-string v4, "BurnDrvkovpluslssx"

    aput-object v4, v0, v1

    const/16 v1, 0x3f3

    const-string v4, "BurnDrvkovplusblcx"

    aput-object v4, v0, v1

    const/16 v1, 0x3f4

    const-string v4, "BurnDrvorlegndcbbws"

    aput-object v4, v0, v1

    const/16 v1, 0x3f5

    const-string v4, "BurnDrvorlegndccngl"

    aput-object v4, v0, v1

    const/16 v1, 0x3f6

    const-string v4, "BurnDrvorlegndcssfh"

    aput-object v4, v0, v1

    const/16 v1, 0x3f7

    const-string v4, "BurnDrvorlegndcqylw"

    aput-object v4, v0, v1

    const/16 v1, 0x3f8

    const-string v4, "BurnDrvorlegndcjhcs"

    aput-object v4, v0, v1

    const/16 v1, 0x3f9

    const-string v4, "BurnDrvolds100afybh"

    aput-object v4, v0, v1

    const/16 v1, 0x3fa

    const-string v4, "BurnDrvolds100awxnz"

    aput-object v4, v0, v1

    const/16 v1, 0x3fb

    const-string v4, "BurnDrvolds100awxl"

    aput-object v4, v0, v1

    const/16 v1, 0x3fc

    const-string v4, "BurnDrvolds100akof"

    aput-object v4, v0, v1

    const/16 v1, 0x3fd

    const-string v4, "BurnDrvolds100ajb"

    aput-object v4, v0, v1

    const/16 v1, 0x3fe

    const-string v4, "BurnDrvkovshwsgl"

    aput-object v4, v0, v1

    const/16 v1, 0x3ff

    const-string v4, "BurnDrvkovshkof"

    aput-object v4, v0, v1

    const/16 v1, 0x400

    const-string v4, "BurnDrvkovshlbt"

    aput-object v4, v0, v1

    const/16 v1, 0x401

    const-string v4, "BurnDrvkovshwjdz"

    aput-object v4, v0, v1

    const/16 v1, 0x402

    const-string v4, "BurnDrvkovshsjcs"

    aput-object v4, v0, v1

    const/16 v1, 0x403

    const-string v4, "BurnDrvkov2plsqx"

    aput-object v4, v0, v1

    const/16 v1, 0x404

    const-string v4, "BurnDrvkov2pplus"

    aput-object v4, v0, v1

    const/16 v1, 0x405

    const-string v4, "BurnDrvkov2psblq"

    aput-object v4, v0, v1

    const/16 v1, 0x406

    const-string v4, "BurnDrvkov2pqjn"

    aput-object v4, v0, v1

    const/16 v1, 0x407

    const-string v4, "BurnDrvkov2pmmqf"

    aput-object v4, v0, v1

    const/16 v1, 0x408

    const-string v4, "BurnDrvkovlsqh2"

    aput-object v4, v0, v1

    const/16 v1, 0x409

    const-string v4, "BurnDrvkovlsqh3"

    aput-object v4, v0, v1

    .line 3
    sput-object v0, Lcom/papa91/arcapp/AppConfig_fba;->strPgmGame:[Ljava/lang/String;

    new-array v0, v3, [C

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcom/papa91/arcapp/AppConfig_fba;->HEX_DIGITS:[C

    const-string v0, "?"

    .line 5
    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/papa91/arcapp/AppConfig_fba;->deviceName:[Ljava/lang/String;

    .line 6
    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/arcapp/AppConfig_fba;->deviceDescrip:[Ljava/lang/String;

    .line 7
    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/papa91/arcapp/AppConfig_fba;->deviceID:[I

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/common/BaseAppConfig;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static IsXperiaPlay()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "R800a"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "R800i"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "R800x"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v1, "R800at"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    const-string v1, "SO-01D"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const-string v1, "zeus"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 55
    :goto_1
    return v0
.end method

.method public static createAppDir(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createFolder(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createFolder(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->CONFIG_PATH:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createFolder(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->INFO_PATH:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createFolder(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->INFO_PATH:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "icon/"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createFolder(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->IPS_PATH:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createFolder(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->TMP_PATH:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createFolder(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->ROMDATA_PATH:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createFolder(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->LOG_PATH:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createFolder(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method static createFolder(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "mkdir: ok"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->logD(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "mkdir: failed"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->logD(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return p0

    .line 62
    :cond_1
    return v2
.end method

.method static createResFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, "bios"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "dirName ="

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/papa91/arcapp/AppConfig_fba;->logE(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const/4 v1, 0x0

    .line 71
    const/4 v2, 0x0

    .line 72
    :goto_0
    array-length v3, p2

    .line 73
    if-ge v2, v3, :cond_6

    .line 74
    .line 75
    if-nez p3, :cond_3

    .line 76
    .line 77
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    aget-object v5, p2, v2

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v5, "file name ="

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    aget-object v5, p2, v2

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v4}, Lcom/papa91/arcapp/AppConfig_fba;->logE(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_2

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    aget-object v6, p2, v2

    .line 135
    .line 136
    invoke-virtual {p0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 145
    .line 146
    .line 147
    int-to-long v6, v7

    .line 148
    cmp-long v8, v4, v6

    .line 149
    .line 150
    if-nez v8, :cond_2

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_4

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 164
    .line 165
    .line 166
    :cond_4
    aget-object v3, p2, v2

    .line 167
    .line 168
    const/4 v4, 0x3

    .line 169
    invoke-virtual {p0, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    new-instance v4, Ljava/io/FileOutputStream;

    .line 174
    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    aget-object v6, p2, v2

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/16 v5, 0x400

    .line 196
    .line 197
    new-array v5, v5, [B

    .line 198
    .line 199
    :goto_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-lez v6, :cond_5

    .line 204
    .line 205
    invoke-virtual {v4, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :catch_0
    move-exception v3

    .line 220
    const-string v4, "cant install bios file"

    .line 221
    .line 222
    invoke-static {v4}, Lcom/papa91/arcapp/AppConfig_fba;->logE(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    .line 227
    .line 228
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_6
    return-void
.end method

.method public static filePathToURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "file://"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getAnalogDZ(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "analogDeadzoneNEW"

    .line 6
    .line 7
    const-string v1, "1"

    .line 8
    .line 9
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static getAnalogEZ(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "analogExpandzoneNEW"

    .line 6
    .line 7
    const-string v1, "1"

    .line 8
    .line 9
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static getButtonEZ(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "buttonExpandzoneNEW"

    .line 6
    .line 7
    const-string v1, "1"

    .line 8
    .line 9
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "_preferences"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method static getLastDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "LAST_DIR"

    .line 19
    .line 20
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static getLibpath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "cache"

    .line 10
    .line 11
    const-string v1, "lib"

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static getNameNoExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x2e

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :cond_0
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    if-ge v1, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static getNameNoExtWithPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static getNameWithExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method static getNumCores()I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/sys/devices/system/cpu/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/papa91/arcapp/AppConfig_fba$1CpuFilter;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/papa91/arcapp/AppConfig_fba$1CpuFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return v0

    .line 19
    :catch_0
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public static getRomPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getTiltDZ(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "PREF_TILT_DZ"

    .line 6
    .line 7
    const-string v1, "1"

    .line 8
    .line 9
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static getTiltSensitivity(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "PREF_TILT_SENSITIVITY"

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static getVpadStyle(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "PREF_VPAD_STYLE"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static getscrOrientation(Landroid/app/Activity;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne p0, v1, :cond_0

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ge p0, v0, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v1, 0x2

    .line 58
    :cond_2
    :goto_0
    return v1
.end method

.method public static hideAds(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "hideAds"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static initPath(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/papa91/arcapp/AppConfig_fba;->PATH:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcom/papa91/arcapp/AppConfig_fba;->PATH:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sput-object p0, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 42
    .line 43
    sput-object p0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "config/"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    sput-object p0, Lcom/papa91/common/BaseAppConfig;->CONFIG_PATH:Ljava/lang/String;

    .line 65
    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, "rominfo/"

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    sput-object p0, Lcom/papa91/common/BaseAppConfig;->INFO_PATH:Ljava/lang/String;

    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, "ips/"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    sput-object p0, Lcom/papa91/common/BaseAppConfig;->IPS_PATH:Ljava/lang/String;

    .line 107
    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, "tmp/"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    sput-object p0, Lcom/papa91/common/BaseAppConfig;->TMP_PATH:Ljava/lang/String;

    .line 128
    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, "romdata/"

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    sput-object p0, Lcom/papa91/common/BaseAppConfig;->ROMDATA_PATH:Ljava/lang/String;

    .line 149
    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, "log/"

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    sput-object p0, Lcom/papa91/common/BaseAppConfig;->LOG_PATH:Ljava/lang/String;

    .line 170
    .line 171
    return-void
.end method

.method public static initialise(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->initPath(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->isFirstRun(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 22
    .line 23
    sput v2, Lcom/papa91/common/BaseAppConfig;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->createAppDir(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->setDefaultConfig(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->updateConfig(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    const-string v2, "listcn.txt"

    .line 42
    .line 43
    const-string v3, "drvrom.xml"

    .line 44
    .line 45
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {p0}, Lcom/papa91/common/BaseAppConfig;->copyGuide(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->INFO_PATH:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-static {p0, v0, v2, v3}, Lcom/papa91/arcapp/AppConfig_fba;->createResFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v1}, Lcom/papa91/arcapp/AppConfig_fba;->setFirstRun(Landroid/content/Context;Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static inputDeviceToPlayer(Landroid/view/InputDevice;)I
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/4 v2, 0x4

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    :goto_1
    if-ge v1, v2, :cond_4

    .line 15
    .line 16
    sget-object v3, Lcom/papa91/arcapp/AppConfig_fba;->deviceName:[Ljava/lang/String;

    .line 17
    .line 18
    aget-object v3, v3, v1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    sget-object v3, Lcom/papa91/arcapp/AppConfig_fba;->deviceID:[I

    .line 31
    .line 32
    aget v4, v3, v1

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v4, v3, :cond_3

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    if-nez v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    aput p0, v3, v1

    .line 50
    .line 51
    return v1

    .line 52
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    return v0
.end method

.method public static isAnalogPretty(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static isFirstRun(Landroid/content/Context;)Z
    .locals 6

    .line 1
    const-string v0, "version"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "firstRun"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 28
    .line 29
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ge v4, p0, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v3, v2

    .line 47
    :goto_0
    move v2, v3

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_1
    return v2
.end method

.method static isGameFile(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, ".fba"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, ".zip"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, ".iso"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return v1

    .line 28
    :cond_1
    :goto_0
    const-string v0, "pgm.zip"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    const-string v0, "neogeo.zip"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_3
    :goto_1
    return v1
.end method

.method public static isPgmGame(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    sget-object v2, Lcom/papa91/arcapp/AppConfig_fba;->strPgmGame:[Ljava/lang/String;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v1, v3, :cond_2

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    return v0
.end method

.method public static isTiltSensor(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "PREF_TILT_SENSOR"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static lockScreenOrientation(Landroid/content/Context;I)V
    .locals 2

    .line 1
    check-cast p0, Landroid/app/Activity;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 p1, 0x9

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 p1, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static md5string(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    array-length v3, p0

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    aget-char v3, p0, v2

    .line 14
    .line 15
    int-to-byte v3, v3

    .line 16
    aput-byte v3, v0, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    const-string v2, "MD5"

    .line 22
    .line 23
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    array-length p0, p0

    .line 28
    invoke-virtual {v2, v0, v1, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->toHexString([B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    :catch_0
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public static md5sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const/16 v0, 0x400

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p0, "MD5"

    .line 24
    .line 25
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-lez v3, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {p0, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->toHexString([B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p0

    .line 52
    :catch_0
    return-object v1
.end method

.method public static saveLastDir(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "LAST_DIR"

    .line 10
    .line 11
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static saveStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method static setDefaultConfig(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/papa91/arcapp/AppConfig_fba;->setVpadStyle(Landroid/content/Context;I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x1

    .line 14
    sput-boolean v1, Lcom/papa91/common/BaseAppConfig;->enableAudio:Z

    .line 15
    .line 16
    sput v1, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    .line 17
    .line 18
    sput-boolean v1, Lcom/papa91/common/BaseAppConfig;->renderQuality:Z

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    sput v2, Lcom/papa91/common/BaseAppConfig;->frameSkip:I

    .line 22
    .line 23
    sput v1, Lcom/papa91/common/BaseAppConfig;->screenOrientation:I

    .line 24
    .line 25
    sput v0, Lcom/papa91/common/BaseAppConfig;->screenMode:I

    .line 26
    .line 27
    sput-boolean v1, Lcom/papa91/common/BaseAppConfig;->enablePad:Z

    .line 28
    .line 29
    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enableVibrator:Z

    .line 30
    .line 31
    sput-boolean v1, Lcom/papa91/common/BaseAppConfig;->enablePhysicalKey:Z

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    sput v2, Lcom/papa91/common/BaseAppConfig;->cpuCores:I

    .line 35
    .line 36
    const-string v2, "enableAudio"

    .line 37
    .line 38
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    sget v2, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    .line 42
    .line 43
    const-string v3, "renderMode"

    .line 44
    .line 45
    if-ne v2, v1, :cond_0

    .line 46
    .line 47
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    .line 53
    .line 54
    :goto_0
    const-string v2, "renderQuality"

    .line 55
    .line 56
    sget-boolean v3, Lcom/papa91/common/BaseAppConfig;->renderQuality:Z

    .line 57
    .line 58
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    sget v2, Lcom/papa91/common/BaseAppConfig;->screenOrientation:I

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "screenOrient"

    .line 68
    .line 69
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    .line 72
    sget v2, Lcom/papa91/common/BaseAppConfig;->frameSkip:I

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "frameSkip"

    .line 79
    .line 80
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    sget v2, Lcom/papa91/common/BaseAppConfig;->screenMode:I

    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "screenMode"

    .line 90
    .line 91
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    .line 93
    .line 94
    const-string v2, "enableVPad"

    .line 95
    .line 96
    sget-boolean v3, Lcom/papa91/common/BaseAppConfig;->enablePad:Z

    .line 97
    .line 98
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    const-string v2, "enableVibrator"

    .line 102
    .line 103
    sget-boolean v3, Lcom/papa91/common/BaseAppConfig;->enableVibrator:Z

    .line 104
    .line 105
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    const-string v2, "enablePhysicalKey"

    .line 109
    .line 110
    sget-boolean v3, Lcom/papa91/common/BaseAppConfig;->enablePhysicalKey:Z

    .line 111
    .line 112
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    .line 114
    .line 115
    const-string v2, "hideAds"

    .line 116
    .line 117
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    .line 119
    .line 120
    const-string v2, "vpadPlayer"

    .line 121
    .line 122
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    .line 125
    const-string v2, "autoMultiThread"

    .line 126
    .line 127
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 128
    .line 129
    .line 130
    const-string v2, "analogPretty"

    .line 131
    .line 132
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    .line 134
    .line 135
    const-string v2, "enableOneController"

    .line 136
    .line 137
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    .line 139
    .line 140
    const-string v0, "analogDeadzoneNEW"

    .line 141
    .line 142
    const-string v2, "1"

    .line 143
    .line 144
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    .line 146
    .line 147
    const-string v0, "analogExpandzoneNEW"

    .line 148
    .line 149
    const-string v2, "2"

    .line 150
    .line 151
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    .line 153
    .line 154
    const-string v0, "buttonExpandzoneNEW"

    .line 155
    .line 156
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    .line 158
    .line 159
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    .line 161
    .line 162
    return v1
.end method

.method static setFirstRun(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "firstRun"

    .line 10
    .line 11
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static setVpadStyle(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "PREF_VPAD_STYLE"

    .line 10
    .line 11
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static showPlayerButton(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "vpadPlayer"

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v2, p0

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/papa91/arcapp/AppConfig_fba;->HEX_DIGITS:[C

    .line 14
    .line 15
    aget-byte v3, p0, v1

    .line 16
    .line 17
    and-int/lit16 v3, v3, 0xf0

    .line 18
    .line 19
    ushr-int/lit8 v3, v3, 0x4

    .line 20
    .line 21
    aget-char v3, v2, v3

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    aget-byte v3, p0, v1

    .line 27
    .line 28
    and-int/lit8 v3, v3, 0xf

    .line 29
    .line 30
    aget-char v2, v2, v3

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static updateConfig(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "zh"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v3, "CN"

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sput v1, Lcom/papa91/common/BaseAppConfig;->language:I

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    sput v2, Lcom/papa91/common/BaseAppConfig;->language:I

    .line 52
    .line 53
    :goto_1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v0, "enableAudio"

    .line 58
    .line 59
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enableAudio:Z

    .line 64
    .line 65
    invoke-static {}, Lcom/papa91/arcapp/AppConfig_fba;->IsXperiaPlay()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->IsXperiaPlay:Z

    .line 70
    .line 71
    invoke-static {}, Lcom/papa91/arcapp/AppConfig_fba;->getNumCores()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-le v0, v2, :cond_2

    .line 76
    .line 77
    const-string v0, "autoMultiThread"

    .line 78
    .line 79
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lcom/papa91/arcapp/AppConfig_fba;->getNumCores()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    sput v0, Lcom/papa91/common/BaseAppConfig;->cpuCores:I

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    sput v2, Lcom/papa91/common/BaseAppConfig;->cpuCores:I

    .line 93
    .line 94
    :goto_2
    const-string v0, "renderMode"

    .line 95
    .line 96
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    sput v2, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    sput v1, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    .line 106
    .line 107
    :goto_3
    const-string v0, "renderQuality"

    .line 108
    .line 109
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->renderQuality:Z

    .line 114
    .line 115
    const-string v0, "screenMode"

    .line 116
    .line 117
    const-string v1, "0"

    .line 118
    .line 119
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    sput v0, Lcom/papa91/common/BaseAppConfig;->screenMode:I

    .line 128
    .line 129
    const-string v0, "frameSkip"

    .line 130
    .line 131
    const-string v1, "-1"

    .line 132
    .line 133
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    sput v0, Lcom/papa91/common/BaseAppConfig;->frameSkip:I

    .line 142
    .line 143
    const-string v0, "turboSpeed"

    .line 144
    .line 145
    const/16 v1, 0x8

    .line 146
    .line 147
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    sput v0, Lcom/papa91/common/BaseAppConfig;->turboSpeed:I

    .line 152
    .line 153
    const-string v0, "enableVibrator"

    .line 154
    .line 155
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enableVibrator:Z

    .line 160
    .line 161
    const-string v0, "enableVPad"

    .line 162
    .line 163
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enablePad:Z

    .line 168
    .line 169
    const-string v0, "vpadAutoLayout"

    .line 170
    .line 171
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->bAutoLayoutBtn:Z

    .line 176
    .line 177
    const-string v0, "enablePhysicalKey"

    .line 178
    .line 179
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enablePhysicalKey:Z

    .line 184
    .line 185
    const-string v0, "enableOneController"

    .line 186
    .line 187
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    sput-boolean p0, Lcom/papa91/common/BaseAppConfig;->oneController:Z

    .line 192
    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    sget-boolean v0, Lcom/papa91/common/BaseAppConfig;->autoSearchRom:Z

    .line 199
    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v0, " "

    .line 204
    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    sget-boolean v1, Lcom/papa91/common/BaseAppConfig;->enableAudio:Z

    .line 209
    .line 210
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    sget-boolean v1, Lcom/papa91/common/BaseAppConfig;->enableVibrator:Z

    .line 217
    .line 218
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    sget v1, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    .line 225
    .line 226
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    sget v1, Lcom/papa91/common/BaseAppConfig;->screenMode:I

    .line 233
    .line 234
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    sget-object v1, Lcom/papa91/common/BaseAppConfig;->vkeypadLayout:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    sget v1, Lcom/papa91/common/BaseAppConfig;->controlScale:F

    .line 249
    .line 250
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    sget-boolean v0, Lcom/papa91/common/BaseAppConfig;->enablePhysicalKey:Z

    .line 257
    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->logD(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-void
.end method
