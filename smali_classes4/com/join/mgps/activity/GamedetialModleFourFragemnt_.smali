.class public final Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;
.super Lcom/join/mgps/activity/d3;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$t0;
    }
.end annotation


# instance fields
.field private final P2:Lzc/c;

.field private Q2:Landroid/view/View;

.field private final R2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final S2:Landroid/content/IntentFilter;

.field private final T2:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/d3;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->P2:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->R2:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->S2:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$1;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->T2:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Lcom/join/mgps/activity/d3$v;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->s0(Lcom/join/mgps/activity/d3$v;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->showProgress()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->showInstallButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->updateButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->setCommentNumber(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->C0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->B0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->E0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->H0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->F0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/d3;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->d0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/d3$v;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/d3;->O(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/d3$v;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->getDownloadTaskInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->changeGameFollow(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->D0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->S2:Landroid/content/IntentFilter;

    .line 5
    .line 6
    const-string v0, "com.broadcast.bespeak.sussess"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->k0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->v0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d3;->W(Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->Z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static o1()Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$t0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$t0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$t0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method A0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$l;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method B0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$a0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$a0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;I)V

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

.method C0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadingNumber"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$z;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;I)V

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

.method D0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$k;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method E0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$b0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$b0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method F0(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "needRetry"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$d0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$d0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Z)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

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

.method H0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modleFourBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$i;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

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

.method N()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$i0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$i0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method O(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/d3$v;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "game_id",
            "holder"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$j0;

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
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    move-object v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$j0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/d3$v;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method Q()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$j;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method W(Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$o;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Lcom/join/mgps/dto/GameFromPopoWinBean;)V

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

.method Y()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$k0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$k0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method Z()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$p;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method changeGameFollow(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$m0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$m0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method d0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$g0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$g0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method e0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$h0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$h0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->R2:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$l0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$l0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->Q2:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    return-object p1
.end method

.method k0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$m;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method m0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$r;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->P2:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->T2:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->S2:Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->Q2:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d034b

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->Q2:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->Q2:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->T2:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/join/mgps/activity/d3;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->Q2:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->g:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->h:Landroid/view/View;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->k:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->l:Landroidx/viewpager/widget/ViewPager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->m:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->n:Landroid/view/View;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->o:Landroidx/viewpager/widget/ViewPager;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->p:Landroid/view/View;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->q:Lcom/google/android/material/appbar/AppBarLayout;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->r:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->s:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->t:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->u:Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->v:Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->w:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->x:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->y:Landroid/widget/ImageView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->z:Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->A:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->B:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->C:Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->D:Landroid/widget/ImageView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->E:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->F:Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->G:Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->H:Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->I:Landroidx/appcompat/widget/Toolbar;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->J:Landroid/view/View;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->K:Landroid/view/View;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->L:Landroid/view/View;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->M:Landroid/view/View;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->N:Landroid/view/View;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->O:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->P:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->Q:Landroid/view/View;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->R:Landroid/view/View;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->x2:Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->y2:Landroid/widget/ImageView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->z2:Landroid/widget/ImageView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->A2:Landroid/widget/ImageView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->B2:Landroid/widget/ImageView;

    .line 92
    .line 93
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1b73

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->g:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const v0, 0x7f0a1174

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->h:Landroid/view/View;

    .line 20
    .line 21
    const v0, 0x7f0a1b6a

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/android/app/component/video/StandardVideoView;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 31
    .line 32
    const v0, 0x7f0a0a17

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    const v0, 0x7f0a166c

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/flyco/tablayout/SlidingTabLayout;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->k:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 53
    .line 54
    const v0, 0x7f0a1b84

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->l:Landroidx/viewpager/widget/ViewPager;

    .line 64
    .line 65
    const v0, 0x7f0a165d

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->m:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 75
    .line 76
    const v0, 0x7f0a0219

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->n:Landroid/view/View;

    .line 84
    .line 85
    const v0, 0x7f0a1b85

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->o:Landroidx/viewpager/widget/ViewPager;

    .line 95
    .line 96
    const v0, 0x7f0a1633

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->p:Landroid/view/View;

    .line 104
    .line 105
    const v0, 0x7f0a00dc

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->q:Lcom/google/android/material/appbar/AppBarLayout;

    .line 115
    .line 116
    const v0, 0x7f0a03c7

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->r:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 126
    .line 127
    const v0, 0x7f0a1789

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->s:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    const v0, 0x7f0a0518

    .line 139
    .line 140
    .line 141
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->t:Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    const v0, 0x7f0a1783

    .line 150
    .line 151
    .line 152
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 157
    .line 158
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->u:Landroid/widget/RelativeLayout;

    .line 159
    .line 160
    const v0, 0x7f0a095c

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/widget/TextView;

    .line 168
    .line 169
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->v:Landroid/widget/TextView;

    .line 170
    .line 171
    const v0, 0x7f0a12b3

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->w:Landroid/widget/RelativeLayout;

    .line 181
    .line 182
    const v0, 0x7f0a095d

    .line 183
    .line 184
    .line 185
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 190
    .line 191
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->x:Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    const v0, 0x7f0a02dc

    .line 194
    .line 195
    .line 196
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Landroid/widget/ImageView;

    .line 201
    .line 202
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->y:Landroid/widget/ImageView;

    .line 203
    .line 204
    const v0, 0x7f0a123f

    .line 205
    .line 206
    .line 207
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/widget/TextView;

    .line 212
    .line 213
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->z:Landroid/widget/TextView;

    .line 214
    .line 215
    const v0, 0x7f0a02db

    .line 216
    .line 217
    .line 218
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Landroid/widget/ProgressBar;

    .line 223
    .line 224
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->A:Landroid/widget/ProgressBar;

    .line 225
    .line 226
    const v0, 0x7f0a0514

    .line 227
    .line 228
    .line 229
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Landroid/widget/LinearLayout;

    .line 234
    .line 235
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->B:Landroid/widget/LinearLayout;

    .line 236
    .line 237
    const v0, 0x7f0a14c9

    .line 238
    .line 239
    .line 240
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Landroid/widget/ImageView;

    .line 245
    .line 246
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->C:Landroid/widget/ImageView;

    .line 247
    .line 248
    const v0, 0x7f0a0520

    .line 249
    .line 250
    .line 251
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Landroid/widget/ImageView;

    .line 256
    .line 257
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->D:Landroid/widget/ImageView;

    .line 258
    .line 259
    const v0, 0x7f0a178b

    .line 260
    .line 261
    .line 262
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 267
    .line 268
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->E:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 269
    .line 270
    const v0, 0x7f0a0676

    .line 271
    .line 272
    .line 273
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Landroid/widget/ImageView;

    .line 278
    .line 279
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->F:Landroid/widget/ImageView;

    .line 280
    .line 281
    const v0, 0x7f0a0675

    .line 282
    .line 283
    .line 284
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    check-cast v0, Landroid/widget/TextView;

    .line 289
    .line 290
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->G:Landroid/widget/TextView;

    .line 291
    .line 292
    const v0, 0x7f0a1790

    .line 293
    .line 294
    .line 295
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroid/widget/TextView;

    .line 300
    .line 301
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->H:Landroid/widget/TextView;

    .line 302
    .line 303
    const v0, 0x7f0a17e7

    .line 304
    .line 305
    .line 306
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 311
    .line 312
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->I:Landroidx/appcompat/widget/Toolbar;

    .line 313
    .line 314
    const v0, 0x7f0a0ff8

    .line 315
    .line 316
    .line 317
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->J:Landroid/view/View;

    .line 322
    .line 323
    const v0, 0x7f0a0f95

    .line 324
    .line 325
    .line 326
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->K:Landroid/view/View;

    .line 331
    .line 332
    const v0, 0x7f0a0f92

    .line 333
    .line 334
    .line 335
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->L:Landroid/view/View;

    .line 340
    .line 341
    const v0, 0x7f0a0a12

    .line 342
    .line 343
    .line 344
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->M:Landroid/view/View;

    .line 349
    .line 350
    const v0, 0x7f0a1508

    .line 351
    .line 352
    .line 353
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->N:Landroid/view/View;

    .line 358
    .line 359
    const v0, 0x7f0a0248

    .line 360
    .line 361
    .line 362
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    check-cast v0, Landroid/widget/LinearLayout;

    .line 367
    .line 368
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->O:Landroid/widget/LinearLayout;

    .line 369
    .line 370
    const v0, 0x7f0a1764

    .line 371
    .line 372
    .line 373
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Landroid/widget/LinearLayout;

    .line 378
    .line 379
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->P:Landroid/widget/LinearLayout;

    .line 380
    .line 381
    const v0, 0x7f0a044e

    .line 382
    .line 383
    .line 384
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->Q:Landroid/view/View;

    .line 389
    .line 390
    const v0, 0x7f0a1626

    .line 391
    .line 392
    .line 393
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->R:Landroid/view/View;

    .line 398
    .line 399
    const v0, 0x7f0a0208

    .line 400
    .line 401
    .line 402
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Landroid/widget/TextView;

    .line 407
    .line 408
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->x2:Landroid/widget/TextView;

    .line 409
    .line 410
    const v0, 0x7f0a0515

    .line 411
    .line 412
    .line 413
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, Landroid/widget/ImageView;

    .line 418
    .line 419
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->y2:Landroid/widget/ImageView;

    .line 420
    .line 421
    const v0, 0x7f0a14ca

    .line 422
    .line 423
    .line 424
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    check-cast v0, Landroid/widget/ImageView;

    .line 429
    .line 430
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->z2:Landroid/widget/ImageView;

    .line 431
    .line 432
    const v0, 0x7f0a178d

    .line 433
    .line 434
    .line 435
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Landroid/widget/ImageView;

    .line 440
    .line 441
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->A2:Landroid/widget/ImageView;

    .line 442
    .line 443
    const v0, 0x7f0a086c

    .line 444
    .line 445
    .line 446
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    check-cast v0, Landroid/widget/ImageView;

    .line 451
    .line 452
    iput-object v0, p0, Lcom/join/mgps/activity/d3;->B2:Landroid/widget/ImageView;

    .line 453
    .line 454
    const v0, 0x7f0a1368

    .line 455
    .line 456
    .line 457
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    const v1, 0x7f0a0014

    .line 462
    .line 463
    .line 464
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    const v2, 0x7f0a0a11

    .line 469
    .line 470
    .line 471
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    const v3, 0x7f0a014e

    .line 476
    .line 477
    .line 478
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    const v4, 0x7f0a12b2

    .line 483
    .line 484
    .line 485
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    const v5, 0x7f0a04ff

    .line 490
    .line 491
    .line 492
    invoke-interface {p1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    const v6, 0x7f0a151d

    .line 497
    .line 498
    .line 499
    invoke-interface {p1, v6}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    const v7, 0x7f0a1524

    .line 504
    .line 505
    .line 506
    invoke-interface {p1, v7}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 507
    .line 508
    .line 509
    move-result-object v7

    .line 510
    const v8, 0x7f0a0678

    .line 511
    .line 512
    .line 513
    invoke-interface {p1, v8}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    if-eqz v0, :cond_0

    .line 518
    .line 519
    new-instance v8, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$u;

    .line 520
    .line 521
    invoke-direct {v8, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$u;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    .line 526
    .line 527
    :cond_0
    if-eqz v1, :cond_1

    .line 528
    .line 529
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$f0;

    .line 530
    .line 531
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$f0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    .line 536
    .line 537
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/d3;->N:Landroid/view/View;

    .line 538
    .line 539
    if-eqz v0, :cond_2

    .line 540
    .line 541
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$n0;

    .line 542
    .line 543
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$n0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    .line 548
    .line 549
    :cond_2
    if-eqz v2, :cond_3

    .line 550
    .line 551
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$o0;

    .line 552
    .line 553
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$o0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    .line 558
    .line 559
    :cond_3
    if-eqz v3, :cond_4

    .line 560
    .line 561
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$p0;

    .line 562
    .line 563
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$p0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    .line 568
    .line 569
    :cond_4
    if-eqz v4, :cond_5

    .line 570
    .line 571
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$q0;

    .line 572
    .line 573
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$q0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    .line 578
    .line 579
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/d3;->M:Landroid/view/View;

    .line 580
    .line 581
    if-eqz v0, :cond_6

    .line 582
    .line 583
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$r0;

    .line 584
    .line 585
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$r0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    .line 590
    .line 591
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/d3;->v:Landroid/widget/TextView;

    .line 592
    .line 593
    if-eqz v0, :cond_7

    .line 594
    .line 595
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$s0;

    .line 596
    .line 597
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$s0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    .line 602
    .line 603
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/d3;->B:Landroid/widget/LinearLayout;

    .line 604
    .line 605
    if-eqz v0, :cond_8

    .line 606
    .line 607
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$a;

    .line 608
    .line 609
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$a;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    .line 614
    .line 615
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/d3;->E:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 616
    .line 617
    if-eqz v0, :cond_9

    .line 618
    .line 619
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$b;

    .line 620
    .line 621
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$b;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    .line 626
    .line 627
    :cond_9
    if-eqz v5, :cond_a

    .line 628
    .line 629
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$c;

    .line 630
    .line 631
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$c;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    .line 636
    .line 637
    :cond_a
    if-eqz v6, :cond_b

    .line 638
    .line 639
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$d;

    .line 640
    .line 641
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$d;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    .line 646
    .line 647
    :cond_b
    if-eqz v7, :cond_c

    .line 648
    .line 649
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$e;

    .line 650
    .line 651
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$e;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    .line 656
    .line 657
    :cond_c
    if-eqz p1, :cond_d

    .line 658
    .line 659
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$f;

    .line 660
    .line 661
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$f;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    .line 666
    .line 667
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/d3;->afterView()V

    .line 668
    .line 669
    .line 670
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->P2:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;->R2:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method s0(Lcom/join/mgps/activity/d3$v;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$s;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Lcom/join/mgps/activity/d3$v;)V

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

.method public setCommentNumber(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$y;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;)V

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

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$w;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$h;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$t;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method showProgress()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$v;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method showToast(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$q;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;)V

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

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$x;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$c0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$c0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "result",
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$e0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$e0;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Lcom/join/mgps/dto/ResultMainBean;I)V

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

.method v0(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sre"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$n;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;Ljava/lang/String;)V

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

.method w0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFourFragemnt_$g;-><init>(Lcom/join/mgps/activity/GamedetialModleFourFragemnt_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xfa0

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
