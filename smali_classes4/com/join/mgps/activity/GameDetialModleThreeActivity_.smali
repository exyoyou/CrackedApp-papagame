.class public final Lcom/join/mgps/activity/GameDetialModleThreeActivity_;
.super Lcom/join/mgps/activity/f2;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameDetialModleThreeActivity_$u0;
    }
.end annotation


# instance fields
.field private final g2:Lzc/c;

.field private h2:Landroid/view/View;

.field private final i2:Ljava/util/Map;
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

.field private final j2:Landroid/content/IntentFilter;

.field private final k2:Landroid/content/BroadcastReceiver;

.field private final l2:Landroid/content/IntentFilter;

.field private final m2:Landroid/content/BroadcastReceiver;

.field private final n2:Landroid/content/IntentFilter;

.field private final o2:Landroid/content/BroadcastReceiver;

.field private final p2:Landroid/content/IntentFilter;

.field private final q2:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/f2;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->g2:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->i2:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->j2:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$1;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->k2:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->l2:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$2;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->m2:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->n2:Landroid/content/IntentFilter;

    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$3;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$3;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->o2:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->p2:Landroid/content/IntentFilter;

    .line 66
    .line 67
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$4;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$4;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->q2:Landroid/content/BroadcastReceiver;

    .line 73
    .line 74
    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->O0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->K0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/f2;->U(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/f2;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->showProgress()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->showInstallButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->updateButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->C0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->D0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->M0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->L0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/f2;->u0(Ljava/lang/String;ZII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->E0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->F0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/f2;->n0(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/f2;->p0(Lcom/join/mgps/dto/CommentBaseBean;II)V

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
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/f2;->W:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->j2:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->l2:Landroid/content/IntentFilter;

    .line 23
    .line 24
    const-string v0, "com.broadcast.bespeak.sussess"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->n2:Landroid/content/IntentFilter;

    .line 30
    .line 31
    const-string v0, "com.join,mgps.sim.sdkgamePayfinish"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->p2:Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->p2:Landroid/content/IntentFilter;

    .line 44
    .line 45
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->i0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->r0(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->changeGameFollow(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->getDownloadTaskInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->v0(Lcom/join/mgps/dto/CommentResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->g0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->showMain(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->P0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static y1()Lcom/join/mgps/activity/GameDetialModleThreeActivity_$u0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$u0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$u0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method C0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$y;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

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

.method D0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$z;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

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

.method E0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$d0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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

.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$e0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$e0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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

.method G0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$q;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$s;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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

.method L0(I)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$b0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$b0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;I)V

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

.method M0(I)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$a0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$a0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;I)V

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

.method N0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$c0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$c0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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

.method O0(Z)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$i;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Z)V

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

.method P0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$p;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

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

.method T()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$o0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$o0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public U(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "position",
            "i"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$j;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;II)V

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
    new-instance v7, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$l0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$l0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method e0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$i0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$i0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method f0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$j0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$j0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method g0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$n0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$n0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->i2:Ljava/util/Map;

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
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$m0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$m0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method i0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$h0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$h0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->h2:Landroid/view/View;

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

.method m0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$r;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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

.method n0(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$f0;

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
    move v7, p2

    .line 13
    move v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$f0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->g2:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->k2:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->j2:Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->m2:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->l2:Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->o2:Landroid/content/BroadcastReceiver;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->n2:Landroid/content/IntentFilter;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->q2:Landroid/content/BroadcastReceiver;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->p2:Landroid/content/IntentFilter;

    .line 53
    .line 54
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 58
    .line 59
    .line 60
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
    iput-object p3, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->h2:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d034c

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->h2:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->h2:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->k2:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->m2:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->o2:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->q2:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    .line 36
    .line 37
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->onDestroy()V

    .line 38
    .line 39
    .line 40
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
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->h2:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->d:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->e:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->f:Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->g:Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->h:Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->i:Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->j:Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->k:Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->l:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->m:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->q:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->r:Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->s:Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->t:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->u:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->v:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->w:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->x:Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->y:Landroid/widget/ImageView;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->z:Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->A:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->B:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->C:Landroid/widget/Button;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->D:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->E:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->F:Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->v1:Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->L1:Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->R1:Landroid/widget/ImageView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->V1:Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->a2:Landroid/widget/ImageView;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->b2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 76
    .line 77
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a177f

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->d:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a1790

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->e:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0a11

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->f:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0a14b4

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->g:Landroid/widget/ImageView;

    .line 44
    .line 45
    const v0, 0x7f0a151d

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->h:Landroid/widget/ImageView;

    .line 55
    .line 56
    const v0, 0x7f0a04ff

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->i:Landroid/widget/ImageView;

    .line 66
    .line 67
    const v0, 0x7f0a0676

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->j:Landroid/widget/ImageView;

    .line 77
    .line 78
    const v0, 0x7f0a0675

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->k:Landroid/widget/TextView;

    .line 88
    .line 89
    const v0, 0x7f0a0678

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->l:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    const v0, 0x7f0a0e05

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->m:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    const v0, 0x7f0a1344

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    const v0, 0x7f0a095c

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/TextView;

    .line 132
    .line 133
    const v0, 0x7f0a12b3

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/widget/RelativeLayout;

    .line 143
    .line 144
    const v0, 0x7f0a095d

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->q:Landroid/widget/RelativeLayout;

    .line 154
    .line 155
    const v0, 0x7f0a02dc

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/ImageView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->r:Landroid/widget/ImageView;

    .line 165
    .line 166
    const v0, 0x7f0a123f

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/TextView;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->s:Landroid/widget/TextView;

    .line 176
    .line 177
    const v0, 0x7f0a02db

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/ProgressBar;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->t:Landroid/widget/ProgressBar;

    .line 187
    .line 188
    const v0, 0x7f0a0514

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/LinearLayout;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->u:Landroid/widget/LinearLayout;

    .line 198
    .line 199
    const v0, 0x7f0a1789

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->v:Landroid/widget/RelativeLayout;

    .line 209
    .line 210
    const v0, 0x7f0a0518

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->w:Landroid/widget/RelativeLayout;

    .line 220
    .line 221
    const v0, 0x7f0a1783

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->x:Landroid/widget/RelativeLayout;

    .line 231
    .line 232
    const v0, 0x7f0a14c9

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/ImageView;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->y:Landroid/widget/ImageView;

    .line 242
    .line 243
    const v0, 0x7f0a0520

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/widget/ImageView;

    .line 251
    .line 252
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->z:Landroid/widget/ImageView;

    .line 253
    .line 254
    const v0, 0x7f0a0f92

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroid/widget/LinearLayout;

    .line 262
    .line 263
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->A:Landroid/widget/LinearLayout;

    .line 264
    .line 265
    const v0, 0x7f0a0f95

    .line 266
    .line 267
    .line 268
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroid/widget/LinearLayout;

    .line 273
    .line 274
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->B:Landroid/widget/LinearLayout;

    .line 275
    .line 276
    const v0, 0x7f0a1508

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Landroid/widget/Button;

    .line 284
    .line 285
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->C:Landroid/widget/Button;

    .line 286
    .line 287
    const v0, 0x7f0a1767

    .line 288
    .line 289
    .line 290
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 295
    .line 296
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->D:Landroid/widget/RelativeLayout;

    .line 297
    .line 298
    const v0, 0x7f0a0787

    .line 299
    .line 300
    .line 301
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 306
    .line 307
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->E:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 308
    .line 309
    const v0, 0x7f0a0782

    .line 310
    .line 311
    .line 312
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, Landroid/widget/TextView;

    .line 317
    .line 318
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->F:Landroid/widget/TextView;

    .line 319
    .line 320
    const v0, 0x7f0a0208

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/TextView;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->v1:Landroid/widget/TextView;

    .line 330
    .line 331
    const v0, 0x7f0a0515

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Landroid/widget/ImageView;

    .line 339
    .line 340
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->L1:Landroid/widget/ImageView;

    .line 341
    .line 342
    const v0, 0x7f0a14ca

    .line 343
    .line 344
    .line 345
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Landroid/widget/ImageView;

    .line 350
    .line 351
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->R1:Landroid/widget/ImageView;

    .line 352
    .line 353
    const v0, 0x7f0a178d

    .line 354
    .line 355
    .line 356
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Landroid/widget/ImageView;

    .line 361
    .line 362
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->V1:Landroid/widget/ImageView;

    .line 363
    .line 364
    const v0, 0x7f0a086c

    .line 365
    .line 366
    .line 367
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Landroid/widget/ImageView;

    .line 372
    .line 373
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->a2:Landroid/widget/ImageView;

    .line 374
    .line 375
    const v0, 0x7f0a178b

    .line 376
    .line 377
    .line 378
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 383
    .line 384
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->b2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 385
    .line 386
    const v0, 0x7f0a1368

    .line 387
    .line 388
    .line 389
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    const v1, 0x7f0a014e

    .line 394
    .line 395
    .line 396
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    const v2, 0x7f0a12b2

    .line 401
    .line 402
    .line 403
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    const v3, 0x7f0a1524

    .line 408
    .line 409
    .line 410
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    if-eqz v0, :cond_0

    .line 415
    .line 416
    new-instance v3, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$p0;

    .line 417
    .line 418
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$p0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->l:Landroid/widget/LinearLayout;

    .line 425
    .line 426
    if-eqz v0, :cond_1

    .line 427
    .line 428
    new-instance v3, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$q0;

    .line 429
    .line 430
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$q0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    .line 435
    .line 436
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Landroid/widget/Button;

    .line 437
    .line 438
    if-eqz v0, :cond_2

    .line 439
    .line 440
    new-instance v3, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$r0;

    .line 441
    .line 442
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$r0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    .line 447
    .line 448
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->f:Landroid/widget/ImageView;

    .line 449
    .line 450
    if-eqz v0, :cond_3

    .line 451
    .line 452
    new-instance v3, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$s0;

    .line 453
    .line 454
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$s0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    .line 459
    .line 460
    :cond_3
    if-eqz v1, :cond_4

    .line 461
    .line 462
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$t0;

    .line 463
    .line 464
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$t0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .line 469
    .line 470
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->y:Landroid/widget/ImageView;

    .line 471
    .line 472
    if-eqz v0, :cond_5

    .line 473
    .line 474
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$a;

    .line 475
    .line 476
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$a;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    .line 481
    .line 482
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/TextView;

    .line 483
    .line 484
    if-eqz v0, :cond_6

    .line 485
    .line 486
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$b;

    .line 487
    .line 488
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$b;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    .line 493
    .line 494
    :cond_6
    if-eqz v2, :cond_7

    .line 495
    .line 496
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$c;

    .line 497
    .line 498
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$c;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    .line 503
    .line 504
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->u:Landroid/widget/LinearLayout;

    .line 505
    .line 506
    if-eqz v0, :cond_8

    .line 507
    .line 508
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$d;

    .line 509
    .line 510
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$d;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    .line 515
    .line 516
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->b2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 517
    .line 518
    if-eqz v0, :cond_9

    .line 519
    .line 520
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$e;

    .line 521
    .line 522
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$e;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    .line 528
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->i:Landroid/widget/ImageView;

    .line 529
    .line 530
    if-eqz v0, :cond_a

    .line 531
    .line 532
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$f;

    .line 533
    .line 534
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$f;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    .line 539
    .line 540
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->h:Landroid/widget/ImageView;

    .line 541
    .line 542
    if-eqz v0, :cond_b

    .line 543
    .line 544
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$g;

    .line 545
    .line 546
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$g;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    .line 551
    .line 552
    :cond_b
    if-eqz p1, :cond_c

    .line 553
    .line 554
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$h;

    .line 555
    .line 556
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$h;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    .line 561
    .line 562
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->afterView()V

    .line 563
    .line 564
    .line 565
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
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->g2:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method p0(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$g0;

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
    move v7, p2

    .line 13
    move v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$g0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;->i2:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method r0(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$k0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$k0;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$v;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$n;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "commitDataBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$o;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/util/List;)V

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

.method showProgress()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$u;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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
            "charSequence"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$m;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;)V

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

.method u0(Ljava/lang/String;ZII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "b",
            "position",
            "type"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$k;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$k;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Ljava/lang/String;ZII)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$w;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$x;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$t;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/ResultMainBean;I)V

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

.method v0(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$l;-><init>(Lcom/join/mgps/activity/GameDetialModleThreeActivity_;Lcom/join/mgps/dto/CommentResponse;)V

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
