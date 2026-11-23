.class public final Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;
.super Lcom/join/mgps/activity/b3;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$y0;
    }
.end annotation


# instance fields
.field private final V2:Lzc/c;

.field private W2:Landroid/view/View;

.field private final X2:Ljava/util/Map;
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

.field private final Y2:Landroid/content/IntentFilter;

.field private final Z2:Landroid/content/BroadcastReceiver;

.field private final a3:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/b3;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->V2:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->X2:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->Y2:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$1;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->Z2:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$2;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$2;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->a3:Landroid/content/BroadcastReceiver;

    .line 38
    .line 39
    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->showInstallButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->updateButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->setCommentNumber(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->l1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->k1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->n1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->p1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/b3;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/b3;->j1(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->p0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic N1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/b3$d0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/b3;->V(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/b3$d0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->m1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->getDownloadTaskInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->changeGameFollow(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->O0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->i1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->c1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->e0(Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->h0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Z1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a2()Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$y0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$y0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$y0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/activity/b3;->p0:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->Y2:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v0, "com.broadcast.bespeak.sussess"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->C0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->q1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Lcom/join/mgps/activity/b3$d0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->Y0(Lcom/join/mgps/activity/b3$d0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/b3;->i0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->e1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->showProgress()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method A0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$o;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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

.method C0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$t;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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

.method O0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$s0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$s0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method U()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$m0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$m0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method V(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/b3$d0;)V
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
    new-instance v9, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$n0;

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
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$n0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/b3$d0;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method X()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$l;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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

.method Y0(Lcom/join/mgps/activity/b3$d0;)V
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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$u;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Lcom/join/mgps/activity/b3$d0;)V

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

.method c1(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$p;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;)V

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
    new-instance v7, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$r0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$r0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method e0(Lcom/join/mgps/dto/GameFromPopoWinBean;)V
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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$q;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Lcom/join/mgps/dto/GameFromPopoWinBean;)V

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

.method e1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$w;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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

.method g0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$o0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$o0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->X2:Ljava/util/Map;

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
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$q0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$q0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$r;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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

.method i0(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "videoUrl"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$v;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x258

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

.method i1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$n;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->W2:Landroid/view/View;

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

.method j1(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "gameId",
            "game_book"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$j0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$j0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;I)V

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

.method k1(I)V
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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$d0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$d0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;I)V

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

.method l1(I)V
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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$c0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$c0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;I)V

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

.method m1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$m;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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

.method n1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$f0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$f0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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

.method o0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$k0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$k0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->V2:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->init_(Landroid/os/Bundle;)V

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
    iget-object v1, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->Z2:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->Y2:Landroid/content/IntentFilter;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->a3:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->Y2:Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 36
    .line 37
    .line 38
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
    iput-object p3, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->W2:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d0348

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
    iput-object p1, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->W2:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->W2:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->Z2:Landroid/content/BroadcastReceiver;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->a3:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/join/mgps/activity/b3;->onDestroy()V

    .line 20
    .line 21
    .line 22
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
    iput-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->W2:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->g:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->h:Landroid/view/View;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->k:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->l:Landroidx/viewpager/widget/ViewPager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->m:Landroidx/viewpager/widget/ViewPager;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->n:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->o:Landroid/view/View;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->q:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->r:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->s:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->t:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->u:Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->v:Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->x:Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->y:Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->z:Landroid/widget/ProgressBar;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->A:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->B:Landroid/widget/ImageView;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->C:Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->D:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->E:Landroid/widget/ImageView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->F:Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->G:Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->H:Landroidx/appcompat/widget/Toolbar;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->I:Lcom/join/mgps/customview/CoordinatorLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->J:Landroid/view/View;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->K:Landroid/view/View;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->L:Landroid/view/View;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->M:Landroid/view/View;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->N:Landroid/view/View;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->O:Landroid/view/View;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->P:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->Q:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->S:Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->T:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->U:Lit/sephiroth/android/library/widget/HListView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->V:Landroid/widget/ImageView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->W:Landroid/widget/RelativeLayout;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->X:Landroid/widget/ImageView;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->Y:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->B2:Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->C2:Landroid/widget/ImageView;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->D2:Landroid/widget/ImageView;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->E2:Landroid/widget/ImageView;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->F2:Landroid/widget/ImageView;

    .line 106
    .line 107
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
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->g:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->h:Landroid/view/View;

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
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->i:Lcom/join/android/app/component/video/StandardVideoView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->k:Lcom/flyco/tablayout/SlidingTabLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->l:Landroidx/viewpager/widget/ViewPager;

    .line 64
    .line 65
    const v0, 0x7f0a1b85

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->m:Landroidx/viewpager/widget/ViewPager;

    .line 75
    .line 76
    const v0, 0x7f0a0f40

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->n:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    const v0, 0x7f0a1633

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->o:Landroid/view/View;

    .line 95
    .line 96
    const v0, 0x7f0a00dc

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 106
    .line 107
    const v0, 0x7f0a03c7

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->q:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 117
    .line 118
    const v0, 0x7f0a1789

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->r:Landroid/widget/RelativeLayout;

    .line 128
    .line 129
    const v0, 0x7f0a0518

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->s:Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    const v0, 0x7f0a1783

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->t:Landroid/widget/RelativeLayout;

    .line 150
    .line 151
    const v0, 0x7f0a095c

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroid/widget/TextView;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->u:Landroid/widget/TextView;

    .line 161
    .line 162
    const v0, 0x7f0a12b3

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 170
    .line 171
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->v:Landroid/widget/RelativeLayout;

    .line 172
    .line 173
    const v0, 0x7f0a095d

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 181
    .line 182
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 183
    .line 184
    const v0, 0x7f0a02dc

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroid/widget/ImageView;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->x:Landroid/widget/ImageView;

    .line 194
    .line 195
    const v0, 0x7f0a123f

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Landroid/widget/TextView;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->y:Landroid/widget/TextView;

    .line 205
    .line 206
    const v0, 0x7f0a02db

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/widget/ProgressBar;

    .line 214
    .line 215
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->z:Landroid/widget/ProgressBar;

    .line 216
    .line 217
    const v0, 0x7f0a0514

    .line 218
    .line 219
    .line 220
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Landroid/widget/LinearLayout;

    .line 225
    .line 226
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->A:Landroid/widget/LinearLayout;

    .line 227
    .line 228
    const v0, 0x7f0a14c9

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Landroid/widget/ImageView;

    .line 236
    .line 237
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->B:Landroid/widget/ImageView;

    .line 238
    .line 239
    const v0, 0x7f0a0520

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Landroid/widget/ImageView;

    .line 247
    .line 248
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->C:Landroid/widget/ImageView;

    .line 249
    .line 250
    const v0, 0x7f0a178b

    .line 251
    .line 252
    .line 253
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 258
    .line 259
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->D:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 260
    .line 261
    const v0, 0x7f0a0676

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Landroid/widget/ImageView;

    .line 269
    .line 270
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->E:Landroid/widget/ImageView;

    .line 271
    .line 272
    const v0, 0x7f0a0675

    .line 273
    .line 274
    .line 275
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Landroid/widget/TextView;

    .line 280
    .line 281
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->F:Landroid/widget/TextView;

    .line 282
    .line 283
    const v0, 0x7f0a1790

    .line 284
    .line 285
    .line 286
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Landroid/widget/TextView;

    .line 291
    .line 292
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->G:Landroid/widget/TextView;

    .line 293
    .line 294
    const v0, 0x7f0a17e7

    .line 295
    .line 296
    .line 297
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 302
    .line 303
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->H:Landroidx/appcompat/widget/Toolbar;

    .line 304
    .line 305
    const v0, 0x7f0a0ff8

    .line 306
    .line 307
    .line 308
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Lcom/join/mgps/customview/CoordinatorLayout;

    .line 313
    .line 314
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->I:Lcom/join/mgps/customview/CoordinatorLayout;

    .line 315
    .line 316
    const v0, 0x7f0a0f95

    .line 317
    .line 318
    .line 319
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->J:Landroid/view/View;

    .line 324
    .line 325
    const v0, 0x7f0a0f92

    .line 326
    .line 327
    .line 328
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->K:Landroid/view/View;

    .line 333
    .line 334
    const v0, 0x7f0a0a12

    .line 335
    .line 336
    .line 337
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->L:Landroid/view/View;

    .line 342
    .line 343
    const v0, 0x7f0a1508

    .line 344
    .line 345
    .line 346
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->M:Landroid/view/View;

    .line 351
    .line 352
    const v0, 0x7f0a044e

    .line 353
    .line 354
    .line 355
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->N:Landroid/view/View;

    .line 360
    .line 361
    const v0, 0x7f0a1626

    .line 362
    .line 363
    .line 364
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->O:Landroid/view/View;

    .line 369
    .line 370
    const v0, 0x7f0a1532

    .line 371
    .line 372
    .line 373
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 378
    .line 379
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->P:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 380
    .line 381
    const v0, 0x7f0a0e05

    .line 382
    .line 383
    .line 384
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Landroid/widget/LinearLayout;

    .line 389
    .line 390
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->Q:Landroid/widget/LinearLayout;

    .line 391
    .line 392
    const v0, 0x7f0a0787

    .line 393
    .line 394
    .line 395
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 400
    .line 401
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 402
    .line 403
    const v0, 0x7f0a0782

    .line 404
    .line 405
    .line 406
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Landroid/widget/TextView;

    .line 411
    .line 412
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->S:Landroid/widget/TextView;

    .line 413
    .line 414
    const v0, 0x7f0a0f4e

    .line 415
    .line 416
    .line 417
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    check-cast v0, Landroid/widget/LinearLayout;

    .line 422
    .line 423
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->T:Landroid/widget/LinearLayout;

    .line 424
    .line 425
    const v0, 0x7f0a0812

    .line 426
    .line 427
    .line 428
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 433
    .line 434
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->U:Lit/sephiroth/android/library/widget/HListView;

    .line 435
    .line 436
    const v0, 0x7f0a09ce

    .line 437
    .line 438
    .line 439
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Landroid/widget/ImageView;

    .line 444
    .line 445
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->V:Landroid/widget/ImageView;

    .line 446
    .line 447
    const v0, 0x7f0a13b8

    .line 448
    .line 449
    .line 450
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 455
    .line 456
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->W:Landroid/widget/RelativeLayout;

    .line 457
    .line 458
    const v0, 0x7f0a0a26

    .line 459
    .line 460
    .line 461
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    check-cast v0, Landroid/widget/ImageView;

    .line 466
    .line 467
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->X:Landroid/widget/ImageView;

    .line 468
    .line 469
    const v0, 0x7f0a065a

    .line 470
    .line 471
    .line 472
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    check-cast v0, Landroid/widget/FrameLayout;

    .line 477
    .line 478
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->Y:Landroid/widget/FrameLayout;

    .line 479
    .line 480
    const v0, 0x7f0a0208

    .line 481
    .line 482
    .line 483
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Landroid/widget/TextView;

    .line 488
    .line 489
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->B2:Landroid/widget/TextView;

    .line 490
    .line 491
    const v0, 0x7f0a0515

    .line 492
    .line 493
    .line 494
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    check-cast v0, Landroid/widget/ImageView;

    .line 499
    .line 500
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->C2:Landroid/widget/ImageView;

    .line 501
    .line 502
    const v0, 0x7f0a14ca

    .line 503
    .line 504
    .line 505
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Landroid/widget/ImageView;

    .line 510
    .line 511
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->D2:Landroid/widget/ImageView;

    .line 512
    .line 513
    const v0, 0x7f0a178d

    .line 514
    .line 515
    .line 516
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    check-cast v0, Landroid/widget/ImageView;

    .line 521
    .line 522
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->E2:Landroid/widget/ImageView;

    .line 523
    .line 524
    const v0, 0x7f0a086c

    .line 525
    .line 526
    .line 527
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    check-cast v0, Landroid/widget/ImageView;

    .line 532
    .line 533
    iput-object v0, p0, Lcom/join/mgps/activity/b3;->F2:Landroid/widget/ImageView;

    .line 534
    .line 535
    const v0, 0x7f0a1368

    .line 536
    .line 537
    .line 538
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    const v1, 0x7f0a0014

    .line 543
    .line 544
    .line 545
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    const v2, 0x7f0a0a11

    .line 550
    .line 551
    .line 552
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    const v3, 0x7f0a014e

    .line 557
    .line 558
    .line 559
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    const v4, 0x7f0a12b2

    .line 564
    .line 565
    .line 566
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    const v5, 0x7f0a04ff

    .line 571
    .line 572
    .line 573
    invoke-interface {p1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    const v6, 0x7f0a151d

    .line 578
    .line 579
    .line 580
    invoke-interface {p1, v6}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    const v7, 0x7f0a1524

    .line 585
    .line 586
    .line 587
    invoke-interface {p1, v7}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    const v8, 0x7f0a0678

    .line 592
    .line 593
    .line 594
    invoke-interface {p1, v8}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    if-eqz v0, :cond_0

    .line 599
    .line 600
    new-instance v8, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$e0;

    .line 601
    .line 602
    invoke-direct {v8, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$e0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    .line 607
    .line 608
    :cond_0
    if-eqz v1, :cond_1

    .line 609
    .line 610
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$p0;

    .line 611
    .line 612
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$p0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    .line 617
    .line 618
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/b3;->M:Landroid/view/View;

    .line 619
    .line 620
    if-eqz v0, :cond_2

    .line 621
    .line 622
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$t0;

    .line 623
    .line 624
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$t0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    .line 629
    .line 630
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/b3;->V:Landroid/widget/ImageView;

    .line 631
    .line 632
    if-eqz v0, :cond_3

    .line 633
    .line 634
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$u0;

    .line 635
    .line 636
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$u0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    .line 641
    .line 642
    :cond_3
    if-eqz v2, :cond_4

    .line 643
    .line 644
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$v0;

    .line 645
    .line 646
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$v0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    .line 651
    .line 652
    :cond_4
    if-eqz v3, :cond_5

    .line 653
    .line 654
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$w0;

    .line 655
    .line 656
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$w0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    .line 661
    .line 662
    :cond_5
    if-eqz v4, :cond_6

    .line 663
    .line 664
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$x0;

    .line 665
    .line 666
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$x0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    .line 671
    .line 672
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/b3;->L:Landroid/view/View;

    .line 673
    .line 674
    if-eqz v0, :cond_7

    .line 675
    .line 676
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$a;

    .line 677
    .line 678
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$a;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    .line 683
    .line 684
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/b3;->u:Landroid/widget/TextView;

    .line 685
    .line 686
    if-eqz v0, :cond_8

    .line 687
    .line 688
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$b;

    .line 689
    .line 690
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$b;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    .line 695
    .line 696
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/b3;->X:Landroid/widget/ImageView;

    .line 697
    .line 698
    if-eqz v0, :cond_9

    .line 699
    .line 700
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$c;

    .line 701
    .line 702
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$c;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    .line 707
    .line 708
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/b3;->A:Landroid/widget/LinearLayout;

    .line 709
    .line 710
    if-eqz v0, :cond_a

    .line 711
    .line 712
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$d;

    .line 713
    .line 714
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$d;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    .line 719
    .line 720
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/b3;->D:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 721
    .line 722
    if-eqz v0, :cond_b

    .line 723
    .line 724
    new-instance v1, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$e;

    .line 725
    .line 726
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$e;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    .line 731
    .line 732
    :cond_b
    if-eqz v5, :cond_c

    .line 733
    .line 734
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$f;

    .line 735
    .line 736
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$f;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    .line 741
    .line 742
    :cond_c
    if-eqz v6, :cond_d

    .line 743
    .line 744
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$g;

    .line 745
    .line 746
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$g;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    .line 751
    .line 752
    :cond_d
    if-eqz v7, :cond_e

    .line 753
    .line 754
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$h;

    .line 755
    .line 756
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$h;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    .line 761
    .line 762
    :cond_e
    if-eqz p1, :cond_f

    .line 763
    .line 764
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$i;

    .line 765
    .line 766
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$i;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    .line 771
    .line 772
    :cond_f
    invoke-virtual {p0}, Lcom/join/mgps/activity/b3;->afterView()V

    .line 773
    .line 774
    .line 775
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
    iget-object p1, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->V2:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method p0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$l0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$l0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method p1(Z)V
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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$h0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$h0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Z)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;->X2:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method q1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$k;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$b0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$b0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;)V

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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$z;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$j;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$x;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$y;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$s;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Ljava/lang/String;)V

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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$a0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$a0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$g0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$g0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$i0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_$i0;-><init>(Lcom/join/mgps/activity/GamedetialModleFiveFragemnt_;Lcom/join/mgps/dto/ResultMainBean;I)V

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
