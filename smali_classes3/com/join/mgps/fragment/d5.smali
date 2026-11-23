.class public final Lcom/join/mgps/fragment/d5;
.super Lcom/join/mgps/fragment/c5;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/d5$z;
    }
.end annotation


# instance fields
.field private final G:Lzc/c;

.field private H:Landroid/view/View;

.field private final I:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/c5;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/d5;->G:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/d5;->I:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/fragment/d5;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c5;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/fragment/d5;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c5;->r0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->t0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/fragment/d5;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c5;->q0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/fragment/d5;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c5;->c0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/fragment/d5;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c5;->a0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/fragment/d5;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c5;->T(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/fragment/d5;Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/c5;->O(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/fragment/d5;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c5;->p0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->h0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/fragment/d5;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c5;->V(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static U0()Lcom/join/mgps/fragment/d5$z;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$z;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/d5$z;-><init>()V

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
    iput-object p1, p0, Lcom/join/mgps/fragment/c5;->n:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/fragment/d5;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c5;->S(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/d5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c5;->u0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method N()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$u;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    new-instance v8, Lcom/join/mgps/fragment/d5$p;

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
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/d5$p;-><init>(Lcom/join/mgps/fragment/d5;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;I)V

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
    new-instance v0, Lcom/join/mgps/fragment/d5$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$k;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    new-instance v0, Lcom/join/mgps/fragment/d5$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/d5$c;-><init>(Lcom/join/mgps/fragment/d5;Ljava/util/List;)V

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
    new-instance v7, Lcom/join/mgps/fragment/d5$o;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/d5$o;-><init>(Lcom/join/mgps/fragment/d5;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

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
    new-instance v0, Lcom/join/mgps/fragment/d5$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/d5$a;-><init>(Lcom/join/mgps/fragment/d5;Ljava/util/List;)V

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

.method a0(Lcom/join/mgps/dto/CloudListDataBean;)V
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
    new-instance v7, Lcom/join/mgps/fragment/d5$n;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/d5$n;-><init>(Lcom/join/mgps/fragment/d5;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method c0(I)V
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
    new-instance v7, Lcom/join/mgps/fragment/d5$m;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/d5$m;-><init>(Lcom/join/mgps/fragment/d5;Ljava/lang/String;JLjava/lang/String;I)V

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
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$r;-><init>(Lcom/join/mgps/fragment/d5;)V

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

.method f0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$x;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    new-instance v0, Lcom/join/mgps/fragment/d5$w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$w;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/d5;->I:Ljava/util/Map;

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
    new-instance v0, Lcom/join/mgps/fragment/d5$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$v;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/d5;->H:Landroid/view/View;

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

.method l0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$g;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    new-instance v0, Lcom/join/mgps/fragment/d5$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$e;-><init>(Lcom/join/mgps/fragment/d5;)V

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

.method n0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$f;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$y;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/d5;->G:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/d5;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
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
    iput-object p3, p0, Lcom/join/mgps/fragment/d5;->H:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d0476

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
    iput-object p1, p0, Lcom/join/mgps/fragment/d5;->H:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/d5;->H:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
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
    iput-object v0, p0, Lcom/join/mgps/fragment/d5;->H:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->d:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->e:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->h:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->i:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->j:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->k:Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->l:Landroid/widget/LinearLayout;

    .line 24
    .line 25
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
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->d:Landroid/widget/LinearLayout;

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
    check-cast v0, Lcom/join/mgps/customview/XListView2;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->e:Lcom/join/mgps/customview/XListView2;

    .line 22
    .line 23
    const v0, 0x7f0a10d7

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 33
    .line 34
    const v0, 0x7f0a1a1f

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->g:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a0f95

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->h:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v0, 0x7f0a0f92

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->i:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const v0, 0x7f0a13fe

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->j:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    const v0, 0x7f0a1a23

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
    iput-object v0, p0, Lcom/join/mgps/fragment/c5;->k:Landroid/widget/TextView;

    .line 88
    .line 89
    const v0, 0x7f0a0f0b

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    iput-object p1, p0, Lcom/join/mgps/fragment/c5;->l:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c5;->afterView()V

    .line 101
    .line 102
    .line 103
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
    iget-object p1, p0, Lcom/join/mgps/fragment/d5;->G:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method p0(I)V
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
    new-instance v7, Lcom/join/mgps/fragment/d5$q;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/d5$q;-><init>(Lcom/join/mgps/fragment/d5;Ljava/lang/String;JLjava/lang/String;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/d5;->I:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method q0(Lcom/join/mgps/dto/CloudListDataBean;)V
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
    new-instance v0, Lcom/join/mgps/fragment/d5$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/d5$l;-><init>(Lcom/join/mgps/fragment/d5;Lcom/join/mgps/dto/CloudListDataBean;)V

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

.method r0(Lcom/join/mgps/dto/CloudListDataBean;)V
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
    new-instance v0, Lcom/join/mgps/fragment/d5$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/d5$i;-><init>(Lcom/join/mgps/fragment/d5;Lcom/join/mgps/dto/CloudListDataBean;)V

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

.method s0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$b;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    new-instance v0, Lcom/join/mgps/fragment/d5$s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$s;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    new-instance v0, Lcom/join/mgps/fragment/d5$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$t;-><init>(Lcom/join/mgps/fragment/d5;)V

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
    new-instance v0, Lcom/join/mgps/fragment/d5$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/d5$h;-><init>(Lcom/join/mgps/fragment/d5;Ljava/lang/String;)V

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
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$j;-><init>(Lcom/join/mgps/fragment/d5;)V

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

.method u0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d5$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d5$d;-><init>(Lcom/join/mgps/fragment/d5;)V

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
