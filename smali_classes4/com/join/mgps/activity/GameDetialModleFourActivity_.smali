.class public final Lcom/join/mgps/activity/GameDetialModleFourActivity_;
.super Lcom/join/mgps/activity/d2;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameDetialModleFourActivity_$w0;
    }
.end annotation


# instance fields
.field private final A2:Landroid/content/BroadcastReceiver;

.field private final q2:Lzc/c;

.field private r2:Landroid/view/View;

.field private final s2:Ljava/util/Map;
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

.field private final t2:Landroid/content/IntentFilter;

.field private final u2:Landroid/content/BroadcastReceiver;

.field private final v2:Landroid/content/IntentFilter;

.field private final w2:Landroid/content/BroadcastReceiver;

.field private final x2:Landroid/content/IntentFilter;

.field private final y2:Landroid/content/BroadcastReceiver;

.field private final z2:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/d2;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->q2:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->s2:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->t2:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$1;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->u2:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->v2:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$2;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->w2:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->x2:Landroid/content/IntentFilter;

    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$3;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$3;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->y2:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->z2:Landroid/content/IntentFilter;

    .line 66
    .line 67
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$4;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$4;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->A2:Landroid/content/BroadcastReceiver;

    .line 73
    .line 74
    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->B0(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/d2;->E0(Ljava/lang/String;ZII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->changeGameFollow(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->getDownloadTaskInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->p0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->F0(Lcom/join/mgps/dto/CommentResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->showMain(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/GamedetialModleFourBean;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/d2;->b1(Lcom/join/mgps/dto/GamedetialModleFourBean;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->Q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static M1()Lcom/join/mgps/activity/GameDetialModleFourActivity_$w0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$w0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$w0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic d1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->Y0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->a1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->U0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/d2;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->showProgress()V

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
    iput-object p1, p0, Lcom/join/mgps/activity/d2;->r1:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->t2:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->v2:Landroid/content/IntentFilter;

    .line 23
    .line 24
    const-string v0, "com.broadcast.bespeak.sussess"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->x2:Landroid/content/IntentFilter;

    .line 30
    .line 31
    const-string v0, "com.join,mgps.sim.sdkgamePayfinish"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->z2:Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->z2:Landroid/content/IntentFilter;

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

.method static synthetic j1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->showInstallButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->updateButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->M0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->N0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->X0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->W0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/d2;->d0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->Z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->O0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->P0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->t0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/d2;->x0(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/d2;->z0(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method B0(Lcom/join/mgps/dto/InformationCommentBean;)V
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
    new-instance v7, Lcom/join/mgps/activity/GameDetialModleFourActivity_$m0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$m0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method E0(Ljava/lang/String;ZII)V
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
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleFourActivity_$l;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$l;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;ZII)V

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

.method F0(Lcom/join/mgps/dto/CommentResponse;)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$m;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/CommentResponse;)V

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

.method M0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$z;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

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

.method N0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$a0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$a0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

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

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$e0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$e0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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

.method P0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$f0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$f0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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

.method Q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$r;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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

.method U0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$t;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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

.method W0(I)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$c0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$c0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;I)V

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

.method X0(I)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$b0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$b0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;I)V

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

.method Y0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$i;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/util/List;)V

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

.method Z0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$d0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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

.method a1(Z)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$j;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Z)V

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

.method b1(Lcom/join/mgps/dto/GamedetialModleFourBean;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "modleFourBean",
            "isReload"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$q;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/GamedetialModleFourBean;Z)V

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

.method c0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleFourActivity_$q0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$q0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    new-instance v7, Lcom/join/mgps/activity/GameDetialModleFourActivity_$n0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$n0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public d0(II)V
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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$k;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;II)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->s2:Ljava/util/Map;

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
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleFourActivity_$o0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$o0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->r2:Landroid/view/View;

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

.method n0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleFourActivity_$k0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$k0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method o0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleFourActivity_$l0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$l0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->q2:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d2;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->u2:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->t2:Landroid/content/IntentFilter;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->w2:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->v2:Landroid/content/IntentFilter;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->y2:Landroid/content/BroadcastReceiver;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->x2:Landroid/content/IntentFilter;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->A2:Landroid/content/BroadcastReceiver;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->z2:Landroid/content/IntentFilter;

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
    iput-object p3, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->r2:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d034a

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->r2:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->r2:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->u2:Landroid/content/BroadcastReceiver;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->w2:Landroid/content/BroadcastReceiver;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->y2:Landroid/content/BroadcastReceiver;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->A2:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    .line 36
    .line 37
    invoke-super {p0}, Lcom/join/mgps/activity/d2;->onDestroy()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->r2:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->d:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->e:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->f:Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->g:Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->h:Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->i:Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->j:Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->k:Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->l:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->m:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->n:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->o:Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->p:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->q:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->r:Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->s:Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->t:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->u:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->v:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->w:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->x:Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->y:Landroid/widget/ImageView;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->z:Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->A:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->B:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->C:Landroid/widget/Button;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->D:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->E:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->F:Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->G:Landroidx/core/widget/NestedScrollView;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->g2:Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->h2:Landroid/widget/ImageView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->i2:Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->j2:Landroid/widget/ImageView;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->k2:Landroid/widget/ImageView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->l2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 78
    .line 79
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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->d:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->e:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->f:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->g:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->h:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->i:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->j:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->k:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->l:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->m:Landroid/widget/LinearLayout;

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
    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->n:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->o:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->p:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->q:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->r:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->s:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->t:Landroid/widget/ProgressBar;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->u:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->v:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->w:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->x:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->y:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->z:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->A:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->B:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->C:Landroid/widget/Button;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->D:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->E:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->F:Landroid/widget/TextView;

    .line 319
    .line 320
    const v0, 0x7f0a1172

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->G:Landroidx/core/widget/NestedScrollView;

    .line 330
    .line 331
    const v0, 0x7f0a0208

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Landroid/widget/TextView;

    .line 339
    .line 340
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->g2:Landroid/widget/TextView;

    .line 341
    .line 342
    const v0, 0x7f0a0515

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->h2:Landroid/widget/ImageView;

    .line 352
    .line 353
    const v0, 0x7f0a14ca

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->i2:Landroid/widget/ImageView;

    .line 363
    .line 364
    const v0, 0x7f0a178d

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
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->j2:Landroid/widget/ImageView;

    .line 374
    .line 375
    const v0, 0x7f0a086c

    .line 376
    .line 377
    .line 378
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Landroid/widget/ImageView;

    .line 383
    .line 384
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->k2:Landroid/widget/ImageView;

    .line 385
    .line 386
    const v0, 0x7f0a178b

    .line 387
    .line 388
    .line 389
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 394
    .line 395
    iput-object v0, p0, Lcom/join/mgps/activity/d2;->l2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 396
    .line 397
    const v0, 0x7f0a1368

    .line 398
    .line 399
    .line 400
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const v1, 0x7f0a014e

    .line 405
    .line 406
    .line 407
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    const v2, 0x7f0a12b2

    .line 412
    .line 413
    .line 414
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    const v3, 0x7f0a1524

    .line 419
    .line 420
    .line 421
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    if-eqz v0, :cond_0

    .line 426
    .line 427
    new-instance v3, Lcom/join/mgps/activity/GameDetialModleFourActivity_$r0;

    .line 428
    .line 429
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$r0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    .line 434
    .line 435
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/d2;->l:Landroid/widget/LinearLayout;

    .line 436
    .line 437
    if-eqz v0, :cond_1

    .line 438
    .line 439
    new-instance v3, Lcom/join/mgps/activity/GameDetialModleFourActivity_$s0;

    .line 440
    .line 441
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$s0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    .line 446
    .line 447
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/d2;->C:Landroid/widget/Button;

    .line 448
    .line 449
    if-eqz v0, :cond_2

    .line 450
    .line 451
    new-instance v3, Lcom/join/mgps/activity/GameDetialModleFourActivity_$t0;

    .line 452
    .line 453
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$t0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    .line 458
    .line 459
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/d2;->f:Landroid/widget/ImageView;

    .line 460
    .line 461
    if-eqz v0, :cond_3

    .line 462
    .line 463
    new-instance v3, Lcom/join/mgps/activity/GameDetialModleFourActivity_$u0;

    .line 464
    .line 465
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$u0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    .line 470
    .line 471
    :cond_3
    if-eqz v1, :cond_4

    .line 472
    .line 473
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$v0;

    .line 474
    .line 475
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$v0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    .line 480
    .line 481
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/d2;->y:Landroid/widget/ImageView;

    .line 482
    .line 483
    if-eqz v0, :cond_5

    .line 484
    .line 485
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleFourActivity_$a;

    .line 486
    .line 487
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$a;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    .line 492
    .line 493
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/d2;->o:Landroid/widget/TextView;

    .line 494
    .line 495
    if-eqz v0, :cond_6

    .line 496
    .line 497
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleFourActivity_$b;

    .line 498
    .line 499
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$b;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    .line 504
    .line 505
    :cond_6
    if-eqz v2, :cond_7

    .line 506
    .line 507
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$c;

    .line 508
    .line 509
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$c;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    .line 514
    .line 515
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/d2;->u:Landroid/widget/LinearLayout;

    .line 516
    .line 517
    if-eqz v0, :cond_8

    .line 518
    .line 519
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleFourActivity_$d;

    .line 520
    .line 521
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$d;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    .line 526
    .line 527
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/d2;->l2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 528
    .line 529
    if-eqz v0, :cond_9

    .line 530
    .line 531
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleFourActivity_$e;

    .line 532
    .line 533
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$e;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    .line 538
    .line 539
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/d2;->i:Landroid/widget/ImageView;

    .line 540
    .line 541
    if-eqz v0, :cond_a

    .line 542
    .line 543
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleFourActivity_$f;

    .line 544
    .line 545
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$f;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    .line 550
    .line 551
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/d2;->h:Landroid/widget/ImageView;

    .line 552
    .line 553
    if-eqz v0, :cond_b

    .line 554
    .line 555
    new-instance v1, Lcom/join/mgps/activity/GameDetialModleFourActivity_$g;

    .line 556
    .line 557
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$g;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    .line 562
    .line 563
    :cond_b
    if-eqz p1, :cond_c

    .line 564
    .line 565
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$h;

    .line 566
    .line 567
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$h;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    .line 572
    .line 573
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/d2;->afterView()V

    .line 574
    .line 575
    .line 576
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
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->q2:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method p0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
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
    new-instance v7, Lcom/join/mgps/activity/GameDetialModleFourActivity_$p0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$p0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialModleFourActivity_;->s2:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method r0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleFourActivity_$j0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$j0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$w;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$o;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$p;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/util/List;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$v;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$n;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;)V

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

.method t0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialModleFourActivity_$g0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$g0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$x;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$y;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$u;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Lcom/join/mgps/dto/ResultMainBean;I)V

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

.method w0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleFourActivity_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$s;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;)V

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

.method x0(Lcom/join/mgps/dto/CommentBaseBean;II)V
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
    new-instance v9, Lcom/join/mgps/activity/GameDetialModleFourActivity_$h0;

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
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$h0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method z0(Lcom/join/mgps/dto/CommentBaseBean;II)V
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
    new-instance v9, Lcom/join/mgps/activity/GameDetialModleFourActivity_$i0;

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
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GameDetialModleFourActivity_$i0;-><init>(Lcom/join/mgps/activity/GameDetialModleFourActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
