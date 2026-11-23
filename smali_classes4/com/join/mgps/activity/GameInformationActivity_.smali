.class public final Lcom/join/mgps/activity/GameInformationActivity_;
.super Lcom/join/mgps/activity/GameInformationActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameInformationActivity_$z;
    }
.end annotation


# static fields
.field public static final DEFAULT_DOWN_EXTRA:Ljava/lang/String; = "defaultDown"

.field public static final EXT_BEAN_EXTRA:Ljava/lang/String; = "extBean"

.field public static final INFO_ID_EXTRA:Ljava/lang/String; = "info_id"

.field public static final TITLE_EXTRA:Ljava/lang/String; = "title"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$1;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->noCoumment()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->showCommentList(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->getGameInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->getCommentInfo(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/GameInformationActivity_;Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/GameInformationActivity;->sendParesed(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->getDownloadTaskInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateHight()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/GameInformationActivity_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/GameInformationActivity;->updateView(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/GameInformationActivity_;Lcom/join/mgps/dto/GameInformationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->showMain(Lcom/join/mgps/dto/GameInformationBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->cxxxxx()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showComment()V

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
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->netExcption:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->netConnectExcption:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity_;->injectExtras_()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 30
    .line 31
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 46
    .line 47
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
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
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const-string v1, "info_id"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const-string v1, "title"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->title:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    const-string v1, "extBean"

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
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    :cond_2
    const-string v1, "defaultDown"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->defaultDown:Z

    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationActivity_$z;
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
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$z;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameInformationActivity_$z;
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
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$z;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method cxxxxx()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$j;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x7d0

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->beans_:Ljava/util/Map;

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

.method getCommentInfo(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "informationId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameInformationActivity_$o;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameInformationActivity_$o;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivity_$q;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameInformationActivity_$q;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getGameInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivity_$n;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameInformationActivity_$n;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;JLjava/lang/String;)V

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

.method noCoumment()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$b;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_;->init_(Landroid/os/Bundle;)V

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
    const p1, 0x7f0d0300

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
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
    const v0, 0x7f0a177f

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->titleText:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a148c

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/customview/SmartScrollView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->scrollView:Lcom/join/mgps/customview/SmartScrollView;

    .line 22
    .line 23
    const v0, 0x7f0a1bdc

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/customview/ObservableWebView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 33
    .line 34
    const v0, 0x7f0a010c

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->applayout:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    const v0, 0x7f0a06dd

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameCardLayout:Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    const v0, 0x7f0a1360

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    const v0, 0x7f0a0f95

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    const v0, 0x7f0a0f92

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    const v0, 0x7f0a00e6

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 99
    .line 100
    const v0, 0x7f0a0309

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 110
    .line 111
    const v0, 0x7f0a16fc

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->textView69:Landroid/widget/TextView;

    .line 121
    .line 122
    const v0, 0x7f0a010e

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->appname:Landroid/widget/TextView;

    .line 132
    .line 133
    const v0, 0x7f0a0300

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardAppname:Landroid/widget/TextView;

    .line 143
    .line 144
    const v0, 0x7f0a0308

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownNumberText:Landroid/widget/TextView;

    .line 154
    .line 155
    const v0, 0x7f0a02ff

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardAppSize:Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0a030f

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardInfo:Landroid/widget/TextView;

    .line 176
    .line 177
    const v0, 0x7f0a0306

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/Button;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 187
    .line 188
    const v0, 0x7f0a0114

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/TextView;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->appsize:Landroid/widget/TextView;

    .line 198
    .line 199
    const v0, 0x7f0a107a

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/widget/TextView;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->moneyText:Landroid/widget/TextView;

    .line 209
    .line 210
    const v0, 0x7f0a107c

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/widget/TextView;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->moneyText2:Landroid/widget/TextView;

    .line 220
    .line 221
    const v0, 0x7f0a0513

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/Button;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 231
    .line 232
    const v0, 0x7f0a1520

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/ImageView;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->shareImg:Landroid/widget/ImageView;

    .line 242
    .line 243
    const v0, 0x7f0a03cb

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/widget/ImageView;

    .line 251
    .line 252
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->comment:Landroid/widget/ImageView;

    .line 253
    .line 254
    const v0, 0x7f0a0fee

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroid/widget/LinearLayout;

    .line 262
    .line 263
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->main:Landroid/widget/LinearLayout;

    .line 264
    .line 265
    const v0, 0x7f0a178b

    .line 266
    .line 267
    .line 268
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 273
    .line 274
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 275
    .line 276
    const v0, 0x7f0a0430

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Landroid/widget/TextView;

    .line 284
    .line 285
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->content_title:Landroid/widget/TextView;

    .line 286
    .line 287
    const v0, 0x7f0a0427

    .line 288
    .line 289
    .line 290
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/widget/TextView;

    .line 295
    .line 296
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->contentName:Landroid/widget/TextView;

    .line 297
    .line 298
    const v0, 0x7f0a0429

    .line 299
    .line 300
    .line 301
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Landroid/widget/TextView;

    .line 306
    .line 307
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->contentTime:Landroid/widget/TextView;

    .line 308
    .line 309
    const v0, 0x7f0a03ec

    .line 310
    .line 311
    .line 312
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, Landroid/widget/TextView;

    .line 317
    .line 318
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->comment_number:Landroid/widget/TextView;

    .line 319
    .line 320
    const v0, 0x7f0a1087

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/TextView;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->more:Landroid/widget/TextView;

    .line 330
    .line 331
    const v0, 0x7f0a072f

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Landroid/widget/LinearLayout;

    .line 339
    .line 340
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->game_information_comment_top:Landroid/widget/LinearLayout;

    .line 341
    .line 342
    const v0, 0x7f0a021f

    .line 343
    .line 344
    .line 345
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Landroid/widget/LinearLayout;

    .line 350
    .line 351
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->bottom_lay:Landroid/widget/LinearLayout;

    .line 352
    .line 353
    const v0, 0x7f0a0e35

    .line 354
    .line 355
    .line 356
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Landroid/widget/LinearLayout;

    .line 361
    .line 362
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->layout_share:Landroid/widget/LinearLayout;

    .line 363
    .line 364
    const v0, 0x7f0a1425

    .line 365
    .line 366
    .line 367
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Landroid/widget/TextView;

    .line 372
    .line 373
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->roundMessage:Landroid/widget/TextView;

    .line 374
    .line 375
    const v0, 0x7f0a0140

    .line 376
    .line 377
    .line 378
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    const v1, 0x7f0a1368

    .line 383
    .line 384
    .line 385
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    const v2, 0x7f0a1508

    .line 390
    .line 391
    .line 392
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    if-eqz v0, :cond_0

    .line 397
    .line 398
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$r;

    .line 399
    .line 400
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$r;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    .line 405
    .line 406
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->applayout:Landroid/widget/RelativeLayout;

    .line 407
    .line 408
    if-eqz v0, :cond_1

    .line 409
    .line 410
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$s;

    .line 411
    .line 412
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$s;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    .line 417
    .line 418
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->layout_share:Landroid/widget/LinearLayout;

    .line 419
    .line 420
    if-eqz v0, :cond_2

    .line 421
    .line 422
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$t;

    .line 423
    .line 424
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$t;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    .line 429
    .line 430
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->comment:Landroid/widget/ImageView;

    .line 431
    .line 432
    if-eqz v0, :cond_3

    .line 433
    .line 434
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$u;

    .line 435
    .line 436
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$u;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    .line 441
    .line 442
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 443
    .line 444
    if-eqz v0, :cond_4

    .line 445
    .line 446
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$v;

    .line 447
    .line 448
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$v;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    .line 453
    .line 454
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 455
    .line 456
    if-eqz v0, :cond_5

    .line 457
    .line 458
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$w;

    .line 459
    .line 460
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$w;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    .line 465
    .line 466
    :cond_5
    if-eqz v1, :cond_6

    .line 467
    .line 468
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$x;

    .line 469
    .line 470
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$x;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    .line 475
    .line 476
    :cond_6
    if-eqz p1, :cond_7

    .line 477
    .line 478
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$y;

    .line 479
    .line 480
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$y;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .line 485
    .line 486
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 487
    .line 488
    if-eqz p1, :cond_8

    .line 489
    .line 490
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$a;

    .line 491
    .line 492
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$a;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    .line 497
    .line 498
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->afterview()V

    .line 499
    .line 500
    .line 501
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method sendParesed(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bean",
            "parise",
            "parseNUmber"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/GameInformationActivity_$p;

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
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    move-object v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GameInformationActivity_$p;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showComment()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$k;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

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

.method showCommentList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameInformationBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_$c;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

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

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$e;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$h;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

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

.method showMain(Lcom/join/mgps/dto/GameInformationBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameInformation"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_$i;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Lcom/join/mgps/dto/GameInformationBean;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_$l;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V

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
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_$g;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V

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
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$m;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

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

.method updateHight()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$d;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

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

.method updateView(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "parise",
            "parseNUmber",
            "success",
            "number"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivity_$f;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameInformationActivity_$f;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
