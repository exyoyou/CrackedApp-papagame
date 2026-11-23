.class public final Lcom/join/mgps/fragment/LabelFragment_;
.super Lcom/join/mgps/fragment/y3;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/LabelFragment_$s;
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

.field private final J:Landroid/content/IntentFilter;

.field private final K:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/y3;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/LabelFragment_;->G:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/LabelFragment_;->I:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/LabelFragment_;->J:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$1;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/fragment/LabelFragment_;->K:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/fragment/LabelFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/y3;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/LabelFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/fragment/LabelFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/y3;->S(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/fragment/LabelFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/y3;->c0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/fragment/LabelFragment_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/y3;->u0(Ljava/util/List;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/fragment/LabelFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/fragment/LabelFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/fragment/LabelFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/fragment/LabelFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->hideLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/fragment/LabelFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->p0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/fragment/LabelFragment_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/y3;->r0(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/fragment/LabelFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/y3;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static M0()Lcom/join/mgps/fragment/LabelFragment_$s;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$s;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/LabelFragment_$s;-><init>()V

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
    iget-object p1, p0, Lcom/join/mgps/fragment/LabelFragment_;->J:Landroid/content/IntentFilter;

    .line 5
    .line 6
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/LabelFragment_;->J:Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/fragment/LabelFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/fragment/LabelFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->Z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/fragment/LabelFragment_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/y3;->t0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/LabelFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method S(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/LabelFragment_$i;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/LabelFragment_$i;-><init>(Lcom/join/mgps/fragment/LabelFragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method W()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/LabelFragment_$h;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/LabelFragment_$h;-><init>(Lcom/join/mgps/fragment/LabelFragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method Z()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$e;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1f4

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

.method c0(I)V
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
    new-instance v7, Lcom/join/mgps/fragment/LabelFragment_$j;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/LabelFragment_$j;-><init>(Lcom/join/mgps/fragment/LabelFragment_;Ljava/lang/String;JLjava/lang/String;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/LabelFragment_;->I:Ljava/util/Map;

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

.method hideLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$a;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/LabelFragment_;->H:Landroid/view/View;

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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$f;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$r;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$q;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/LabelFragment_;->G:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/LabelFragment_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/y3;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/join/mgps/fragment/LabelFragment_;->K:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/fragment/LabelFragment_;->J:Landroid/content/IntentFilter;

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
    iput-object p3, p0, Lcom/join/mgps/fragment/LabelFragment_;->H:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d02af

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
    iput-object p1, p0, Lcom/join/mgps/fragment/LabelFragment_;->H:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/LabelFragment_;->H:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/LabelFragment_;->K:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/join/mgps/fragment/y3;->onDestroy()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/LabelFragment_;->H:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->v:Landroid/widget/ImageView;

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
    const v0, 0x7f0a0f92

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
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    const v0, 0x7f0a0fde

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/customview/XListView2;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 33
    .line 34
    const v0, 0x7f0a0fe4

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 44
    .line 45
    const v0, 0x7f0a0a65

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
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->v:Landroid/widget/ImageView;

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
    move-result-object v0

    .line 63
    const v1, 0x7f0a1508

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
    new-instance v1, Lcom/join/mgps/fragment/LabelFragment_$k;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/LabelFragment_$k;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$l;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$l;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->afterViews()V

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
    iget-object p1, p0, Lcom/join/mgps/fragment/LabelFragment_;->G:Lzc/c;

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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$b;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/LabelFragment_;->I:Ljava/util/Map;

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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$p;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

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

.method r0(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/LabelFragment_$c;-><init>(Lcom/join/mgps/fragment/LabelFragment_;Lcom/join/mgps/dto/DetailResultBean;)V

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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/LabelFragment_$m;-><init>(Lcom/join/mgps/fragment/LabelFragment_;)V

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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/LabelFragment_$g;-><init>(Lcom/join/mgps/fragment/LabelFragment_;Ljava/lang/String;)V

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

.method showToast(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/LabelFragment_$d;-><init>(Lcom/join/mgps/fragment/LabelFragment_;Ljava/lang/String;)V

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

.method t0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datas"
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
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/LabelFragment_$n;-><init>(Lcom/join/mgps/fragment/LabelFragment_;Ljava/util/List;)V

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

.method u0(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "datas",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/LabelFragment_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/LabelFragment_$o;-><init>(Lcom/join/mgps/fragment/LabelFragment_;Ljava/util/List;I)V

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
