.class public Lcom/MApplication;
.super Lcom/Hilt_MApplication;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation runtime Ldagger/hilt/android/HiltAndroidApp;
.end annotation


# static fields
.field public static A:Ljava/lang/String; = ""

.field public static B:Ljava/lang/String; = ""

.field public static C:Ljava/lang/String; = ""

.field public static D:Ljava/lang/String; = ""

.field public static E:Ljava/lang/String; = ""

.field public static F:Ljava/lang/String; = ""

.field public static G:I = 0x0

.field public static H:Ljava/lang/String; = ""

.field public static I:Ljava/lang/String; = ""

.field public static J:Ljava/lang/String; = null

.field public static K:Ljava/lang/String; = null

.field public static L:Ljava/lang/String; = ""

.field public static L1:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/SScrollingTxtBeanV2;",
            ">;"
        }
    .end annotation
.end field

.field public static M:Ljava/lang/String; = "0"

.field public static N:Ljava/lang/String; = ""

.field public static O:Ljava/lang/String; = "0"

.field public static P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean; = null

.field public static Q:Z = false

.field public static R:Ljava/lang/String; = ""

.field public static R1:I = 0x0

.field public static S:I = 0x0

.field public static T:I = 0x0

.field public static U:Lcom/join/mgps/dto/HomeViewSwich; = null

.field public static V:Lcom/join/mgps/activity/login/LoginCfgsBean; = null

.field private static V1:Ljava/lang/String; = null

.field public static W:Z = false

.field public static X:Z = false

.field public static Y:I = 0x0

.field public static Z:Z = false

.field public static a2:Z = false

.field public static b1:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean; = null

.field public static b2:Z = false

.field public static c2:Z = false

.field private static d2:I = 0x0

.field public static f1:Lcom/join/mgps/dto/PublicVideoCfgBean; = null

.field public static i1:I = 0x2

.field public static l1:Ljava/lang/String; = ""

.field public static p0:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorRunAdTextCfgBean;",
            ">;"
        }
    .end annotation
.end field

.field public static p1:Lcom/join/android/app/common/servcie/j; = null

.field public static q1:Z = false

.field public static r1:Z = false

.field public static v1:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final x:Ljava/lang/String; = "MApplication"

.field public static y:Z = true

.field public static z:Lcom/MApplication;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/join/mgps/pref/PrefDef_;

.field private f:Ljava/lang/String;

.field g:Z

.field private final h:Landroid/content/BroadcastReceiver;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Landroid/content/BroadcastReceiver;

.field private m:Lcom/danikula/videocache/i;

.field private n:Landroid/app/Activity;

.field public o:Z

.field public p:Z

.field private q:Landroidx/lifecycle/ViewModelStore;

.field r:Lcom/papa91/arc/CContext$IVideoAdListener;

.field s:Lcom/join/mgps/ad/y;

.field t:Lcom/join/mgps/ad/j;

.field u:Lcom/join/mgps/ad/a0;

.field v:Lcom/join/mgps/ad/f;

