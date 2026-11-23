.class public final Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;
.super Lcom/join/mgps/activity/ForumPostsTagSelectActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;
    }
.end annotation


# static fields
.field public static final ACTION_EXTRA:Ljava/lang/String; = "action"

.field public static final PID_EXTRA:Ljava/lang/String; = "pid"

.field public static final POST_TYPE_EXTRA:Ljava/lang/String; = "post_type"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$1;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->showTagList(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->T(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->changeLoadingState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->showAddTagList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->showRemoveTagList()V

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
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 8
    .line 9
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 15
    .line 16
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const-string v1, "action"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->action:I

    .line 24
    .line 25
    :cond_0
    const-string v1, "post_type"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->post_type:I

    .line 38
    .line 39
    :cond_1
    const-string v1, "pid"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->pid:I

    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;
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
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;
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
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method T(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$d;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/lang/String;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$e;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;I)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->beans_:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->init_(Landroid/os/Bundle;)V

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
    const p1, 0x7f0d0055

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->onDestroy()V

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
    const v0, 0x7f0a008a

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->actionbarLayout:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const v0, 0x7f0a014e

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->back_image:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v0, 0x7f0a0e37

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->layout_title:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a0e88

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/join/mgps/customview/XListView2;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->listView:Lcom/join/mgps/customview/XListView2;

    .line 44
    .line 45
    const v0, 0x7f0a0f68

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 55
    .line 56
    const v0, 0x7f0a1364

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/Button;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->release:Landroid/widget/Button;

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$a;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$a;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->back_image:Landroid/widget/ImageView;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$b;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$b;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->afterViews()V

    .line 90
    .line 91
    .line 92
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->beans_:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newIntent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showAddTagList()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$f;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$f;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method showRemoveTagList()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$g;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$g;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method showTagList(Ljava/util/List;)V
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
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$c;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/util/List;)V

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
