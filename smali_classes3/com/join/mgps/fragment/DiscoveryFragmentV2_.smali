.class public final Lcom/join/mgps/fragment/DiscoveryFragmentV2_;
.super Lcom/join/mgps/fragment/f0;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/DiscoveryFragmentV2_$j;
    }
.end annotation


# instance fields
.field private final E:Lzc/c;

.field private F:Landroid/view/View;

.field private final G:Ljava/util/Map;
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

.field private final H:Landroid/content/IntentFilter;

.field private final I:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/f0;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->E:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->G:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->H:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$1;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->I:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic Y(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/f0;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/f0;->X(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/f0;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/f0;->W(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/f0;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/f0;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e0()Lcom/join/mgps/fragment/DiscoveryFragmentV2_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$j;-><init>()V

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
    iput-object p1, p0, Lcom/join/mgps/fragment/f0;->t:Lcom/join/mgps/Util/b;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->H:Landroid/content/IntentFilter;

    .line 15
    .line 16
    const-string v0, "com.join.update.position"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method R()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$i;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$i;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method T()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$e;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

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

.method V()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$g;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V

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

.method W(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
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
    new-instance v0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$h;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

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

.method X(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dIscoverTypeBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DIscoverTypeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$f;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->G:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->F:Landroid/view/View;

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

.method loadData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$a;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$a;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->E:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->init_(Landroid/os/Bundle;)V

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
    iget-object v1, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->I:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->H:Landroid/content/IntentFilter;

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
    iput-object p3, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->F:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d0246

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
    iput-object p1, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->F:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->F:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->I:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->F:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->d:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->e:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->f:Lcom/join/mgps/customview/ViewPagerSlide;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->g:Landroidx/appcompat/widget/Toolbar;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->h:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->i:Lcom/google/android/material/appbar/AppBarLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->j:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->k:Landroid/widget/GridView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->l:Lit/sephiroth/android/library/widget/HListView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->m:Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->n:Landroidx/core/widget/NestedScrollView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->o:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->p:Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->q:Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->r:Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->s:Landroid/widget/TextView;

    .line 40
    .line 41
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0fe4

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->d:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->e:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const v0, 0x7f0a1b9f

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/join/mgps/customview/ViewPagerSlide;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->f:Lcom/join/mgps/customview/ViewPagerSlide;

    .line 44
    .line 45
    const v0, 0x7f0a17e7

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->g:Landroidx/appcompat/widget/Toolbar;

    .line 55
    .line 56
    const v0, 0x7f0a166a

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/flyco/tablayout/SlidingTabLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->h:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 66
    .line 67
    const v0, 0x7f0a0104

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->i:Lcom/google/android/material/appbar/AppBarLayout;

    .line 77
    .line 78
    const v0, 0x7f0a04d8

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->j:Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    const v0, 0x7f0a04d7

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/GridView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->k:Landroid/widget/GridView;

    .line 99
    .line 100
    const v0, 0x7f0a04d1

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->l:Lit/sephiroth/android/library/widget/HListView;

    .line 110
    .line 111
    const v0, 0x7f0a179b

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->m:Landroid/widget/TextView;

    .line 121
    .line 122
    const v0, 0x7f0a021b

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->n:Landroidx/core/widget/NestedScrollView;

    .line 132
    .line 133
    const v0, 0x7f0a1799

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->o:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    const v0, 0x7f0a179a

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/TextView;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->p:Landroid/widget/TextView;

    .line 154
    .line 155
    const v0, 0x7f0a117a

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->q:Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0a1175

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
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->r:Landroid/widget/TextView;

    .line 176
    .line 177
    const v0, 0x7f0a17eb

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/TextView;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->s:Landroid/widget/TextView;

    .line 187
    .line 188
    const v0, 0x7f0a1368

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const v1, 0x7f0a1508

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-object v1, p0, Lcom/join/mgps/fragment/f0;->r:Landroid/widget/TextView;

    .line 203
    .line 204
    if-eqz v1, :cond_0

    .line 205
    .line 206
    new-instance v2, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$b;

    .line 207
    .line 208
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$b;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    :cond_0
    if-eqz v0, :cond_1

    .line 215
    .line 216
    new-instance v1, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$c;

    .line 217
    .line 218
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$c;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    :cond_1
    if-eqz p1, :cond_2

    .line 225
    .line 226
    new-instance v0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$d;

    .line 227
    .line 228
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/DiscoveryFragmentV2_$d;-><init>(Lcom/join/mgps/fragment/DiscoveryFragmentV2_;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f0;->afterView()V

    .line 235
    .line 236
    .line 237
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
    iget-object p1, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->E:Lzc/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/DiscoveryFragmentV2_;->G:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
