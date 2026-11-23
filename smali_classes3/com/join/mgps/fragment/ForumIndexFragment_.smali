.class public final Lcom/join/mgps/fragment/ForumIndexFragment_;
.super Lcom/join/mgps/fragment/t1;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/ForumIndexFragment_$a0;
    }
.end annotation


# instance fields
.field private final Y:Lzc/c;

.field private Z:Landroid/view/View;

.field private final b1:Landroid/content/IntentFilter;

.field private final f1:Landroid/content/BroadcastReceiver;

.field private final i1:Landroid/content/IntentFilter;

.field private final l1:Landroid/content/BroadcastReceiver;

.field private final p0:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/t1;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->Y:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->p0:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->b1:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$1;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->f1:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->i1:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$2;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->l1:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->E0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->D0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/t1;->T(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/fragment/ForumIndexFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/t1;->J0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/fragment/ForumIndexFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/t1;->H0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->K0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->I0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/t1;->t0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/fragment/ForumIndexFragment_;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/t1;->z0(ZLjava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/t1;->q0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/fragment/ForumIndexFragment_;Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/t1;->x0(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->i0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/fragment/ForumIndexFragment_;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/t1;->v0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/fragment/ForumIndexFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/t1;->X(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/fragment/ForumIndexFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->r0()V

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
    iput-object p1, p0, Lcom/join/mgps/fragment/t1;->N:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->b1:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->i1:Landroid/content/IntentFilter;

    .line 23
    .line 24
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.backup_game_finish"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static j1()Lcom/join/mgps/fragment/ForumIndexFragment_$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/ForumIndexFragment_$a0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method A0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$z;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

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

.method D0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$f;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

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
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$v;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

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
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/ForumIndexFragment_$r;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/ForumIndexFragment_$r;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method H0(I)V
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
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/ForumIndexFragment_$j;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;I)V

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

.method I0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$l;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

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

.method J0(I)V
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
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/ForumIndexFragment_$i;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;I)V

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

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$k;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

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

.method T(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/ForumIndexFragment_$g;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;)V

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

.method X(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/ForumIndexFragment_$d;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;I)V

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
    new-instance v6, Lcom/join/mgps/fragment/ForumIndexFragment_$s;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/ForumIndexFragment_$s;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method c0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/ForumIndexFragment_$q;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/ForumIndexFragment_$q;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;JLjava/lang/String;)V

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
    new-instance v6, Lcom/join/mgps/fragment/ForumIndexFragment_$p;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/ForumIndexFragment_$p;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method g0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/ForumIndexFragment_$n;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/ForumIndexFragment_$n;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->p0:Ljava/util/Map;

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

.method i0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$b;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->Z:Landroid/view/View;

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
    new-instance v6, Lcom/join/mgps/fragment/ForumIndexFragment_$m;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/ForumIndexFragment_$m;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->Y:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/ForumIndexFragment_;->init_(Landroid/os/Bundle;)V

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
    iget-object v1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->f1:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->b1:Landroid/content/IntentFilter;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->l1:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->i1:Landroid/content/IntentFilter;

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
    iput-object p3, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->Z:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d06a4

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
    iput-object p1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->Z:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->Z:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->f1:Landroid/content/BroadcastReceiver;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->l1:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/t1;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->Z:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->d:Landroid/view/View;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->e:Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->f:Landroid/view/View;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->m:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->n:Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->B:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->D:Landroid/widget/TextView;

    .line 32
    .line 33
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a006f

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->d:Landroid/view/View;

    .line 9
    .line 10
    const v0, 0x7f0a014e

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->e:Landroid/widget/ImageView;

    .line 20
    .line 21
    const v0, 0x7f0a0039

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->f:Landroid/view/View;

    .line 29
    .line 30
    const v0, 0x7f0a06b9

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->g:Landroid/widget/TextView;

    .line 40
    .line 41
    const v0, 0x7f0a0f68

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 51
    .line 52
    const v0, 0x7f0a1492

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lru/noties/scrollable/ScrollableLayout;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 62
    .line 63
    const v0, 0x7f0a07fb

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 73
    .line 74
    const v0, 0x7f0a166d

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 84
    .line 85
    const v0, 0x7f0a1b84

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
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 95
    .line 96
    const v0, 0x7f0a0fe4

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->m:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 106
    .line 107
    const v0, 0x7f0a14b4

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->n:Landroid/widget/RelativeLayout;

    .line 117
    .line 118
    const v0, 0x7f0a0e32

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
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->B:Landroid/widget/RelativeLayout;

    .line 128
    .line 129
    const v0, 0x7f0a0207

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Landroid/widget/TextView;

    .line 137
    .line 138
    iput-object p1, p0, Lcom/join/mgps/fragment/t1;->D:Landroid/widget/TextView;

    .line 139
    .line 140
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->f:Landroid/view/View;

    .line 141
    .line 142
    if-eqz p1, :cond_0

    .line 143
    .line 144
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$t;

    .line 145
    .line 146
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$t;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->e:Landroid/widget/ImageView;

    .line 153
    .line 154
    if-eqz p1, :cond_1

    .line 155
    .line 156
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$u;

    .line 157
    .line 158
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$u;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->afterViews()V

    .line 165
    .line 166
    .line 167
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
    iget-object p1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->Y:Lzc/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_;->p0:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method q0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fenzu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroupClassify;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/ForumIndexFragment_$y;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/util/List;)V

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

.method r0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$e;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

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

.method t0(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/ForumIndexFragment_$o;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/ForumIndexFragment_$o;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method v0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
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
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/ForumIndexFragment_$c;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V

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
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$h;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

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

.method x0(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
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
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/ForumIndexFragment_$a;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V

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

.method y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/ForumIndexFragment_$w;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;)V

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

.method z0(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "labelSwitcher",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumIndexFragment_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/ForumIndexFragment_$x;-><init>(Lcom/join/mgps/fragment/ForumIndexFragment_;ZLjava/util/List;)V

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
