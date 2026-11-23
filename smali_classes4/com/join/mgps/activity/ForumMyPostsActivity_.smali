.class public final Lcom/join/mgps/activity/ForumMyPostsActivity_;
.super Lcom/join/mgps/activity/ForumMyPostsActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumMyPostsActivity_$o;
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

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$1;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/ForumMyPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->loadSrvData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateCommentData(Ljava/util/List;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/ForumMyPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->getForumProfileMessageData(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/ForumMyPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->praisePosts(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/ForumMyPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->changeLoadingState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->notifyAdapter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showMoreLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->downloadGameById(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f12031f

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->netExcption:Ljava/lang/String;

    .line 16
    .line 17
    const v0, 0x7f1200cd

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->netConnectException:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 27
    .line 28
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 34
    .line 35
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumMyPostsActivity_$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$o;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumMyPostsActivity_$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$o;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method changeLoadingState(I)V
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
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_$j;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;I)V

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

.method downloadGameById(Ljava/lang/String;)V
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
    new-instance v7, Lcom/join/mgps/activity/ForumMyPostsActivity_$c;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumMyPostsActivity_$c;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->beans_:Ljava/util/Map;

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

.method getForumProfileMessageData(I)V
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
    new-instance v7, Lcom/join/mgps/activity/ForumMyPostsActivity_$e;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumMyPostsActivity_$e;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method loadSrvData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumMyPostsActivity_$d;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumMyPostsActivity_$d;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method notifyAdapter()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$m;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0054

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
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
    const v0, 0x7f0a014e

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->back_image:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v0, 0x7f0a0e37

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->layout_title:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0f68

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 44
    .line 45
    const v0, 0x7f0a1053

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/join/mgps/customview/XListView2;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->back_image:Landroid/widget/ImageView;

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$g;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$g;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->afterViews()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method praisePosts(I)V
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
    new-instance v7, Lcom/join/mgps/activity/ForumMyPostsActivity_$f;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumMyPostsActivity_$f;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;JLjava/lang/String;I)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method showDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$a;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_$b;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V

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

.method showMoreLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$n;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

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
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_$l;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V

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

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
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
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_$h;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

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

.method stopXlistRefreshAndLoadMore()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$k;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

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

.method updateCommentData(Ljava/util/List;I)V
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
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumMyPostsActivity_$i;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/util/List;I)V

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
