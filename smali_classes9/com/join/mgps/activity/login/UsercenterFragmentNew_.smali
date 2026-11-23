.class public final Lcom/join/mgps/activity/login/UsercenterFragmentNew_;
.super Lcom/join/mgps/activity/login/UsercenterFragmentNew;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/UsercenterFragmentNew_$FragmentBuilder_;
    }
.end annotation


# instance fields
.field private final beans_:Ljava/util/Map;
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

.field private contentView_:Landroid/view/View;

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final intentFilter2_:Landroid/content/IntentFilter;

.field private final loginOutReceiver_:Landroid/content/BroadcastReceiver;

.field private final onViewChangedNotifier_:Lzc/c;

.field private final updateInfoReceiver_:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$1;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->updateInfoReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$2;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->loginOutReceiver_:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getUserInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->pullMyProfileInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getDownloadTaskInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->hideRedPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tokenFailure()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateAdapterByNewMsgCount(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->changeMgState(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->touristLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static builder()Lcom/join/mgps/activity/login/UsercenterFragmentNew_$FragmentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$FragmentBuilder_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$FragmentBuilder_;-><init>()V

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
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 23
    .line 24
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_login_out"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method changeMgState(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "content",
            "tag_id"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$17;

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
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$17;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
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
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->beans_:Ljava/util/Map;

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
    new-instance v6, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$21;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$21;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getUserInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$19;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$19;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method hideRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$12;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$12;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

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

.method loadViewConfigsFromLocal()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$11;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$11;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->init_(Landroid/os/Bundle;)V

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->updateInfoReceiver_:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter1_:Landroid/content/IntentFilter;

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->loginOutReceiver_:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter2_:Landroid/content/IntentFilter;

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
    iput-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d02e5

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
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->updateInfoReceiver_:Landroid/content/BroadcastReceiver;

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->loginOutReceiver_:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onDestroy()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_arrow:Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_nickname:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_copperTitle:Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyTitle:Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->svipTitle:Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyMessage:Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_userinfo:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_svip:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rl_members:Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_membersNew:Landroid/view/View;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModText:Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModLayout:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerText:Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerLayout:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyText:Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyLayout:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftText:Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftLayout:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->scroolView:Landroidx/core/widget/NestedScrollView;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userLayout:Landroid/view/View;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->modNotVipView:Landroid/view/View;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->statubar:Landroid/view/View;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    .line 92
    .line 93
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
    const v0, 0x7f0a0a95

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    const v0, 0x7f0a0a0c

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_arrow:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v0, 0x7f0a1a58

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
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_nickname:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a0a97

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    .line 44
    .line 45
    const v0, 0x7f0a1a59

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    .line 55
    .line 56
    const v0, 0x7f0a1a55

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 66
    .line 67
    const v0, 0x7f0a1a56

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a0ee7

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
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_copperTitle:Landroid/widget/TextView;

    .line 88
    .line 89
    const v0, 0x7f0a1199

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyTitle:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a1652

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->svipTitle:Landroid/widget/TextView;

    .line 110
    .line 111
    const v0, 0x7f0a1198

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
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyMessage:Landroid/widget/TextView;

    .line 121
    .line 122
    const v0, 0x7f0a1a57

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 132
    .line 133
    const v0, 0x7f0a1a5a

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/TextView;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    .line 143
    .line 144
    const v0, 0x7f0a0f52

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/LinearLayout;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_userinfo:Landroid/widget/LinearLayout;

    .line 154
    .line 155
    const v0, 0x7f0a0f3b

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_svip:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 165
    .line 166
    const v0, 0x7f0a13e9

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rl_members:Landroid/widget/RelativeLayout;

    .line 176
    .line 177
    const v0, 0x7f0a0f0f

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_membersNew:Landroid/view/View;

    .line 185
    .line 186
    const v0, 0x7f0a1bb3

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/widget/TextView;

    .line 194
    .line 195
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    .line 196
    .line 197
    const v0, 0x7f0a1bad

    .line 198
    .line 199
    .line 200
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/widget/TextView;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModText:Landroid/widget/TextView;

    .line 207
    .line 208
    const v0, 0x7f0a1bab

    .line 209
    .line 210
    .line 211
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 216
    .line 217
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 218
    .line 219
    const v0, 0x7f0a1bac

    .line 220
    .line 221
    .line 222
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroid/widget/LinearLayout;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModLayout:Landroid/widget/LinearLayout;

    .line 229
    .line 230
    const v0, 0x7f0a0631

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Landroid/widget/TextView;

    .line 238
    .line 239
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerText:Landroid/widget/TextView;

    .line 240
    .line 241
    const v0, 0x7f0a062f

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 249
    .line 250
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 251
    .line 252
    const v0, 0x7f0a0630

    .line 253
    .line 254
    .line 255
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Landroid/widget/LinearLayout;

    .line 260
    .line 261
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerLayout:Landroid/widget/LinearLayout;

    .line 262
    .line 263
    const v0, 0x7f0a119c

    .line 264
    .line 265
    .line 266
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Landroid/widget/TextView;

    .line 271
    .line 272
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyText:Landroid/widget/TextView;

    .line 273
    .line 274
    const v0, 0x7f0a119a

    .line 275
    .line 276
    .line 277
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 282
    .line 283
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 284
    .line 285
    const v0, 0x7f0a119b

    .line 286
    .line 287
    .line 288
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroid/widget/LinearLayout;

    .line 293
    .line 294
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyLayout:Landroid/widget/LinearLayout;

    .line 295
    .line 296
    const v0, 0x7f0a05b1

    .line 297
    .line 298
    .line 299
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    check-cast v0, Landroid/widget/TextView;

    .line 304
    .line 305
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftText:Landroid/widget/TextView;

    .line 306
    .line 307
    const v0, 0x7f0a05af

    .line 308
    .line 309
    .line 310
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 315
    .line 316
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 317
    .line 318
    const v0, 0x7f0a05b0

    .line 319
    .line 320
    .line 321
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Landroid/widget/LinearLayout;

    .line 326
    .line 327
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftLayout:Landroid/widget/LinearLayout;

    .line 328
    .line 329
    const v0, 0x7f0a0fd9

    .line 330
    .line 331
    .line 332
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 337
    .line 338
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 339
    .line 340
    const v0, 0x7f0a0fda

    .line 341
    .line 342
    .line 343
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 348
    .line 349
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroidx/recyclerview/widget/RecyclerView;

    .line 350
    .line 351
    const v0, 0x7f0a0fdb

    .line 352
    .line 353
    .line 354
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 359
    .line 360
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroidx/recyclerview/widget/RecyclerView;

    .line 361
    .line 362
    const v0, 0x7f0a1496

    .line 363
    .line 364
    .line 365
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 370
    .line 371
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->scroolView:Landroidx/core/widget/NestedScrollView;

    .line 372
    .line 373
    const v0, 0x7f0a1b09

    .line 374
    .line 375
    .line 376
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userLayout:Landroid/view/View;

    .line 381
    .line 382
    const v0, 0x7f0a1775

    .line 383
    .line 384
    .line 385
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    .line 390
    .line 391
    const v0, 0x7f0a106d

    .line 392
    .line 393
    .line 394
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->modNotVipView:Landroid/view/View;

    .line 399
    .line 400
    const v0, 0x7f0a0a96

    .line 401
    .line 402
    .line 403
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 408
    .line 409
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 410
    .line 411
    const v0, 0x7f0a1628

    .line 412
    .line 413
    .line 414
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->statubar:Landroid/view/View;

    .line 419
    .line 420
    const v0, 0x7f0a051f

    .line 421
    .line 422
    .line 423
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 428
    .line 429
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 430
    .line 431
    const v0, 0x7f0a051e

    .line 432
    .line 433
    .line 434
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 439
    .line 440
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 441
    .line 442
    const v0, 0x7f0a0496

    .line 443
    .line 444
    .line 445
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    check-cast v0, Landroid/widget/TextView;

    .line 450
    .line 451
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    .line 452
    .line 453
    const v0, 0x7f0a1695

    .line 454
    .line 455
    .line 456
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    .line 461
    .line 462
    const v0, 0x7f0a1196

    .line 463
    .line 464
    .line 465
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    const v1, 0x7f0a0ee6

    .line 470
    .line 471
    .line 472
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    if-eqz v0, :cond_0

    .line 477
    .line 478
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$3;

    .line 479
    .line 480
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$3;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .line 485
    .line 486
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    .line 487
    .line 488
    if-eqz v0, :cond_1

    .line 489
    .line 490
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$4;

    .line 491
    .line 492
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$4;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    .line 497
    .line 498
    :cond_1
    if-eqz p1, :cond_2

    .line 499
    .line 500
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$5;

    .line 501
    .line 502
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$5;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    .line 507
    .line 508
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    .line 509
    .line 510
    if-eqz p1, :cond_3

    .line 511
    .line 512
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$6;

    .line 513
    .line 514
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$6;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    .line 519
    .line 520
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 521
    .line 522
    if-eqz p1, :cond_4

    .line 523
    .line 524
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$7;

    .line 525
    .line 526
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$7;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    .line 531
    .line 532
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 533
    .line 534
    if-eqz p1, :cond_5

    .line 535
    .line 536
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$8;

    .line 537
    .line 538
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$8;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    .line 543
    .line 544
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->afterViews()V

    .line 545
    .line 546
    .line 547
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
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->onViewChangedNotifier_:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method pullMyProfileInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$20;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$20;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method refreshViews()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$9;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

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

.method showNotifUi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$10;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$10;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

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
            "info"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$14;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$14;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;)V

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

.method tokenFailure()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$13;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$13;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

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

.method touristLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$18;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$18;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method updateAdapterByNewMsgCount(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$15;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$15;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;I)V

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
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$16;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$16;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

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
