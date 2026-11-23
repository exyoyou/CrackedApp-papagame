.class public final Lcom/join/mgps/fragment/t0;
.super Lcom/join/mgps/fragment/q0;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/t0$u;
    }
.end annotation


# instance fields
.field private final I:Lzc/c;

.field private J:Landroid/view/View;

.field private final K:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/q0;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/t0;->I:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/t0;->K:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/fragment/t0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->showMain()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/t0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->k0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/fragment/t0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/fragment/t0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/fragment/t0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->d0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static F0()Lcom/join/mgps/fragment/t0$u;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t0$u;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/t0$u;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/mgps/fragment/q0;->l:Lcom/join/mgps/Util/b;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/fragment/t0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->j0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/fragment/t0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s0(Lcom/join/mgps/fragment/t0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/fragment/t0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/fragment/t0;Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->g0(Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/fragment/t0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/fragment/t0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->getDownloadTaskInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/fragment/t0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->o0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/fragment/t0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->m0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/t0;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->n0(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/t0$h;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/t0$h;-><init>(Lcom/join/mgps/fragment/t0;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method b0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/t0$g;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/t0$g;-><init>(Lcom/join/mgps/fragment/t0;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method d0(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "curPid"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/t0$f;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/t0$f;-><init>(Lcom/join/mgps/fragment/t0;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method g0(Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "menu"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/t0$i;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/t0$i;-><init>(Lcom/join/mgps/fragment/t0;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t0;->K:Ljava/util/Map;

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
    new-instance v6, Lcom/join/mgps/fragment/t0$l;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/t0$l;-><init>(Lcom/join/mgps/fragment/t0;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t0;->J:Landroid/view/View;

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

.method j0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t0$q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t0$q;-><init>(Lcom/join/mgps/fragment/t0;)V

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

.method k0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t0$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t0$c;-><init>(Lcom/join/mgps/fragment/t0;)V

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

.method l0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t0$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t0$d;-><init>(Lcom/join/mgps/fragment/t0;)V

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

.method loadData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/t0$j;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/t0$j;-><init>(Lcom/join/mgps/fragment/t0;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method m0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "posts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t0$t;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/t0$t;-><init>(Lcom/join/mgps/fragment/t0;Ljava/util/List;)V

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

.method n0(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "results"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t0$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/t0$a;-><init>(Lcom/join/mgps/fragment/t0;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

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

.method o0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "menu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t0$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/t0$s;-><init>(Lcom/join/mgps/fragment/t0;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t0;->I:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/t0;->init_(Landroid/os/Bundle;)V

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
    iput-object p3, p0, Lcom/join/mgps/fragment/t0;->J:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d0292

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
    iput-object p1, p0, Lcom/join/mgps/fragment/t0;->J:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/t0;->J:Landroid/view/View;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/t0;->J:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->c:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->d:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->f:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->g:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->h:Lcom/join/mgps/customview/XListView2;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->i:Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->j:Landroid/view/View;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->k:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 24
    .line 25
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0024

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
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->c:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const v0, 0x7f0a04d4

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->d:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    const v0, 0x7f0a0fe4

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
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->f:Landroid/widget/LinearLayout;

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
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->g:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v0, 0x7f0a0e88

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/join/mgps/customview/XListView2;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->h:Lcom/join/mgps/customview/XListView2;

    .line 66
    .line 67
    const v0, 0x7f0a04d5

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
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->i:Landroid/widget/ImageView;

    .line 77
    .line 78
    const v0, 0x7f0a1628

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->j:Landroid/view/View;

    .line 86
    .line 87
    const v0, 0x7f0a051e

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->k:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 97
    .line 98
    const v0, 0x7f0a1508

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/join/mgps/fragment/q0;->c:Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    if-eqz v0, :cond_0

    .line 108
    .line 109
    new-instance v1, Lcom/join/mgps/fragment/t0$k;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t0$k;-><init>(Lcom/join/mgps/fragment/t0;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q0;->f:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    new-instance v1, Lcom/join/mgps/fragment/t0$m;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t0$m;-><init>(Lcom/join/mgps/fragment/t0;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    if-eqz p1, :cond_2

    .line 130
    .line 131
    new-instance v0, Lcom/join/mgps/fragment/t0$n;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t0$n;-><init>(Lcom/join/mgps/fragment/t0;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/q0;->g:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    if-eqz p1, :cond_3

    .line 142
    .line 143
    new-instance v0, Lcom/join/mgps/fragment/t0$o;

    .line 144
    .line 145
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t0$o;-><init>(Lcom/join/mgps/fragment/t0;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/q0;->k:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    new-instance v0, Lcom/join/mgps/fragment/t0$p;

    .line 156
    .line 157
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t0$p;-><init>(Lcom/join/mgps/fragment/t0;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q0;->afterViews()V

    .line 164
    .line 165
    .line 166
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
    iget-object p1, p0, Lcom/join/mgps/fragment/t0;->I:Lzc/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t0;->K:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showMain()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t0$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t0$b;-><init>(Lcom/join/mgps/fragment/t0;)V

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
    new-instance v0, Lcom/join/mgps/fragment/t0$r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/t0$r;-><init>(Lcom/join/mgps/fragment/t0;Ljava/lang/String;)V

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

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t0$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t0$e;-><init>(Lcom/join/mgps/fragment/t0;)V

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
