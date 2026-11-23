.class public final Lcom/join/mgps/socket/fight/arena/ArenaService_;
.super Lcom/join/mgps/socket/fight/arena/ArenaService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/fight/arena/ArenaService_$i;
    }
.end annotation


# instance fields
.field private final t:Landroid/content/IntentFilter;

.field private final u:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->t:Landroid/content/IntentFilter;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/socket/fight/arena/ArenaService_$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/socket/fight/arena/ArenaService_$1;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->u:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic H(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->a(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I(Lcom/join/mgps/socket/fight/arena/ArenaService_;Lapp/mgsim/arena/SocketError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->w(Lapp/mgsim/arena/SocketError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic J(Lcom/join/mgps/socket/fight/arena/ArenaService_;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->C(Lapp/mgsim/arena/ArenaRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->r(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L(Lcom/join/mgps/socket/fight/arena/ArenaService_;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->k(Lapp/mgsim/arena/ArenaRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M(Lcom/join/mgps/socket/fight/arena/ArenaService_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->t(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic N(Lcom/join/mgps/socket/fight/arena/ArenaService_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O(Lcom/join/mgps/socket/fight/arena/ArenaService_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->i:Lcom/join/mgps/Util/b;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->t:Landroid/content/IntentFilter;

    .line 8
    .line 9
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static Q(Landroid/content/Context;)Lcom/join/mgps/socket/fight/arena/ArenaService_$i;
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
    new-instance v0, Lcom/join/mgps/socket/fight/arena/ArenaService_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/socket/fight/arena/ArenaService_$i;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public C(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$c;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$c;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;Lapp/mgsim/arena/ArenaRequest;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/socket/fight/arena/ArenaService_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService_$a;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;)V

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

.method i()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/socket/fight/arena/ArenaService_$g;

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
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/socket/fight/arena/ArenaService_$g;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method k(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$e;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$e;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;Lapp/mgsim/arena/ArenaRequest;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService_;->P()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->onCreate()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->u:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->t:Landroid/content/IntentFilter;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->u:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method r(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "res"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$d;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$d;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method t(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "roomId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$f;

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
    move v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$f;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method w(Lapp/mgsim/arena/SocketError;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "socketError"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$b;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$b;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;Lapp/mgsim/arena/SocketError;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method x()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/socket/fight/arena/ArenaService_$h;

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
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/socket/fight/arena/ArenaService_$h;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
