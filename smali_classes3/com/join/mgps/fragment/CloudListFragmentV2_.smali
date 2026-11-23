.class public final Lcom/join/mgps/fragment/CloudListFragmentV2_;
.super Lcom/join/mgps/fragment/n;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/CloudListFragmentV2_$z;
    }
.end annotation


# instance fields
.field private final F:Lzc/c;

.field private G:Landroid/view/View;

.field private final H:Ljava/util/Map;
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

.field private final I:Landroid/content/IntentFilter;

.field private final J:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/n;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->F:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->H:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->I:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$1;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->J:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n;->S(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->x0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->p0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/fragment/CloudListFragmentV2_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n;->u0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/fragment/CloudListFragmentV2_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n;->t0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/fragment/CloudListFragmentV2_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n;->d0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/fragment/CloudListFragmentV2_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n;->b0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/fragment/CloudListFragmentV2_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n;->T(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/fragment/CloudListFragmentV2_;Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/n;->O(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/fragment/CloudListFragmentV2_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n;->s0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->i0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->h0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n;->V(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static X0()Lcom/join/mgps/fragment/CloudListFragmentV2_$z;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$z;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$z;-><init>()V

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
    iput-object p1, p0, Lcom/join/mgps/fragment/n;->j:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->I:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v0, "com.join.android.app.mgsim.wufun.com.cloud.delete"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method N()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$v;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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

.method O(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dataBean",
            "commentType"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/CloudListFragmentV2_$p;

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
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/CloudListFragmentV2_$p;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$r;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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

.method S(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/CloudListFragmentV2_$d;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/util/List;)V

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

.method T(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/CloudListFragmentV2_$o;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/CloudListFragmentV2_$o;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method V(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listDataReplace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/CloudListFragmentV2_$b;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/util/List;)V

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

.method b0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/CloudListFragmentV2_$n;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/CloudListFragmentV2_$n;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method d0(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pns"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/CloudListFragmentV2_$m;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/CloudListFragmentV2_$m;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method f0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$s;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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

.method g0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$y;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->H:Ljava/util/Map;

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

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$x;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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

.method i0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$w;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->G:Landroid/view/View;

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

.method o0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$h;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->F:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/CloudListFragmentV2_;->init_(Landroid/os/Bundle;)V

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
    iget-object v1, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->J:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->I:Landroid/content/IntentFilter;

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
    iput-object p3, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->G:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d0288

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
    iput-object p1, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->G:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->G:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->J:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/join/mgps/fragment/n;->onDestroy()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->G:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->d:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->f:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->g:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->h:Landroid/widget/LinearLayout;

    .line 16
    .line 17
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
    const v0, 0x7f0a0f1a

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->d:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const v0, 0x7f0a1321

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 22
    .line 23
    const v0, 0x7f0a1a1f

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->f:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a0f95

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->g:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v0, 0x7f0a0f92

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/join/mgps/fragment/n;->h:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/mgps/fragment/n;->afterView()V

    .line 57
    .line 58
    .line 59
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
    iget-object p1, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->F:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method p0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$f;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/CloudListFragmentV2_;->H:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$g;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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

.method r0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$a;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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

.method s0(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/CloudListFragmentV2_$q;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/CloudListFragmentV2_$q;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$t;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$u;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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

.method showMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/CloudListFragmentV2_$i;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Ljava/lang/String;)V

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

.method t0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/CloudListFragmentV2_$l;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Lcom/join/mgps/dto/CloudListDataBean;)V

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

.method u0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/CloudListFragmentV2_$j;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;Lcom/join/mgps/dto/CloudListDataBean;)V

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

.method v0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$c;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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

.method w0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$k;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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

.method x0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CloudListFragmentV2_$e;-><init>(Lcom/join/mgps/fragment/CloudListFragmentV2_;)V

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
