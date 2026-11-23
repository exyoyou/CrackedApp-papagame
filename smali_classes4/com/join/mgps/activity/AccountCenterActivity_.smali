.class public final Lcom/join/mgps/activity/AccountCenterActivity_;
.super Lcom/join/mgps/activity/AccountCenterActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AccountCenterActivity_$d0;
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

.field private final onViewChangedNotifier_:Lzc/c;

.field private final updateInfoReceiver_:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/AccountCenterActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$1;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->updateInfoReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/AccountCenterActivity_;Lcom/join/mgps/dto/RecomCentrebean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity;->initUpdate(Lcom/join/mgps/dto/RecomCentrebean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->pullMyProfileInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->showPabiIntent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->touristLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->tokenFailure()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->refreshViews()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/AccountCenterActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity;->checkMessageInfoSuccess(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->notifyLoginSuccess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity;->error(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->newUpdate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->checkUserInfo()V

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
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->updateInfoReceiver_:Landroid/content/BroadcastReceiver;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/AccountCenterActivity_$d0;
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
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$d0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/AccountCenterActivity_$d0;
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
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$d0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method checkMessageInfoSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_$n;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;I)V

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

.method checkUserInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountCenterActivity_$s;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountCenterActivity_$s;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method error(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_$p;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->beans_:Ljava/util/Map;

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

.method initUpdate(Lcom/join/mgps/dto/RecomCentrebean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "recomCentrebean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_$j;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Lcom/join/mgps/dto/RecomCentrebean;)V

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
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method newUpdate()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountCenterActivity_$r;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountCenterActivity_$r;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method notifyLoginSuccess()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$o;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d067b

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->updateInfoReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
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
    const v0, 0x7f0a0134

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    const v0, 0x7f0a0e55

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->levelBadge:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a1133

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->nickname:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a005e

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->account:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a180e

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->tourTip:Landroid/widget/TextView;

    .line 55
    .line 56
    const v0, 0x7f0a1bba

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vip_lay:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const v0, 0x7f0a11f8

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->papaBrasss:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a0fd8

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->mGiftBox:Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    const v0, 0x7f0a0fe3

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->mPosts:Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    const v0, 0x7f0a0fe0

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->mMessages:Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    const v0, 0x7f0a17e8

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->tools:Landroid/widget/RelativeLayout;

    .line 121
    .line 122
    const v0, 0x7f0a1035

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->messageBadge:Landroid/widget/TextView;

    .line 132
    .line 133
    const v0, 0x7f0a1592

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->signBadge:Landroid/widget/TextView;

    .line 143
    .line 144
    const v0, 0x7f0a11fc

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->papaMoney:Landroid/widget/TextView;

    .line 154
    .line 155
    const v0, 0x7f0a1b03

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/ImageView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->userIconBg:Landroid/widget/ImageView;

    .line 165
    .line 166
    const v0, 0x7f0a11da

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->pabiAd:Landroid/widget/TextView;

    .line 176
    .line 177
    const v0, 0x7f0a044c

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->couponNumber:Landroid/widget/TextView;

    .line 187
    .line 188
    const v0, 0x7f0a1594

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->signIn:Landroid/widget/RelativeLayout;

    .line 198
    .line 199
    const v0, 0x7f0a0fd6

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->mBrass:Landroid/widget/RelativeLayout;

    .line 209
    .line 210
    const v0, 0x7f0a0e90

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->liveLayout:Landroid/widget/RelativeLayout;

    .line 220
    .line 221
    const v0, 0x7f0a1210

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/TextView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->papaliveText:Landroid/widget/TextView;

    .line 231
    .line 232
    const v0, 0x7f0a11d2

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->paCreditCenter:Landroid/widget/RelativeLayout;

    .line 242
    .line 243
    const v0, 0x7f0a0aa3

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 251
    .line 252
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->joystick:Landroid/widget/RelativeLayout;

    .line 253
    .line 254
    const v0, 0x7f0a1b0a

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroid/widget/FrameLayout;

    .line 262
    .line 263
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->userLogin:Landroid/widget/FrameLayout;

    .line 264
    .line 265
    const v0, 0x7f0a0531

    .line 266
    .line 267
    .line 268
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 273
    .line 274
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->downloads:Landroid/widget/RelativeLayout;

    .line 275
    .line 276
    const v0, 0x7f0a0605

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 284
    .line 285
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->feedback:Landroid/widget/RelativeLayout;

    .line 286
    .line 287
    const v0, 0x7f0a11fd

    .line 288
    .line 289
    .line 290
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 295
    .line 296
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->papaMore:Landroid/widget/RelativeLayout;

    .line 297
    .line 298
    const v0, 0x7f0a148c

    .line 299
    .line 300
    .line 301
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Lcom/join/mgps/customview/PullableScrollView;

    .line 306
    .line 307
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->scrollView:Lcom/join/mgps/customview/PullableScrollView;

    .line 308
    .line 309
    const v0, 0x7f0a0150

    .line 310
    .line 311
    .line 312
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 317
    .line 318
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->back_layout:Landroid/widget/RelativeLayout;

    .line 319
    .line 320
    const v0, 0x7f0a014e

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/ImageView;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->back_image:Landroid/widget/ImageView;

    .line 330
    .line 331
    const v0, 0x7f0a1790

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Landroid/widget/TextView;

    .line 339
    .line 340
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->title_textview:Landroid/widget/TextView;

    .line 341
    .line 342
    const v0, 0x7f0a10cb

    .line 343
    .line 344
    .line 345
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 350
    .line 351
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->myGameTip:Landroid/widget/RelativeLayout;

    .line 352
    .line 353
    const v0, 0x7f0a0061

    .line 354
    .line 355
    .line 356
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->accountCenterLine:Landroid/view/View;

    .line 361
    .line 362
    const v0, 0x7f0a1b1c

    .line 363
    .line 364
    .line 365
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Landroid/widget/ImageView;

    .line 370
    .line 371
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->userisLogin:Landroid/widget/ImageView;

    .line 372
    .line 373
    const v0, 0x7f0a0e16

    .line 374
    .line 375
    .line 376
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Landroid/widget/LinearLayout;

    .line 381
    .line 382
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->layoutText:Landroid/widget/LinearLayout;

    .line 383
    .line 384
    const v0, 0x7f0a0060

    .line 385
    .line 386
    .line 387
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    check-cast v0, Landroid/widget/ImageView;

    .line 392
    .line 393
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->accountCenterImageView:Landroid/widget/ImageView;

    .line 394
    .line 395
    const v0, 0x7f0a0062

    .line 396
    .line 397
    .line 398
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Landroid/widget/ImageView;

    .line 403
    .line 404
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->accountCenterMsgBg:Landroid/widget/ImageView;

    .line 405
    .line 406
    const v0, 0x7f0a0904

    .line 407
    .line 408
    .line 409
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 414
    .line 415
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->img_brass:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 416
    .line 417
    const v0, 0x7f0a0244

    .line 418
    .line 419
    .line 420
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    check-cast v0, Landroid/widget/TextView;

    .line 425
    .line 426
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->brass_title:Landroid/widget/TextView;

    .line 427
    .line 428
    const v0, 0x7f0a1bb2

    .line 429
    .line 430
    .line 431
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 436
    .line 437
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vipText:Lcom/join/mgps/customview/VipView;

    .line 438
    .line 439
    const v0, 0x7f0a1651

    .line 440
    .line 441
    .line 442
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 447
    .line 448
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->svipText:Lcom/join/mgps/customview/VipView;

    .line 449
    .line 450
    const v0, 0x7f0a1ba9

    .line 451
    .line 452
    .line 453
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 458
    .line 459
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vipItem:Lcom/join/mgps/customview/VipView;

    .line 460
    .line 461
    const v0, 0x7f0a1baa

    .line 462
    .line 463
    .line 464
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    check-cast v0, Landroid/widget/TextView;

    .line 469
    .line 470
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vipMessage:Landroid/widget/TextView;

    .line 471
    .line 472
    const v0, 0x7f0a11d5

    .line 473
    .line 474
    .line 475
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 480
    .line 481
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->paVip:Landroid/widget/RelativeLayout;

    .line 482
    .line 483
    const v0, 0x7f0a11d8

    .line 484
    .line 485
    .line 486
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 491
    .line 492
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->paVipIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 493
    .line 494
    const v0, 0x7f0a10d3

    .line 495
    .line 496
    .line 497
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 502
    .line 503
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->myVoucher:Landroid/widget/RelativeLayout;

    .line 504
    .line 505
    const v0, 0x7f0a0939

    .line 506
    .line 507
    .line 508
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 513
    .line 514
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->img_voucher:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 515
    .line 516
    const v0, 0x7f0a0923

    .line 517
    .line 518
    .line 519
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 524
    .line 525
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->img_gift:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 526
    .line 527
    const v0, 0x7f0a11d4

    .line 528
    .line 529
    .line 530
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 535
    .line 536
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->paCreditCenterIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 537
    .line 538
    const v0, 0x7f0a1bbb

    .line 539
    .line 540
    .line 541
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    check-cast v0, Landroid/widget/LinearLayout;

    .line 546
    .line 547
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vip_lay_1:Landroid/widget/LinearLayout;

    .line 548
    .line 549
    const v0, 0x7f0a1bbc

    .line 550
    .line 551
    .line 552
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    check-cast v0, Landroid/widget/LinearLayout;

    .line 557
    .line 558
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vip_lay_2:Landroid/widget/LinearLayout;

    .line 559
    .line 560
    const v0, 0x7f0a1bb8

    .line 561
    .line 562
    .line 563
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 568
    .line 569
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vip_icon_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 570
    .line 571
    const v0, 0x7f0a1bb9

    .line 572
    .line 573
    .line 574
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 579
    .line 580
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vip_icon_2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 581
    .line 582
    const v0, 0x7f0a1bb6

    .line 583
    .line 584
    .line 585
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    check-cast v0, Landroid/widget/TextView;

    .line 590
    .line 591
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vip_1_txt:Landroid/widget/TextView;

    .line 592
    .line 593
    const v0, 0x7f0a1bb7

    .line 594
    .line 595
    .line 596
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    check-cast v0, Landroid/widget/TextView;

    .line 601
    .line 602
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vip_2_txt:Landroid/widget/TextView;

    .line 603
    .line 604
    const v0, 0x7f0a11d6

    .line 605
    .line 606
    .line 607
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    check-cast v0, Landroid/widget/TextView;

    .line 612
    .line 613
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->paVipAd:Landroid/widget/TextView;

    .line 614
    .line 615
    const v0, 0x7f0a044d

    .line 616
    .line 617
    .line 618
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    check-cast v0, Landroid/widget/TextView;

    .line 623
    .line 624
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->couponNumberTxt:Landroid/widget/TextView;

    .line 625
    .line 626
    const v0, 0x7f0a0733

    .line 627
    .line 628
    .line 629
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    check-cast v0, Landroid/widget/TextView;

    .line 634
    .line 635
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->game_packs_txt:Landroid/widget/TextView;

    .line 636
    .line 637
    const v0, 0x7f0a1bbd

    .line 638
    .line 639
    .line 640
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->vip_lay_2_line:Landroid/view/View;

    .line 645
    .line 646
    const v0, 0x7f0a05ee

    .line 647
    .line 648
    .line 649
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->accountCenterImageView:Landroid/widget/ImageView;

    .line 654
    .line 655
    if-eqz v0, :cond_0

    .line 656
    .line 657
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$u;

    .line 658
    .line 659
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$u;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    .line 664
    .line 665
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->liveLayout:Landroid/widget/RelativeLayout;

    .line 666
    .line 667
    if-eqz v0, :cond_1

    .line 668
    .line 669
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$w;

    .line 670
    .line 671
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$w;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    .line 676
    .line 677
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->back_image:Landroid/widget/ImageView;

    .line 678
    .line 679
    if-eqz v0, :cond_2

    .line 680
    .line 681
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$x;

    .line 682
    .line 683
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$x;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    .line 688
    .line 689
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->mGiftBox:Landroid/widget/RelativeLayout;

    .line 690
    .line 691
    if-eqz v0, :cond_3

    .line 692
    .line 693
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$y;

    .line 694
    .line 695
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$y;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    .line 700
    .line 701
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->mPosts:Landroid/widget/RelativeLayout;

    .line 702
    .line 703
    if-eqz v0, :cond_4

    .line 704
    .line 705
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$z;

    .line 706
    .line 707
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$z;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    .line 712
    .line 713
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->mMessages:Landroid/widget/RelativeLayout;

    .line 714
    .line 715
    if-eqz v0, :cond_5

    .line 716
    .line 717
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$a0;

    .line 718
    .line 719
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$a0;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    .line 724
    .line 725
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->paCreditCenter:Landroid/widget/RelativeLayout;

    .line 726
    .line 727
    if-eqz v0, :cond_6

    .line 728
    .line 729
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$b0;

    .line 730
    .line 731
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$b0;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    .line 736
    .line 737
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->joystick:Landroid/widget/RelativeLayout;

    .line 738
    .line 739
    if-eqz v0, :cond_7

    .line 740
    .line 741
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$c0;

    .line 742
    .line 743
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$c0;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    .line 748
    .line 749
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->downloads:Landroid/widget/RelativeLayout;

    .line 750
    .line 751
    if-eqz v0, :cond_8

    .line 752
    .line 753
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$a;

    .line 754
    .line 755
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$a;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    .line 760
    .line 761
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->feedback:Landroid/widget/RelativeLayout;

    .line 762
    .line 763
    if-eqz v0, :cond_9

    .line 764
    .line 765
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$b;

    .line 766
    .line 767
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$b;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    .line 772
    .line 773
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->papaMore:Landroid/widget/RelativeLayout;

    .line 774
    .line 775
    if-eqz v0, :cond_a

    .line 776
    .line 777
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$c;

    .line 778
    .line 779
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$c;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    .line 784
    .line 785
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->back_layout:Landroid/widget/RelativeLayout;

    .line 786
    .line 787
    if-eqz v0, :cond_b

    .line 788
    .line 789
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$d;

    .line 790
    .line 791
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$d;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    .line 796
    .line 797
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->signIn:Landroid/widget/RelativeLayout;

    .line 798
    .line 799
    if-eqz v0, :cond_c

    .line 800
    .line 801
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$e;

    .line 802
    .line 803
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$e;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    .line 808
    .line 809
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->myVoucher:Landroid/widget/RelativeLayout;

    .line 810
    .line 811
    if-eqz v0, :cond_d

    .line 812
    .line 813
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$f;

    .line 814
    .line 815
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$f;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    .line 820
    .line 821
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->mBrass:Landroid/widget/RelativeLayout;

    .line 822
    .line 823
    if-eqz v0, :cond_e

    .line 824
    .line 825
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$g;

    .line 826
    .line 827
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$g;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    .line 832
    .line 833
    :cond_e
    if-eqz p1, :cond_f

    .line 834
    .line 835
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$h;

    .line 836
    .line 837
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$h;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    .line 842
    .line 843
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity;->tools:Landroid/widget/RelativeLayout;

    .line 844
    .line 845
    if-eqz p1, :cond_10

    .line 846
    .line 847
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$i;

    .line 848
    .line 849
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$i;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    .line 854
    .line 855
    :cond_10
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->afterViews()V

    .line 856
    .line 857
    .line 858
    return-void
.end method

.method pullMyProfileInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountCenterActivity_$t;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountCenterActivity_$t;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->beans_:Ljava/util/Map;

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
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$m;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

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
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

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
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_$q;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V

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

.method showPabiIntent()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$k;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

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

.method tokenFailure()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$l;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

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
    new-instance v6, Lcom/join/mgps/activity/AccountCenterActivity_$v;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountCenterActivity_$v;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