.field w:Lcom/join/mgps/ad/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/MApplication;->v1:Ljava/util/List;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/MApplication;->a2:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    sput-boolean v1, Lcom/MApplication;->b2:Z

    .line 13
    .line 14
    sput-boolean v0, Lcom/MApplication;->c2:Z

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/Hilt_MApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/MApplication;->d:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/MApplication;->g:Z

    .line 13
    .line 14
    new-instance v1, Lcom/MApplication$5;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/MApplication$5;-><init>(Lcom/MApplication;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/MApplication;->h:Landroid/content/BroadcastReceiver;

    .line 20
    .line 21
    const-string v1, "reason"

    .line 22
    .line 23
    iput-object v1, p0, Lcom/MApplication;->i:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "homekey"

    .line 26
    .line 27
    iput-object v1, p0, Lcom/MApplication;->j:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "recentapps"

    .line 30
    .line 31
    iput-object v1, p0, Lcom/MApplication;->k:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Lcom/MApplication$6;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/MApplication$6;-><init>(Lcom/MApplication;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/MApplication;->l:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/MApplication;->p:Z

    .line 41
    .line 42
    return-void
.end method

.method private synthetic D()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.tools.AdBroadcast"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "action"

    .line 9
    .line 10
    const/16 v2, 0x3f1

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static synthetic E()V
    .locals 0

    .line 1
    return-void
.end method

.method private K()Lcom/danikula/videocache/i;
    .locals 3

    .line 1
    new-instance v0, Lcom/danikula/videocache/i$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/danikula/videocache/i$b;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const-wide/32 v1, 0x40000000

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/danikula/videocache/i$b;->i(J)Lcom/danikula/videocache/i$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x14

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/danikula/videocache/i$b;->h(I)Lcom/danikula/videocache/i$b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/danikula/videocache/i$b;->b()Lcom/danikula/videocache/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method private L()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    sget-object v1, Lcom/MApplication;->V1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->H()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sput-object v1, Lcom/MApplication;->V1:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    sget-object v0, Lcom/MApplication;->V1:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, ".papakey"

    .line 40
    .line 41
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/join/mgps/Util/o3;->a()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v2, v1}, Lcom/join/mgps/Util/o3;->z(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sput-object v1, Lcom/MApplication;->V1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    sget-object v1, Lcom/MApplication;->V1:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    sget-object v0, Lcom/MApplication;->V1:Ljava/lang/String;

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    :try_start_1
    sget-object v1, Lcom/join/mgps/Util/o1;->a:Lcom/join/mgps/Util/o1;

    .line 79
    .line 80
    const-string v2, "papakey"

    .line 81
    .line 82
    const-string v3, ""

    .line 83
    .line 84
    invoke-virtual {v1, v0, v2, v3}, Lcom/join/mgps/Util/o1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lcom/MApplication;->V1:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :goto_1
    sget-object v0, Lcom/MApplication;->V1:Ljava/lang/String;

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_4
    :goto_2
    sget-object v0, Lcom/MApplication;->V1:Ljava/lang/String;

    .line 99
    .line 100
    return-object v0
.end method

.method public static synthetic f(Lcom/MApplication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/MApplication;->D()V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/MApplication;->E()V

    return-void
.end method

.method static synthetic h(Lcom/MApplication;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/MApplication;->n:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method private k()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Lcom/join/android/app/common/utils/p;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, ":"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 68
    .line 69
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method public static l()I
    .locals 1

    .line 1
    sget v0, Lcom/MApplication;->d2:I

    .line 2
    .line 3
    return v0
.end method

.method public static m()Lcom/netease/nis/quicklogin/QuickLogin;
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/nis/quicklogin/QuickLogin;->getInstance()Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "7fb44e42eeec4a95a2d0905f5c54d52f"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/QuickLogin;->setDebugMode(Z)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static n()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    return-object v0
.end method

.method private o(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configs",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;I)",
            "Lcom/join/mgps/dto/PlayCfgBean;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-le v0, p2, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/PlayCfgBean;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method public static q(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/MApplication;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/MApplication;->m:Lcom/danikula/videocache/i;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/MApplication;->K()Lcom/danikula/videocache/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/MApplication;->m:Lcom/danikula/videocache/i;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public static s()Lcom/netease/nis/quicklogin/QuickLogin;
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/nis/quicklogin/QuickLogin;->getInstance()Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "543ff4f5e60441349f54f8716f84e97b"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/QuickLogin;->setDebugMode(Z)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private v()V
    .locals 1

    .line 1
    new-instance v0, Lcom/MApplication$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/MApplication$h;-><init>(Lcom/MApplication;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/MApplication;->r:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/papa91/arc/CContext;->setVideoAdListener(Lcom/papa91/arc/CContext$IVideoAdListener;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/h;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/h;-><init>(Lcom/MApplication;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/papa91/arc/CContext;->setLifeListener(Lcom/papa91/arc/CContext$IActivityLifeCycleListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private z()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/v0;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->s:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/MApplication$i;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/MApplication$i;-><init>(Lcom/MApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/MApplication;->s:Lcom/join/mgps/ad/y;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/y;->a()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/MApplication;->s:Lcom/join/mgps/ad/y;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/y;->d(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public B()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/w0;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/android/app/common/utils/p;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    sget-object v1, Ln6/a;->a:Ln6/a;

    .line 43
    .line 44
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ln6/a;->f(Ljava/lang/Boolean;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v1, 0x1

    .line 78
    xor-int/2addr v0, v1

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/z;->e(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lcom/MApplication$f;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/MApplication$f;-><init>(Lcom/MApplication;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 91
    .line 92
    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/constant/a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v2, "55af129367e58e94ba0025b7"

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-static {p0, v2, v0, v1, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    .line 106
    .line 107
    .line 108
    const-string v0, "563efaa5a8fe"

    .line 109
    .line 110
    const-string v2, "47378ac7ef1e9db5870c9cf62ee34a1d"

    .line 111
    .line 112
    invoke-static {p0, v0, v2}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v3}, Lcom/mob/MobSDK;->submitPolicyGrantResult(ZLcom/mob/OperationCallback;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p0}, Lcom/join/android/app/common/utils/o;->o(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p0}, Lcom/join/mgps/Util/q2;->b(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/join/android/app/common/http/MiitHelper;

    .line 125
    .line 126
    new-instance v1, Lcom/MApplication$g;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/MApplication$g;-><init>(Lcom/MApplication;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, v1}, Lcom/join/android/app/common/http/MiitHelper;-><init>(Lcom/join/android/app/common/http/MiitHelper$a;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p0}, Lcom/join/android/app/common/utils/p;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    invoke-virtual {v0, p0}, Lcom/join/android/app/common/http/MiitHelper;->getDeviceIds(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    :catch_0
    :cond_2
    return-void
.end method

.method public C(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->u:Lcom/join/mgps/ad/a0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/MApplication$a;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/MApplication$a;-><init>(Lcom/MApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/MApplication;->u:Lcom/join/mgps/ad/a0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/a0;->a()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/MApplication;->u:Lcom/join/mgps/ad/a0;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/a0;->d(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public F(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/MApplication;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public G(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/MApplication;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public H(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/MApplication;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public I(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/MApplication;->A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public J(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/MApplication;->C(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public M()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/MApplication;->L()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    sget-object v1, Lcom/MApplication;->V1:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/MApplication;->V1:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/p;->b([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    sget-object v1, Lcom/MApplication;->H:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    sget-object v1, Lcom/MApplication;->B:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    sget-object v1, Lcom/MApplication;->J:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/MApplication;->u()V

    .line 49
    .line 50
    .line 51
    :cond_2
    new-instance v1, Lcom/papa91/arc/bean/RequestHeaders;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/papa91/arc/bean/RequestHeaders;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWufankey(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/MApplication;->A:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_d(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/MApplication;->J:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Lcom/MApplication;->B:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_ad(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/MApplication;->C:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_m(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lcom/MApplication;->D:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_i(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lcom/MApplication;->E:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_pm(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lcom/MApplication;->F:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_sn(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lcom/MApplication;->H:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setAndroid_ver(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Lcom/MApplication;->L:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_o(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lcom/MApplication;->M:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setArm64(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget v0, Lcom/MApplication;->G:I

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_single(I)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lcom/MApplication;->I:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_am_v(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->p0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "eventName"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "gameId"

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public O(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundExclude"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/MApplication;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public P(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->t:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Q(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->s:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public R(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->u:Lcom/join/mgps/ad/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/va/overmind/VApp;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/MApplication;->n:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->q:Landroidx/lifecycle/ViewModelStore;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Landroid/app/Activity;)V
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
    iget-object v0, p0, Lcom/MApplication;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/MApplication;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/MApplication;->d:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    .line 1
    instance-of p2, p1, Lcom/join/mgps/activity/WarningDialogActivity;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/MApplication;->n:Landroid/app/Activity;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const v0, 0x1020002

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/ViewGroup;

    .line 19
    .line 20
    const v0, 0x7f0a0807

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
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
    instance-of v0, p1, Lcom/join/mgps/activity/WarningDialogActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/MApplication;->n:Landroid/app/Activity;

    .line 6
    .line 7
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->H0(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/join/mgps/activity/WarningDialogActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/MApplication;->n:Landroid/app/Activity;

    .line 6
    .line 7
    :cond_0
    sget v0, Lcom/MApplication;->d2:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    add-int/2addr v0, v1

    .line 11
    sput v0, Lcom/MApplication;->d2:I

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v2, 0x1020002

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    .line 32
    const v2, 0x7f0a0807

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    sget v0, Lcom/MApplication;->d2:I

    .line 57
    .line 58
    if-ne v0, v1, :cond_3

    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/MApplication;->o:Z

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/MApplication;->p:Z

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lcom/join/mgps/Util/UtilsMy;->B0()V

    .line 81
    .line 82
    .line 83
    :cond_2
    instance-of v0, p1, Lcom/join/mgps/activity/EmuLaunchLoadingActivity;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 88
    .line 89
    .line 90
    :cond_3
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/MApplication;->o:Z

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v1, "com.join"

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    const-string v1, "com.papa"

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    :cond_4
    iput-boolean v0, p0, Lcom/MApplication;->p:Z

    .line 120
    .line 121
    :cond_5
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    sget v0, Lcom/MApplication;->d2:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    sput v0, Lcom/MApplication;->d2:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget v0, Lcom/MApplication;->d2:I

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/MApplication;->o:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/MApplication;->o:Z

    .line 28
    .line 29
    instance-of v0, p1, Lcom/join/mgps/activity/EmuLaunchLoadingActivity;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/Hilt_MApplication;->onCreate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 5
    .line 6
    sput-object v0, Lcom/papa91/arc/common/constants/BAction;->APPLICATION_ID:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/MApplication;->q:Landroidx/lifecycle/ViewModelStore;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/constant/a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "55af129367e58e94ba0025b7"

    .line 20
    .line 21
    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/MApplication;->p1:Lcom/join/android/app/common/servcie/j;

    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->H()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string v0, "0"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v0, "1"

    .line 40
    .line 41
    :goto_0
    sput-object v0, Lcom/MApplication;->M:Ljava/lang/String;

    .line 42
    .line 43
    sput-object p0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 44
    .line 45
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->init(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 49
    .line 50
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/MApplication;->e:Lcom/join/mgps/pref/PrefDef_;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInitReady()Lorg/androidannotations/api/sharedpreferences/d;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/16 v0, 0x8

    .line 67
    .line 68
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/player/d;->q(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lcom/join/android/app/common/utils/p;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 76
    .line 77
    invoke-direct {p0}, Lcom/MApplication;->k()V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/MApplication;->v()V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/MApplication;->z()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/VApp;->isEmulator()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/4 v1, 0x1

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/VApp;->isMindProcess()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const-string v2, "com.join.android.app.mgsim.wufun.addon"

    .line 98
    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    iput-boolean v1, p0, Lcom/MApplication;->g:Z

    .line 120
    .line 121
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/join/mgps/Util/z;->e(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_2

    .line 133
    .line 134
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 135
    .line 136
    invoke-static {v0}, Lq5/e;->d(Landroid/content/Context;)Lq5/e;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v1, "mgdb"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lq5/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 151
    .line 152
    invoke-static {v0}, Lcom/join/mgps/Util/f2;->a(Landroid/content/Context;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v1, "before onCreate:processName"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ","

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lcom/MApplication;->f:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_4
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/join/kotlin/utils/DlTaskManager;->ensureGlobalDownloadEventBus()V

    .line 186
    .line 187
    .line 188
    invoke-static {p0}, Lcom/papa/sim/statistic/s;->m(Landroid/content/Context;)Lcom/papa/sim/statistic/s;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v2, Lcom/MApplication$d;

    .line 193
    .line 194
    invoke-direct {v2, p0}, Lcom/MApplication$d;-><init>(Lcom/MApplication;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/s;->p0(Lcom/papa/sim/statistic/s$g;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/MApplication;->e:Lcom/join/mgps/pref/PrefDef_;

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->video_init_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    const/4 v3, 0x0

    .line 217
    if-eqz v2, :cond_6

    .line 218
    .line 219
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    const-class v5, Ljava/util/List;

    .line 228
    .line 229
    new-array v1, v1, [Ljava/lang/Class;

    .line 230
    .line 231
    const-class v6, Lcom/join/mgps/dto/VideoInitCfgBean;

    .line 232
    .line 233
    aput-object v6, v1, v3

    .line 234
    .line 235
    invoke-virtual {v4, v5, v1}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v2, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Ljava/util/List;

    .line 244
    .line 245
    if-eqz v0, :cond_6

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_6

    .line 252
    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_6

    .line 262
    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Lcom/join/mgps/dto/VideoInitCfgBean;

    .line 268
    .line 269
    if-eqz v1, :cond_5

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoInitCfgBean;->getSdkType()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    const/16 v2, 0x9

    .line 276
    .line 277
    if-ne v1, v2, :cond_5

    .line 278
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const-string v1, ""

    .line 284
    .line 285
    new-instance v2, Lcom/i;

    .line 286
    .line 287
    invoke-direct {v2}, Lcom/i;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-static {v0, v1, v2}, Lcom/join/mgps/ad/adapter/d;->a(Landroid/content/Context;Ljava/lang/String;Le6/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    .line 292
    .line 293
    goto :goto_2

    .line 294
    :catch_1
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    .line 297
    .line 298
    :cond_6
    :goto_2
    invoke-virtual {p0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 299
    .line 300
    .line 301
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    sput-object v0, Lcom/MApplication;->p1:Lcom/join/android/app/common/servcie/j;

    .line 306
    .line 307
    new-instance v0, Ljava/lang/Thread;

    .line 308
    .line 309
    new-instance v1, Lcom/MApplication$e;

    .line 310
    .line 311
    invoke-direct {v1, p0}, Lcom/MApplication$e;-><init>(Lcom/MApplication;)V

    .line 312
    .line 313
    .line 314
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 318
    .line 319
    .line 320
    invoke-static {p0}, Lcom/constant/a;->e(Landroid/content/Context;)V

    .line 321
    .line 322
    .line 323
    sput-boolean v3, Lcom/join/mgps/Util/o2;->k1:Z

    .line 324
    .line 325
    invoke-static {p0}, Lcom/join/android/app/component/album/lib/ImageLoader;->u(Landroid/content/Context;)V

    .line 326
    .line 327
    .line 328
    invoke-static {p0}, Lcom/join/android/app/component/optimizetext/a;->m(Landroid/content/Context;)V

    .line 329
    .line 330
    .line 331
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->w()Lcom/join/mgps/dto/HomeViewSwich;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_7

    .line 340
    .line 341
    sput-object v0, Lcom/MApplication;->U:Lcom/join/mgps/dto/HomeViewSwich;

    .line 342
    .line 343
    :cond_7
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->J()Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    if-eqz v0, :cond_8

    .line 352
    .line 353
    sput-object v1, Lcom/MApplication;->V:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 354
    .line 355
    :cond_8
    invoke-static {p0}, Lcom/join/mgps/Util/p1;->b(Landroid/content/Context;)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    const/16 v1, 0x1a

    .line 360
    .line 361
    if-lt v0, v1, :cond_9

    .line 362
    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 364
    .line 365
    if-lt v0, v1, :cond_9

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {v0}, Lcom/join/android/app/common/servcie/DownloadService_;->Y(Landroid/content/Context;)Lcom/join/android/app/common/servcie/DownloadService_$h;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 377
    .line 378
    .line 379
    :goto_3
    invoke-static {}, Lcom/join/android/app/common/exception/a;->e()Lcom/join/android/app/common/exception/a;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v0, p0}, Lcom/join/android/app/common/exception/a;->j(Landroid/content/Context;)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    const-string v1, "applicationcreatFinish time ="

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 397
    .line 398
    .line 399
    move-result-wide v1

    .line 400
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    new-instance v0, Landroid/content/IntentFilter;

    .line 411
    .line 412
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v1, "com.intent.downloadService.destroyed"

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget-object v1, p0, Lcom/MApplication;->h:Landroid/content/BroadcastReceiver;

    .line 421
    .line 422
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    .line 424
    .line 425
    new-instance v0, Landroid/content/IntentFilter;

    .line 426
    .line 427
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 428
    .line 429
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    iget-object v1, p0, Lcom/MApplication;->l:Landroid/content/BroadcastReceiver;

    .line 433
    .line 434
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 435
    .line 436
    .line 437
    :try_start_2
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->c()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_a

    .line 450
    .line 451
    sput-object v0, Lcom/MApplication;->N:Ljava/lang/String;

    .line 452
    .line 453
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    const-class v2, Lcom/join/android/app/common/http/DNSDataResult;

    .line 458
    .line 459
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    check-cast v0, Lcom/join/android/app/common/http/DNSDataResult;

    .line 464
    .line 465
    invoke-virtual {v0}, Lcom/join/android/app/common/http/DNSDataResult;->updateRpcConstant()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 466
    .line 467
    .line 468
    goto :goto_4

    .line 469
    :catch_2
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 471
    .line 472
    .line 473
    :cond_a
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    .line 474
    .line 475
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .line 477
    .line 478
    sput-object v0, Lcom/MApplication;->v1:Ljava/util/List;

    .line 479
    .line 480
    const-string v1, "anv9.ctapi"

    .line 481
    .line 482
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    sget-object v0, Lcom/MApplication;->v1:Ljava/util/List;

    .line 486
    .line 487
    const-string v1, "anv3cjapi"

    .line 488
    .line 489
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    sget-object v0, Lcom/MApplication;->v1:Ljava/util/List;

    .line 493
    .line 494
    const-string v1, "anv5cjapi"

    .line 495
    .line 496
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    sget-object v0, Lcom/MApplication;->v1:Ljava/util/List;

    .line 500
    .line 501
    const-string v1, "anv6cjapi"

    .line 502
    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    sget-object v0, Lcom/MApplication;->v1:Ljava/util/List;

    .line 507
    .line 508
    const-string v1, "comment"

    .line 509
    .line 510
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    sget-object v0, Lcom/MApplication;->v1:Ljava/util/List;

    .line 514
    .line 515
    const-string v1, "anctapi"

    .line 516
    .line 517
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    sget-object v0, Lcom/MApplication;->v1:Ljava/util/List;

    .line 521
    .line 522
    const-string v1, "ansearchapi"

    .line 523
    .line 524
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    sget-object v0, Lcom/MApplication;->v1:Ljava/util/List;

    .line 528
    .line 529
    const-string v1, "testsanv9"

    .line 530
    .line 531
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    invoke-virtual {p0}, Lcom/MApplication;->B()V

    .line 535
    .line 536
    .line 537
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/MApplication;->g:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/MApplication;->h:Landroid/content/BroadcastReceiver;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/MApplication;->l:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public p()Lcom/join/mgps/pref/PrefDef_;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/MApplication;->e:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/MApplication;->e:Lcom/join/mgps/pref/PrefDef_;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/MApplication;->e:Lcom/join/mgps/pref/PrefDef_;

    .line 15
    .line 16
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/MApplication;->l1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v1, v2}, Lcom/join/mgps/Util/c1;->j(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/q;->i()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lcom/MApplication;->A:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 22
    .line 23
    :try_start_1
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/MApplication;->A:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :goto_0
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sput-object v1, Lcom/MApplication;->B:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->y()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v2, Lcom/MApplication;->B:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    const-string v2, "0"

    .line 59
    .line 60
    sget-object v3, Lcom/MApplication;->B:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_0

    .line 67
    .line 68
    const-string v2, "-1"

    .line 69
    .line 70
    sget-object v3, Lcom/MApplication;->B:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget-object v2, Lcom/MApplication;->B:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/join/mgps/pref/h;->m0(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v2, Lcom/MApplication;->B:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/join/mgps/pref/h;->l0(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/q;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sput-object v1, Lcom/MApplication;->J:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 115
    .line 116
    :try_start_3
    sput-object v1, Lcom/MApplication;->K:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    sput-object v1, Lcom/MApplication;->J:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_1
    move-exception v1

    .line 126
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :goto_1
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/q;->o()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    sput-object v1, Lcom/MApplication;->C:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 140
    .line 141
    :try_start_5
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    sput-object v1, Lcom/MApplication;->C:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catch_2
    move-exception v1

    .line 149
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-static {}, Lcom/join/mgps/Util/u0;->e()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    sput-object v1, Lcom/MApplication;->D:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 157
    .line 158
    :try_start_7
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    sput-object v1, Lcom/MApplication;->D:Ljava/lang/String;

    .line 163
    .line 164
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    sput-object v1, Lcom/MApplication;->E:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {p0, v1}, Lcom/join/mgps/Util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sput-object v0, Lcom/MApplication;->F:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catch_3
    move-exception v0

    .line 188
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    .line 190
    .line 191
    :goto_3
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 192
    .line 193
    sput-object v0, Lcom/MApplication;->H:Ljava/lang/String;

    .line 194
    .line 195
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 196
    .line 197
    invoke-static {v0}, Lcom/constant/a;->d(Landroid/content/Context;)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    sput v0, Lcom/MApplication;->G:I

    .line 202
    .line 203
    invoke-static {}, Lcom/join/android/app/common/utils/q;->w()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sput-object v0, Lcom/MApplication;->I:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :catch_4
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    :goto_4
    return-void
.end method

.method public w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->v:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/MApplication$b;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/MApplication$b;-><init>(Lcom/MApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/MApplication;->v:Lcom/join/mgps/ad/f;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/f;->a()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/MApplication;->v:Lcom/join/mgps/ad/f;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/f;->d(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->w:Lcom/join/mgps/ad/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/MApplication$c;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/MApplication$c;-><init>(Lcom/MApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/MApplication;->w:Lcom/join/mgps/ad/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/h;->a()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/MApplication;->w:Lcom/join/mgps/ad/h;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/h;->d(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->t:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/MApplication$j;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/MApplication$j;-><init>(Lcom/MApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/MApplication;->t:Lcom/join/mgps/ad/j;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/j;->a()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/MApplication;->t:Lcom/join/mgps/ad/j;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/j;->d(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
