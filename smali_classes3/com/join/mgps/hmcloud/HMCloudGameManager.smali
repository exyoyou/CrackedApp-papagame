.class public Lcom/join/mgps/hmcloud/HMCloudGameManager;
.super Lcom/join/mgps/hmcloud/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/hmcloud/HMCloudGameManager$f;,
        Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;,
        Lcom/join/mgps/hmcloud/HMCloudGameManager$g;
    }
.end annotation


# static fields
.field private static volatile A:Lcom/join/mgps/hmcloud/HMCloudGameManager; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static B:I = 0x1

.field public static C:I = 0x2

.field public static D:I = 0x3

.field public static E:I = 0x4

.field public static F:I = 0x5

.field public static G:I = 0x64

.field public static H:I = 0x65

.field public static I:I = 0x66

.field public static J:I = 0x67

.field public static K:I = 0x68

.field private static final z:Ljava/lang/String; = "HMCloudGameManager"


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field h:Lcom/join/mgps/Util/q0;

.field private i:Landroid/content/Context;

.field j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

.field private l:Lcom/join/mgps/hmcloud/t;

.field private m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

.field n:Lcom/wufan/user/service/protobuf/UserInfo;

.field o:Ljava/lang/String;

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

.field s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

.field t:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

.field u:Z

.field v:I

.field private w:Landroid/os/Handler;

.field private x:Landroid/os/Handler;

.field y:Lcom/kongzue/dialogx/dialogs/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/s;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->d:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->g:Z

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    iput-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->o:Ljava/lang/String;

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 24
    .line 25
    const/16 v2, 0xb4

    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 31
    .line 32
    new-instance v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 40
    .line 41
    const/16 v2, 0x3c

    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->u:Z

    .line 49
    .line 50
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->v:I

    .line 51
    .line 52
    new-instance v0, Landroid/os/Handler;

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 63
    .line 64
    new-instance v0, Landroid/os/Handler;

    .line 65
    .line 66
    new-instance v1, Lcom/join/mgps/hmcloud/a;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/join/mgps/hmcloud/a;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->x:Landroid/os/Handler;

    .line 75
    .line 76
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 79
    .line 80
    return-void
.end method

