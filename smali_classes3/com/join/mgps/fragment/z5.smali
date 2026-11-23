.class public final Lcom/join/mgps/fragment/z5;
.super Lcom/join/mgps/fragment/v5;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/z5$n;
    }
.end annotation


# instance fields
.field private final t:Lzc/c;

.field private u:Landroid/view/View;

.field private final v:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/v5;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/z5;->t:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/z5;->v:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic X(Lcom/join/mgps/fragment/z5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/v5;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y(Lcom/join/mgps/fragment/z5;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/v5;->S(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/z5;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/v5;->T(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/z5;Lcom/join/mgps/dto/SimulatorMomentBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/v5;->W(Lcom/join/mgps/dto/SimulatorMomentBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/z5;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/v5;->showTost(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/fragment/z5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/v5;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/fragment/z5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/v5;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/fragment/z5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/v5;->showMain()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/fragment/z5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/v5;->showEmpty()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/fragment/z5;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/v5;->P(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/fragment/z5;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/v5;->R(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static i0()Lcom/join/mgps/fragment/z5$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/z5$n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/z5$n;-><init>()V

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
    return-void
.end method


# virtual methods
.method P(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "page"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/z5$b;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/z5$b;-><init>(Lcom/join/mgps/fragment/z5;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method R(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/z5$c;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/z5$c;-><init>(Lcom/join/mgps/fragment/z5;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method S(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/z5$d;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/z5$d;-><init>(Lcom/join/mgps/fragment/z5;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method T(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/z5$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/z5$h;-><init>(Lcom/join/mgps/fragment/z5;I)V

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

.method V()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/z5$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/z5$g;-><init>(Lcom/join/mgps/fragment/z5;)V

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

.method W(Lcom/join/mgps/dto/SimulatorMomentBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "data",
            "page"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/z5$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/z5$i;-><init>(Lcom/join/mgps/fragment/z5;Lcom/join/mgps/dto/SimulatorMomentBean;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/z5;->v:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/z5;->u:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/z5;->t:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z5;->init_(Landroid/os/Bundle;)V

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
    iput-object p3, p0, Lcom/join/mgps/fragment/z5;->u:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d02df

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
    iput-object p1, p0, Lcom/join/mgps/fragment/z5;->u:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/z5;->u:Landroid/view/View;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/z5;->u:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->d:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->e:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->f:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->g:Landroidx/core/widget/NestedScrollView;

    .line 16
    .line 17
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
    const v0, 0x7f0a1345

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 11
    .line 12
    const v0, 0x7f0a0f95

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->d:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    const v0, 0x7f0a0f92

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->e:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const v0, 0x7f0a0eee

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
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->f:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v0, 0x7f0a110b

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->g:Landroidx/core/widget/NestedScrollView;

    .line 55
    .line 56
    const v0, 0x7f0a1508

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const v1, 0x7f0a1368

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    new-instance v1, Lcom/join/mgps/fragment/z5$e;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/z5$e;-><init>(Lcom/join/mgps/fragment/z5;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    if-eqz p1, :cond_1

    .line 81
    .line 82
    new-instance v0, Lcom/join/mgps/fragment/z5$f;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/z5$f;-><init>(Lcom/join/mgps/fragment/z5;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->afterviews()V

    .line 91
    .line 92
    .line 93
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
    iget-object p1, p0, Lcom/join/mgps/fragment/z5;->t:Lzc/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/z5;->v:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showEmpty()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/z5$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/z5$a;-><init>(Lcom/join/mgps/fragment/z5;)V

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
    new-instance v0, Lcom/join/mgps/fragment/z5$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/z5$k;-><init>(Lcom/join/mgps/fragment/z5;)V

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
    new-instance v0, Lcom/join/mgps/fragment/z5$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/z5$l;-><init>(Lcom/join/mgps/fragment/z5;)V

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

.method showMain()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/z5$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/z5$m;-><init>(Lcom/join/mgps/fragment/z5;)V

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

.method showTost(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/fragment/z5$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/z5$j;-><init>(Lcom/join/mgps/fragment/z5;Ljava/lang/String;)V

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
