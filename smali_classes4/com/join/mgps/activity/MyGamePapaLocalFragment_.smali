.class public final Lcom/join/mgps/activity/MyGamePapaLocalFragment_;
.super Lcom/join/mgps/activity/d8;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyGamePapaLocalFragment_$u;
    }
.end annotation


# instance fields
.field private final N:Lzc/c;

.field private O:Landroid/view/View;

.field private final P:Ljava/util/Map;
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

.field private final Q:Landroid/content/IntentFilter;

.field private final R:Landroid/content/BroadcastReceiver;

.field private final S:Landroid/content/IntentFilter;

.field private final T:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/d8;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->N:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->P:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->Q:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$1;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->R:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->S:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$2;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->T:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->updateArchiveTime()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->showNoData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->showUi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d8;->onMoreDeleteGame(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d8;->o0(Lcom/join/mgps/dto/SNKGameInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d8;->s0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static J0()Lcom/join/mgps/activity/MyGamePapaLocalFragment_$u;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$u;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$u;-><init>()V

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
    iput-object p1, p0, Lcom/join/mgps/activity/d8;->t:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->Q:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_unread_notify"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->S:Landroid/content/IntentFilter;

    .line 23
    .line 24
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d8;->showAddShortcutResultDialog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d8;->p0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d8;->notifyShortcutChanged(Ljava/util/HashMap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->refreshShortcutState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/d8;->refreshShortcutState(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method Y()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$k;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$k;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/lang/String;JLjava/lang/String;)V

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
    new-instance v6, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$l;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$l;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/lang/String;JLjava/lang/String;)V

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
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$d;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->P:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->O:Landroid/view/View;

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
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$m;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x3e8

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$m;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$c;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

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

.method notifyShortcutChanged(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$s;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/util/HashMap;)V

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

.method o0(Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resp"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$f;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Lcom/join/mgps/dto/SNKGameInfoBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->N:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->init_(Landroid/os/Bundle;)V

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
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->R:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->Q:Landroid/content/IntentFilter;

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
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->T:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->S:Landroid/content/IntentFilter;

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
    iput-object p3, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->O:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d02cf

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
    iput-object p1, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->O:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->O:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->R:Landroid/content/BroadcastReceiver;

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
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->T:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/join/mgps/activity/d8;->onDestroy()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->O:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->c:Lcom/join/mgps/customview/XListView2;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->d:Landroid/view/View;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->e:Landroid/view/View;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->f:Lcom/join/mgps/customview/WrapContentGridView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->g:Landroid/view/View;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->h:Landroid/widget/TextView;

    .line 18
    .line 19
    return-void
.end method

.method onMoreDeleteGame(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$e;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x64

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
    const v0, 0x7f0a0e88

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->c:Lcom/join/mgps/customview/XListView2;

    .line 11
    .line 12
    const v0, 0x7f0a1139

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->d:Landroid/view/View;

    .line 20
    .line 21
    const v0, 0x7f0a1415

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->e:Landroid/view/View;

    .line 29
    .line 30
    const v0, 0x7f0a113a

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/customview/WrapContentGridView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->f:Lcom/join/mgps/customview/WrapContentGridView;

    .line 40
    .line 41
    const v0, 0x7f0a1109

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->g:Landroid/view/View;

    .line 49
    .line 50
    const v0, 0x7f0a0441

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/d8;->h:Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f0a013b

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const v1, 0x7f0a14b4

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const v2, 0x7f0a1269

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    new-instance v2, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$n;

    .line 85
    .line 86
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$n;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    if-eqz v1, :cond_1

    .line 93
    .line 94
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$o;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$o;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    if-eqz p1, :cond_2

    .line 103
    .line 104
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$p;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$p;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/d8;->g:Landroid/view/View;

    .line 113
    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$q;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$q;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/d8;->afterviews()V

    .line 125
    .line 126
    .line 127
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
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->N:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method p0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "collectionBeanSubs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$h;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;->P:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method refreshShortcutState()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$i;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method refreshShortcutState(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTasks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v7, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$j;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method s0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$g;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method showAddShortcutResultDialog(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$r;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1f4

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

.method showNoData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$a;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

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

.method showUi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$b;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

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

.method public updateArchiveTime()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaLocalFragment_$t;-><init>(Lcom/join/mgps/activity/MyGamePapaLocalFragment_;)V

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