.method static synthetic A(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->p:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic A0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 4
    .line 5
    iget-wide v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/kotlin/network/message/MessageManager;->joinQueue(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic B(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic B0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/HMCloudMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x10000000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f0()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->g(J)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "_scene"

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l0()V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnFloating:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLineupMini:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method static synthetic C(Lcom/join/mgps/hmcloud/HMCloudGameManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 2
    .line 3
    return p0
.end method

.method private synthetic C0(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    sget v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->J:I

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->K:I

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f1()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method static synthetic D(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l:Lcom/join/mgps/hmcloud/t;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic D0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E(Lcom/join/mgps/hmcloud/HMCloudGameManager;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Z0(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic E0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic F0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic G0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H(Lcom/join/mgps/hmcloud/HMCloudGameManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic I(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic J(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method private O()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->x:Landroid/os/Handler;

    .line 2
    .line 3
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->K:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->x:Landroid/os/Handler;

    .line 9
    .line 10
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->K:I

    .line 11
    .line 12
    const-wide/16 v2, 0xbb8

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private O0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->g:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->u:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l0()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/Util/v0;->c()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private P()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->v:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 15
    .line 16
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->H:I

    .line 17
    .line 18
    const-wide/16 v2, 0x3e8

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    iget v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->v:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->v:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->x:Landroid/os/Handler;

    .line 32
    .line 33
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->J:I

    .line 34
    .line 35
    const-wide/16 v2, 0xbb8

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v4, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 42
    .line 43
    const v5, 0x7f080870

    .line 44
    .line 45
    .line 46
    const-string v6, "\u7f51\u7edc\u5f02\u5e38"

    .line 47
    .line 48
    const-string v7, "\u9000\u51fa\u6e38\u620f"

    .line 49
    .line 50
    const-string v8, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5"

    .line 51
    .line 52
    new-instance v9, Lcom/join/mgps/hmcloud/d;

    .line 53
    .line 54
    invoke-direct {v9, p0}, Lcom/join/mgps/hmcloud/d;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {v4 .. v9}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v2, "cloudGameError-1 err:[\u7f51\u7edc\u5f02\u5e38]"

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    return-void
.end method

.method private P0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->i()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->i()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->i()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private varargs Q([I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whats"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget v2, p1, v1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public static W()Lcom/join/mgps/hmcloud/HMCloudGameManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->A:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->A:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->A:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 13
    .line 14
    return-object v0
.end method

.method private Z0(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "delay"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private f1()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->j:I

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    sget-object v2, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 26
    .line 27
    const v3, 0x7f080871

    .line 28
    .line 29
    .line 30
    const-string v4, "\u68c0\u6d4b\u5230\u8d26\u53f7\u4fe1\u606f\u6539\u53d8"

    .line 31
    .line 32
    const-string v5, "\u9000\u51fa\u6e38\u620f"

    .line 33
    .line 34
    const-string v6, "1\u3001\u53ef\u80fd\u56e0\u60a8\u767b\u5f55\u5176\u4ed6\u8d26\u53f7\u5bfc\u81f4\n2\u3001\u53ef\u80fd\u56e0\u5176\u4ed6\u8bbe\u5907\u767b\u5f55\u60a8\u8d26\u53f7\u5bfc\u81f4"

    .line 35
    .line 36
    new-instance v7, Lcom/join/mgps/hmcloud/m;

    .line 37
    .line 38
    invoke-direct {v7, p0}, Lcom/join/mgps/hmcloud/m;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v2 .. v7}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 45
    .line 46
    const-string v1, "cloudGameError-3"

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->R0(Lcom/papa/sim/statistic/EventP$ResultCode;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private j0(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x2711

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "cloudGameError-1 err:[10001]"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->o:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 93
    .line 94
    .line 95
    sget-object v3, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 96
    .line 97
    const v4, 0x7f080870

    .line 98
    .line 99
    .line 100
    const-string v5, "\u6d88\u606f\u63d0\u9192"

    .line 101
    .line 102
    const-string v6, "\u7acb\u5373\u91cd\u542f"

    .line 103
    .line 104
    const-string v7, "\u6392\u961f\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8fdb\u5165"

    .line 105
    .line 106
    new-instance v8, Lcom/join/mgps/hmcloud/g;

    .line 107
    .line 108
    invoke-direct {v8, p0}, Lcom/join/mgps/hmcloud/g;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {v3 .. v8}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/16 v1, 0x2715

    .line 121
    .line 122
    if-ne v0, v1, :cond_2

    .line 123
    .line 124
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 128
    .line 129
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v2, "cloudGameError-1 err:[10005]"

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->o:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 186
    .line 187
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 198
    .line 199
    .line 200
    sget-object v3, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 201
    .line 202
    const v4, 0x7f080870

    .line 203
    .line 204
    .line 205
    const-string v5, "\u6d88\u606f\u63d0\u9192"

    .line 206
    .line 207
    const-string v6, "\u7acb\u5373\u91cd\u542f"

    .line 208
    .line 209
    const-string v7, "\u6e38\u620f\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u8fdb\u5165"

    .line 210
    .line 211
    new-instance v8, Lcom/join/mgps/hmcloud/h;

    .line 212
    .line 213
    invoke-direct {v8, p0}, Lcom/join/mgps/hmcloud/h;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {v3 .. v8}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    const/16 v1, 0x2719

    .line 226
    .line 227
    if-ne v0, v1, :cond_3

    .line 228
    .line 229
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 233
    .line 234
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 246
    .line 247
    .line 248
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 249
    .line 250
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 253
    .line 254
    .line 255
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    const-string v2, "cloudGameError-4"

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->o:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 288
    .line 289
    .line 290
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 291
    .line 292
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 303
    .line 304
    .line 305
    sget-object v3, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 306
    .line 307
    const v4, 0x7f080870

    .line 308
    .line 309
    .line 310
    const-string v5, "\u6d88\u606f\u63d0\u9192"

    .line 311
    .line 312
    const-string v6, "\u7acb\u5373\u91cd\u542f"

    .line 313
    .line 314
    const-string v7, "\u6e38\u620f\u706b\u7206,\u6392\u961f\u4eba\u6570\u8fc7\u591a\uff0c\u8bf7\u7a0d\u540e\u518d\u6765"

    .line 315
    .line 316
    new-instance v8, Lcom/join/mgps/hmcloud/i;

    .line 317
    .line 318
    invoke-direct {v8, p0}, Lcom/join/mgps/hmcloud/i;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {v3 .. v8}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    const/16 v1, 0x2713

    .line 331
    .line 332
    if-ne v0, v1, :cond_4

    .line 333
    .line 334
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 335
    .line 336
    new-instance v1, Lcom/join/mgps/hmcloud/j;

    .line 337
    .line 338
    invoke-direct {v1, p0}, Lcom/join/mgps/hmcloud/j;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 339
    .line 340
    .line 341
    const-wide/16 v2, 0xbb8

    .line 342
    .line 343
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    .line 345
    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :cond_4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    const/16 v1, 0x271b

    .line 353
    .line 354
    if-ne v0, v1, :cond_5

    .line 355
    .line 356
    sget-object v2, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 357
    .line 358
    const/4 v3, 0x0

    .line 359
    const-string v4, "\u6e29\u99a8\u63d0\u793a"

    .line 360
    .line 361
    const-string v5, "\u6211\u77e5\u9053\u4e86"

    .line 362
    .line 363
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getError()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    new-instance v7, Lcom/join/mgps/hmcloud/k;

    .line 368
    .line 369
    invoke-direct {v7, p0}, Lcom/join/mgps/hmcloud/k;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {v2 .. v7}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 373
    .line 374
    .line 375
    goto :goto_0

    .line 376
    :cond_5
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 377
    .line 378
    .line 379
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 380
    .line 381
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 393
    .line 394
    .line 395
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 396
    .line 397
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 400
    .line 401
    .line 402
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 413
    .line 414
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v3, "cloudGameError-1 err:["

    .line 428
    .line 429
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    const-string v3, "]"

    .line 440
    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->o:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 459
    .line 460
    .line 461
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 462
    .line 463
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 468
    .line 469
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 474
    .line 475
    .line 476
    sget-object v3, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 477
    .line 478
    const v4, 0x7f080870

    .line 479
    .line 480
    .line 481
    const-string v5, "\u6d88\u606f\u63d0\u9192"

    .line 482
    .line 483
    const-string v6, "\u7acb\u5373\u91cd\u542f"

    .line 484
    .line 485
    const-string v7, "\u4e91\u6e38\u620f\u542f\u52a8\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    .line 486
    .line 487
    new-instance v8, Lcom/join/mgps/hmcloud/l;

    .line 488
    .line 489
    invoke-direct {v8, p0}, Lcom/join/mgps/hmcloud/l;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual/range {v3 .. v8}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 493
    .line 494
    .line 495
    :goto_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n0()Z

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    if-eqz v0, :cond_7

    .line 504
    .line 505
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 506
    .line 507
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    if-eqz v1, :cond_6

    .line 519
    .line 520
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 529
    .line 530
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 531
    .line 532
    .line 533
    :cond_6
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 542
    .line 543
    .line 544
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGameLineUp:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 545
    .line 546
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 555
    .line 556
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->fail:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 629
    .line 630
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    .line 639
    .line 640
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    .line 642
    .line 643
    const-string v3, "err:"

    .line 644
    .line 645
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 664
    .line 665
    .line 666
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 667
    .line 668
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 669
    .line 670
    .line 671
    move-result-object p1

    .line 672
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 673
    .line 674
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 679
    .line 680
    .line 681
    :cond_7
    return-void
.end method

.method private k0(Landroid/content/Intent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    const-string v0, "_scene"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/papa/sim/statistic/EventP$TypeCode;->notify:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->a1(Lcom/papa/sim/statistic/EventP$TypeCode;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x2

    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t0()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x3

    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->S()V

    .line 39
    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b:Z

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f:Z

    .line 44
    .line 45
    sget-object v2, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 48
    .line 49
    iget-wide v3, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 58
    .line 59
    iget-object v6, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v7, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->s:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual/range {v2 .. v7}, Lcom/join/kotlin/network/message/MessageManager;->enterGame(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lcom/papa/sim/statistic/EventP$TypeCode;->popup:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->a1(Lcom/papa/sim/statistic/EventP$TypeCode;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/v0;->c()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->S()V

    .line 76
    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b:Z

    .line 79
    .line 80
    iput-boolean v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f:Z

    .line 81
    .line 82
    sget-object v2, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 85
    .line 86
    iget-wide v3, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 95
    .line 96
    iget-object v6, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v7, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->s:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual/range {v2 .. v7}, Lcom/join/kotlin/network/message/MessageManager;->enterGame(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 104
    .line 105
    return-void
.end method

.method private l1(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "progress"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l:Lcom/join/mgps/hmcloud/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/join/mgps/hmcloud/t;->onUpdateProgress(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/hmcloud/HMCloudGameManager;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->C0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->u0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->B0()V

    return-void
.end method

.method public static synthetic p(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->G0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private p0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->h:Lcom/join/mgps/Util/q0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/Util/q0;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/join/mgps/Util/q0;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->h:Lcom/join/mgps/Util/q0;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->h:Lcom/join/mgps/Util/q0;

    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/hmcloud/b;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/hmcloud/b;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/q0;->u(Lcom/join/mgps/Util/q0$d;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic q(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->A0()V

    return-void
.end method

.method public static synthetic r(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->v0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic s(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->D0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic t(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic u0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->x0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic v0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic w0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->z0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic x0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lcom/join/mgps/hmcloud/HMCloudGameManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->E0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic y0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z(Lcom/join/mgps/hmcloud/HMCloudGameManager;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l1(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic z0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public H0(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    instance-of v0, p1, Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    return-void

    .line 16
    :cond_2
    instance-of v0, p1, Lcom/papa91/activity/EmuBaseActivity;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    return-void

    .line 21
    :cond_3
    instance-of v0, p1, Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    return-void

    .line 26
    :cond_4
    instance-of v0, p1, Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    return-void

    .line 31
    :cond_5
    instance-of v0, p1, Lcom/join/mgps/activity/SimulatorExitPlayActivity;

    .line 32
    .line 33
    if-eqz v0, :cond_6

    .line 34
    .line 35
    return-void

    .line 36
    :cond_6
    instance-of v0, p1, Lcom/join/mgps/activity/HandShankPSPActivity;

    .line 37
    .line 38
    if-eqz v0, :cond_7

    .line 39
    .line 40
    return-void

    .line 41
    :cond_7
    instance-of v0, p1, Lcom/papa91/arc/EmuActivity_psp;

    .line 42
    .line 43
    if-eqz v0, :cond_8

    .line 44
    .line 45
    return-void

    .line 46
    :cond_8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->p:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 54
    .line 55
    if-eqz p1, :cond_9

    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 58
    .line 59
    if-eqz p1, :cond_9

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->g1()V

    .line 62
    .line 63
    .line 64
    :cond_9
    return-void
.end method

.method public I0(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "intent"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k0(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public J0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFirst"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/join/mgps/event/v;

    .line 7
    .line 8
    sget-object v0, Lcom/join/mgps/activity/FullShareWebActivity;->EVENT_NAME:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/join/mgps/event/v;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public K(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchGameId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/network/message/MessageManager;->isMessageAlive()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string p1, "\u6e38\u620f\u5207\u6362\u5931\u8d25"

    .line 14
    .line 15
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 20
    .line 21
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    move-wide v4, p1

    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/join/kotlin/network/message/MessageManager;->changeGame(JLjava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public K0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public L(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineList"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public L0(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k0(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public M(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public M0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->O()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public N(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "extra"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l:Lcom/join/mgps/hmcloud/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/join/mgps/hmcloud/t;->onChangeUiState(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public N0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->O0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l:Lcom/join/mgps/hmcloud/t;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/join/mgps/hmcloud/t;->onRestUI()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l:Lcom/join/mgps/hmcloud/t;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/join/mgps/hmcloud/t;->onReload()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public Q0(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineList"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public R()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->d:Z

    .line 10
    .line 11
    sget-object v1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/kotlin/network/message/MessageManager;->logout()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->O0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/s;->l()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->x:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b1(Lcom/join/mgps/hmcloud/t;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->releaseRequestManager()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public R0(Lcom/papa/sim/statistic/EventP$ResultCode;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "reason"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object p2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->e2()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public S0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnBuy:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "\u5f00\u901a\u4f1a\u5458"

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 123
    .line 124
    .line 125
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public T()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 20
    .line 21
    iget-wide v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 22
    .line 23
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/kotlin/network/message/MessageManager;->quitQueue(JLjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGameLineUp:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->cancel:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "\u4e3b\u52a8\u53d6\u6d88\u6392\u961f"

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 167
    .line 168
    .line 169
    :cond_2
    return-void
.end method

.method public T0(Lcom/papa/sim/statistic/EventP$TypeCode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeCode"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLineupChange:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public U()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->V()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->R()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public U0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnBuy:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "\u8865\u5145\u65f6\u957f"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public V()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->d:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->u:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l:Lcom/join/mgps/hmcloud/t;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/join/mgps/hmcloud/t;->onFinishGame()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->O0()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public V0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "queueIndex"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGameLineUp:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->start:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, ""

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ExtBean;->setMemberCount(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public W0(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineList"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnChoose:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameChooseServ:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public X()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->q:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public X0(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;Lcom/papa/sim/statistic/EventP$ResultCode;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lineList",
            "resultCode",
            "reason"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    sget-object p2, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGameServChange:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object p3, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget-object p2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->p:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public Y0(Lcom/papa/sim/statistic/EventP$ResultCode;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "reason"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGameConnServ:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object p2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget-object p2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->r:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public a0()Lcom/join/mgps/cloud/bean/ConfigInfo;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 7
    .line 8
    iget-wide v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ""

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
    move-result-object v3

    .line 22
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountStr()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 33
    .line 34
    iget-object v10, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->g:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 35
    .line 36
    iget-object v11, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->h:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    if-eqz v10, :cond_0

    .line 40
    .line 41
    invoke-virtual {v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->h:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v11}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    const/4 v8, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v8, v1

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 74
    .line 75
    iput v8, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->e:I

    .line 76
    .line 77
    new-instance v1, Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 78
    .line 79
    iget v4, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->f:I

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->d0()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 86
    .line 87
    iget v6, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->c:I

    .line 88
    .line 89
    iget v7, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->d:I

    .line 90
    .line 91
    move-object v2, v1

    .line 92
    invoke-direct/range {v2 .. v11}, Lcom/join/mgps/cloud/bean/ConfigInfo;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method public a1(Lcom/papa/sim/statistic/EventP$TypeCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeCode"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLineupMini:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public b1(Lcom/join/mgps/hmcloud/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proxy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l:Lcom/join/mgps/hmcloud/t;

    .line 2
    .line 3
    return-void
.end method

.method public c(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 6
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/hmcloud/s;->c(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->RESULT_SUCCESS:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getPosition()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getWaitPosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getBid()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getAccessKey()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getAppChannel()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getUnusedQueueCards()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iput-boolean v4, v3, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->m:Z

    .line 44
    .line 45
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getQuitGameTime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    iput-wide v4, v3, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->t:J

    .line 52
    .line 53
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->p:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->q:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->r:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->q:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    const-string p1, "\u670d\u52a1\u914d\u7f6e\u9519\u8bef\uff0c\u8bf7\u66f4\u6362\u7ebf\u8def\u91cd\u8bd5"

    .line 88
    .line 89
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j0(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method

.method public c0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c1(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->g:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->g1()V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/papa/sim/statistic/EventP$TypeCode;->btnHide:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    return-void
.end method

.method public d(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 6
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/hmcloud/s;->d(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->RESULT_SUCCESS:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->d:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l:Lcom/join/mgps/hmcloud/t;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/join/mgps/hmcloud/t;->onReload()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->d:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object v0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 29
    .line 30
    const v1, 0x7f080870

    .line 31
    .line 32
    .line 33
    const-string v2, "\u6d88\u606f\u63d0\u9192"

    .line 34
    .line 35
    const-string v3, "\u7acb\u5373\u91cd\u542f"

    .line 36
    .line 37
    const-string v4, "\u6e38\u620f\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u91cd\u8fdb"

    .line 38
    .line 39
    new-instance v5, Lcom/join/mgps/hmcloud/e;

    .line 40
    .line 41
    invoke-direct {v5, p0}, Lcom/join/mgps/hmcloud/e;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->d:Z

    .line 49
    .line 50
    return-void
.end method

.method public d0()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->b:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    :cond_1
    return v1
.end method

.method public d1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playGame"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public e(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 2
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/hmcloud/s;->e(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->RESULT_SUCCESS:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getPosition()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getWaitPosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getUnusedQueueCards()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput-boolean v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->m:Z

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f:Z

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->u:Z

    .line 38
    .line 39
    iget v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 40
    .line 41
    if-gtz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getIsQueue()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b:Z

    .line 50
    .line 51
    new-instance p1, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "serverName"

    .line 71
    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "queueIndex"

    .line 76
    .line 77
    iget v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->QUEUE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 83
    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->H:I

    .line 88
    .line 89
    sget v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->B:I

    .line 90
    .line 91
    filled-new-array {p1, v0}, [I

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Q([I)V

    .line 96
    .line 97
    .line 98
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F:I

    .line 99
    .line 100
    const-wide/16 v0, 0x1f4

    .line 101
    .line 102
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Z0(IJ)V

    .line 103
    .line 104
    .line 105
    iget p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->V0(I)V

    .line 108
    .line 109
    .line 110
    :cond_1
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I:I

    .line 111
    .line 112
    const-wide/16 v0, 0x1388

    .line 113
    .line 114
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Z0(IJ)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j0(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    return-void
.end method

.method public e0()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 13
    .line 14
    iget-wide v2, v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    return-object v1
.end method

.method public e1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->j2()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x5

    .line 18
    new-array v1, v1, [F

    .line 19
    .line 20
    fill-array-data v1, :array_0

    .line 21
    .line 22
    .line 23
    const-string v2, "translationX"

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-wide/16 v1, 0x190

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v1, 0x64

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        -0x3e100000    # -30.0f
        0x41f00000    # 30.0f
        0x0
    .end array-data
.end method

.method public f(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 10
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/hmcloud/s;->f(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->RESULT_SUCCESS:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_3

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->v:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l:Lcom/join/mgps/hmcloud/t;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/join/mgps/hmcloud/t;->onFinishGame()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    sget-object p1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/kotlin/network/message/MessageManager;->isLogin()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->u:Z

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 40
    .line 41
    iget-wide v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 42
    .line 43
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/kotlin/network/message/MessageManager;->joinQueue(JLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->x:Landroid/os/Handler;

    .line 53
    .line 54
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->J:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/join/kotlin/network/message/MessageManager;->setLoginState(Z)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getLogicErrorCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->LOGIN_FAIL:Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;

    .line 70
    .line 71
    if-ne v0, v1, :cond_6

    .line 72
    .line 73
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    sget-object v2, Lcom/join/mgps/hmcloud/HMCloudGameManager;->z:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getError()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->v:I

    .line 100
    .line 101
    const/4 v1, 0x3

    .line 102
    if-ge v0, v1, :cond_4

    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 105
    .line 106
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->H:I

    .line 107
    .line 108
    const-wide/16 v2, 0xbb8

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    sget-object v4, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 115
    .line 116
    const v5, 0x7f080870

    .line 117
    .line 118
    .line 119
    const-string v6, "\u7f51\u7edc\u5f02\u5e38"

    .line 120
    .line 121
    const-string v7, "\u9000\u51fa\u6e38\u620f"

    .line 122
    .line 123
    const-string v8, "\u6e38\u620f\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    .line 124
    .line 125
    new-instance v9, Lcom/join/mgps/hmcloud/f;

    .line 126
    .line 127
    invoke-direct {v9, p0}, Lcom/join/mgps/hmcloud/f;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {v4 .. v9}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 134
    .line 135
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 156
    .line 157
    .line 158
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v2, "cloudGameError-1 err:[\u767b\u5f55\u91cd\u8bd5\u8d85\u9650]"

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 208
    .line 209
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 220
    .line 221
    .line 222
    :cond_6
    :goto_0
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/join/kotlin/network/message/MessageManager;->isLogin()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_7

    .line 229
    .line 230
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j0(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    :goto_1
    return-void
.end method

.method public f0()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    iget-wide v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->u:J

    .line 9
    .line 10
    return-wide v0
.end method

.method public g(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/hmcloud/s;->g(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->x:Landroid/os/Handler;

    .line 7
    .line 8
    sget v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->J:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->x:Landroid/os/Handler;

    .line 14
    .line 15
    sget v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->J:I

    .line 16
    .line 17
    const-wide/16 v1, 0x7d0

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public g0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public g1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 2
    .line 3
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->E:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 9
    .line 10
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->E:I

    .line 11
    .line 12
    const-wide/16 v2, 0x4b0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 8
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/hmcloud/s;->h(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->RESULT_SUCCESS:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getPosition()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getWaitPosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-wide v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getGameId()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    cmp-long v4, v0, v2

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getJobId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getResourceId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->s:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getUnusedQueueCards()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput-boolean p1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->m:Z

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 64
    .line 65
    .line 66
    iget-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 67
    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Lcom/join/mgps/event/v;

    .line 75
    .line 76
    const-string v1, "CloudGameSwitch"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/join/mgps/event/v;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f:Z

    .line 86
    .line 87
    invoke-static {}, Lcom/join/mgps/Util/v0;->c()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l0()V

    .line 91
    .line 92
    .line 93
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->D:I

    .line 94
    .line 95
    const-wide/16 v0, 0x3e8

    .line 96
    .line 97
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Z0(IJ)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    sget-object v2, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 104
    .line 105
    iget-wide v3, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 106
    .line 107
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 114
    .line 115
    iget-object v6, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v7, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->s:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual/range {v2 .. v7}, Lcom/join/kotlin/network/message/MessageManager;->enterGame(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j0(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_0
    return-void
.end method

.method public h0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->s:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public h1(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iconUrl",
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/l;->Y1()Lcom/kongzue/dialogx/dialogs/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 10
    .line 11
    new-instance v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;

    .line 12
    .line 13
    const v2, 0x7f0d05ee

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0, v2, p1, p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;ILjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->h3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 23
    .line 24
    const-wide/32 v0, 0xea60

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->V1(J)Lcom/kongzue/dialogx/dialogs/l;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 v0, 0xa

    .line 32
    .line 33
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/kongzue/dialogx/dialogs/l;->v3(IIII)Lcom/kongzue/dialogx/dialogs/l;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->y:Lcom/kongzue/dialogx/dialogs/l;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/l;->j2()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const v0, 0x7f0a1a3c

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/widget/TextView;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "<font color=\'#FF0000\'>"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p2, "\u79d2</font>\u540e\u5c06\u81ea\u52a8\u653e\u5f03\uff0c\u518d\u6b21\u8fdb\u5165\u9700\u91cd\u65b0\u6392\u961f"

    .line 77
    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method public i(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 2
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/hmcloud/s;->i(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->RESULT_SUCCESS:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getPosition()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getWaitPosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getJobId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getUnusedQueueCards()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-boolean p1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->m:Z

    .line 42
    .line 43
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "serverName"

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "queueIndex"

    .line 68
    .line 69
    iget v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->QUEUE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 75
    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b:Z

    .line 81
    .line 82
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I:I

    .line 83
    .line 84
    const-wide/16 v0, 0x1388

    .line 85
    .line 86
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Z0(IJ)V

    .line 87
    .line 88
    .line 89
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F:I

    .line 90
    .line 91
    const-wide/16 v0, 0x1f4

    .line 92
    .line 93
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Z0(IJ)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j0(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 2
    .line 3
    return-object v0
.end method

.method public i1()V
    .locals 6

    .line 1
    sget-object v0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 2
    .line 3
    const v1, 0x7f080870

    .line 4
    .line 5
    .line 6
    const-string v2, "\u6d88\u606f\u63d0\u9192"

    .line 7
    .line 8
    const-string v3, "\u7acb\u5373\u91cd\u542f"

    .line 9
    .line 10
    const-string v4, "\u6392\u961f\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8fdb\u5165"

    .line 11
    .line 12
    new-instance v5, Lcom/join/mgps/hmcloud/c;

    .line 13
    .line 14
    invoke-direct {v5, p0}, Lcom/join/mgps/hmcloud/c;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public j(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 2
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/hmcloud/s;->j(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->RESULT_SUCCESS:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getPosition()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getWaitPosition()I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getSwitchoverWaitPosition()I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getUnusedQueueCards()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-boolean p1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->m:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j0(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public j1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->h:Lcom/join/mgps/Util/q0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/q0;->j()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const v1, 0x7f0a1a3b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public k1(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->u:J

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public l0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->h:Lcom/join/mgps/Util/q0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->g:Z

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/Util/q0;->m()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public m0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public m1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x320

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public n0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public o0(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineList"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/kotlin/network/message/MessageManager;->getCurrentUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/kotlin/network/message/MessageManager;->getCurrentUid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/kotlin/network/message/MessageManager;->logout()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->w:Landroid/os/Handler;

    .line 35
    .line 36
    sget v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->G:I

    .line 37
    .line 38
    const-wide/16 v1, 0x3e8

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public q0(Lcom/join/mgps/hmcloud/HMCloudGameManager$f;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 6
    .line 7
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-wide v2, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->o:Ljava/lang/String;

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->p:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->p:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/content/Context;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchCloudGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-wide v3, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 79
    .line 80
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->p0()V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->h:Lcom/join/mgps/Util/q0;

    .line 97
    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/join/mgps/Util/q0;->j()Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    const v0, 0x7f0a13af

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/join/mgps/customview/RoundedImageView;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    new-instance v3, Lcom/join/mgps/hmcloud/HMCloudGameManager$b;

    .line 124
    .line 125
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$b;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;Lcom/join/mgps/customview/RoundedImageView;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1, v3}, Lcom/join/android/app/common/utils/l;->m(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/imagepipeline/datasource/b;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 142
    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    int-to-long v0, v0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    add-long/2addr v0, v3

    .line 162
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p1}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->o:Ljava/lang/String;

    .line 177
    .line 178
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput v0, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->j:I

    .line 187
    .line 188
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    iput-boolean v0, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->k:Z

    .line 197
    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/s;->k()V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->P0()V

    .line 202
    .line 203
    .line 204
    sget-object p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->M(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;)V

    .line 207
    .line 208
    .line 209
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->B:I

    .line 210
    .line 211
    const-wide/16 v0, 0xc8

    .line 212
    .line 213
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Z0(IJ)V

    .line 214
    .line 215
    .line 216
    :cond_4
    return-void
.end method

.method public r0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/haima/hmcp/HmcpManager;->ACCESS_KEY_ID:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->p:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/haima/hmcp/HmcpManager;->CHANNEL_ID:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->r:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 33
    .line 34
    new-instance v3, Lcom/join/mgps/hmcloud/HMCloudGameManager$c;

    .line 35
    .line 36
    invoke-direct {v3, p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$c;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/haima/hmcp/HmcpManager;->init(Landroid/os/Bundle;Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 65
    .line 66
    .line 67
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGamePlug:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->init:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i:Landroid/content/Context;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 167
    .line 168
    .line 169
    :cond_1
    return-void
.end method

.method public s0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public t0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f:Z

    .line 2
    .line 3
    return v0
.end method
