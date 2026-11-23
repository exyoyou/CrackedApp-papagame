.class public final Lcom/join/android/app/common/servcie/DownloadService_;
.super Lcom/join/android/app/common/servcie/DownloadService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/servcie/DownloadService_$h;
    }
.end annotation


# instance fields
.field private final p:Landroid/content/IntentFilter;

.field private final q:Landroid/content/BroadcastReceiver;

.field private final r:Landroid/content/IntentFilter;

.field private final s:Landroid/content/BroadcastReceiver;

.field private final t:Landroid/content/IntentFilter;

.field private final u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/content/IntentFilter;

.field private final w:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->p:Landroid/content/IntentFilter;

    .line 10
    .line 11
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$1;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->q:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->r:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$2;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->s:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->t:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$3;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$3;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->u:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->v:Landroid/content/IntentFilter;

    .line 52
    .line 53
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$4;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$4;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->w:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    return-void
.end method

.method static synthetic Q(Lcom/join/android/app/common/servcie/DownloadService_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadService;->O(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R(Lcom/join/android/app/common/servcie/DownloadService_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/android/app/common/servcie/DownloadService;->N(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S(Lcom/join/android/app/common/servcie/DownloadService_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadService;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T(Lcom/join/android/app/common/servcie/DownloadService_;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadService;->A(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadService;->r(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadService;->m(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Lcom/join/android/app/common/servcie/DownloadService_;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/android/app/common/servcie/DownloadService;->n(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private X()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService;->d:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->p:Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v1, "com.join.apkinstalldataobb.action.broadcast"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->r:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v1, "com.join.apkinstal.action.broadcast"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->t:Landroid/content/IntentFilter;

    .line 23
    .line 24
    const-string v1, "com.join.downloadbygameid.action.broadcast"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->v:Landroid/content/IntentFilter;

    .line 30
    .line 31
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->v:Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->v:Landroid/content/IntentFilter;

    .line 44
    .line 45
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->v:Landroid/content/IntentFilter;

    .line 51
    .line 52
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static Y(Landroid/content/Context;)Lcom/join/android/app/common/servcie/DownloadService_$h;
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
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$h;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method A(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/android/app/common/servcie/DownloadService_$f;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method I()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$e;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xbb8

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method N(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "money",
            "empirical"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/android/app/common/servcie/DownloadService_$d;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;II)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method O(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/android/app/common/servcie/DownloadService_$c;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method m(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/android/app/common/servcie/DownloadService_$a;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/android/app/common/servcie/DownloadService_$a;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method n(ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "i",
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/android/app/common/servcie/DownloadService_$b;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/android/app/common/servcie/DownloadService_$b;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadService_;->X()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadService;->onCreate()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->q:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_;->p:Landroid/content/IntentFilter;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->s:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_;->r:Landroid/content/IntentFilter;

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->u:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_;->t:Landroid/content/IntentFilter;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->w:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_;->v:Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->q:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->s:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->u:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->w:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadService;->onDestroy()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method r(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/android/app/common/servcie/DownloadService_$g;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/android/app/common/servcie/DownloadService_$g;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
