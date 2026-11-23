.class public final Lcom/join/mgps/fragment/k3;
.super Lcom/join/mgps/fragment/j3;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/k3$l;
    }
.end annotation


# instance fields
.field private final u:Lzc/c;

.field private v:Landroid/view/View;

.field private final w:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/j3;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->u:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->w:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/k3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/j3;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/fragment/k3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/j3;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/fragment/k3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/j3;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/fragment/k3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/j3;->Z(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/fragment/k3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/j3;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/fragment/k3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/j3;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/fragment/k3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/j3;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/fragment/k3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/j3;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method static synthetic j0(Lcom/join/mgps/fragment/k3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/j3;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static k0()Lcom/join/mgps/fragment/k3$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/k3$l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/k3$l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method O()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/k3$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k3$e;-><init>(Lcom/join/mgps/fragment/k3;)V

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

.method S()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/k3$i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k3$i;-><init>(Lcom/join/mgps/fragment/k3;)V

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

.method T()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/k3$b;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/k3$b;-><init>(Lcom/join/mgps/fragment/k3;Ljava/lang/String;JLjava/lang/String;)V

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
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/k3$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k3$k;-><init>(Lcom/join/mgps/fragment/k3;)V

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

.method Y()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/k3$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k3$f;-><init>(Lcom/join/mgps/fragment/k3;)V

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

.method Z(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listData2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/fragment/j3$g;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/k3$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/k3$h;-><init>(Lcom/join/mgps/fragment/k3;Ljava/util/List;)V

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

.method a0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/k3$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k3$g;-><init>(Lcom/join/mgps/fragment/k3;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->w:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->v:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->u:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/k3;->init_(Landroid/os/Bundle;)V

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
    iput-object p3, p0, Lcom/join/mgps/fragment/k3;->v:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d02a6

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
    iput-object p1, p0, Lcom/join/mgps/fragment/k3;->v:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->v:Landroid/view/View;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->v:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->d:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->g:Landroid/widget/Button;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->h:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->i:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->p:Landroid/widget/ImageView;

    .line 18
    .line 19
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
    const v0, 0x7f0a03d6

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
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 11
    .line 12
    const v0, 0x7f0a0a66

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
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->d:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    const v0, 0x7f0a1508

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/Button;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->g:Landroid/widget/Button;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->h:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->i:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v0, 0x7f0a1368

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/ImageView;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/join/mgps/fragment/j3;->p:Landroid/widget/ImageView;

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    new-instance v0, Lcom/join/mgps/fragment/k3$c;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k3$c;-><init>(Lcom/join/mgps/fragment/k3;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/j3;->g:Landroid/widget/Button;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    new-instance v0, Lcom/join/mgps/fragment/k3$d;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k3$d;-><init>(Lcom/join/mgps/fragment/k3;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->M()V

    .line 90
    .line 91
    .line 92
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
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->u:Lzc/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->w:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/k3$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k3$j;-><init>(Lcom/join/mgps/fragment/k3;)V

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
    new-instance v0, Lcom/join/mgps/fragment/k3$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k3$a;-><init>(Lcom/join/mgps/fragment/k3;)V

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
