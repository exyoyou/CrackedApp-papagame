.class public final Lcom/join/mgps/activity/CloudGameIndexActivity_;
.super Lcom/join/mgps/activity/CloudGameIndexActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CloudGameIndexActivity_$e0;
    }
.end annotation


# static fields
.field public static final FROM_EXTRA:Ljava/lang/String; = "from"

.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"

.field public static final PARENT_EXT_BEAN_EXTRA:Ljava/lang/String; = "parentExtBean"

.field public static final STAND_GAME_ID_EXTRA:Ljava/lang/String; = "standGameId"


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

.field private final startStdGameReceiver_:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameIndexActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$1;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->startStdGameReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateInstallStatus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/CloudGameIndexActivity_;ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->copyFinish(ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/CloudGameIndexActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->updatePay(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->disimissDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->copyArchive(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getDetialData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getRecommendAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/mgps/activity/CloudGameIndexActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->getModGameArchievePath(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkBackUpArchieve()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->copyData(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->refreshRvData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showRecommendAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->hideRecommendAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateUi(Lcom/join/mgps/dto/ModGameDetailBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 v0, 0x400

    .line 16
    .line 17
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_;->injectExtras_()V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 38
    .line 39
    const-string v0, "com.wufun.game.start.std.game"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->startStdGameReceiver_:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
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
    const-string v1, "gameId"

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
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const-string v1, "standGameId"

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
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standGameId:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    const-string v1, "from"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->from:Ljava/lang/String;

    .line 52
    .line 53
    :cond_2
    const-string v1, "parentExtBean"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/CloudGameIndexActivity_$e0;
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
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$e0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CloudGameIndexActivity_$e0;
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
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$e0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method checkBackUpArchieve()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CloudGameIndexActivity_$v;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CloudGameIndexActivity_$v;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method copyArchive(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/CloudGameIndexActivity_$q;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/CloudGameIndexActivity_$q;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method copyData(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/CloudGameIndexActivity_$w;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/CloudGameIndexActivity_$w;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method copyFinish(ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "hasArchive",
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CloudGameIndexActivity_$e;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method disimissDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$p;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->beans_:Ljava/util/Map;

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

.method getDetialData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CloudGameIndexActivity_$r;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CloudGameIndexActivity_$r;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getModGameArchievePath(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modGameIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/CloudGameIndexActivity_$t;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/CloudGameIndexActivity_$t;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getRecommendAd()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CloudGameIndexActivity_$s;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CloudGameIndexActivity_$s;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method hideRecommendAd()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$h;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CloudGameIndexActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d002f

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudGameIndexActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->startStdGameReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0a11

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_back:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v0, 0x7f0a1971

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_game_name:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a14a2

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    .line 34
    const v0, 0x7f0a0f13

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->ll_mod_start:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v0, 0x7f0a0f37

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->ll_stand_start:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v0, 0x7f0a0a60

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_play:Landroid/widget/ImageView;

    .line 66
    .line 67
    const v0, 0x7f0a19cb

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a19db

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 88
    .line 89
    const v0, 0x7f0a1a2b

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a1a29

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 110
    .line 111
    const v0, 0x7f0a19e7

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_open_vip:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 121
    .line 122
    const v0, 0x7f0a0a83

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_stand_font:Landroid/widget/ImageView;

    .line 132
    .line 133
    const v0, 0x7f0a0a5f

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_font:Landroid/widget/ImageView;

    .line 143
    .line 144
    const v0, 0x7f0a1a2a

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 154
    .line 155
    const v0, 0x7f0a19c9

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0a0388

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->cl_mod:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 176
    .line 177
    const v0, 0x7f0a19c4

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
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 187
    .line 188
    const v0, 0x7f0a0a5e

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/ImageView;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_dot:Landroid/widget/ImageView;

    .line 198
    .line 199
    const v0, 0x7f0a1b84

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 209
    .line 210
    const v0, 0x7f0a165c

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 220
    .line 221
    const v0, 0x7f0a13a3

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rightLayout:Landroid/view/View;

    .line 229
    .line 230
    const v0, 0x7f0a0f95

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->loding_layout:Landroid/view/View;

    .line 238
    .line 239
    const v0, 0x7f0a0f92

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->loding_faile:Landroid/view/View;

    .line 247
    .line 248
    const v0, 0x7f0a1449

    .line 249
    .line 250
    .line 251
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 256
    .line 257
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendShrink:Landroidx/recyclerview/widget/RecyclerView;

    .line 258
    .line 259
    const v0, 0x7f0a1448

    .line 260
    .line 261
    .line 262
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    .line 268
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendExpand:Landroidx/recyclerview/widget/RecyclerView;

    .line 269
    .line 270
    const v0, 0x7f0a0265

    .line 271
    .line 272
    .line 273
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Landroid/widget/ImageView;

    .line 278
    .line 279
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->btnRecommendToggleShrink:Landroid/widget/ImageView;

    .line 280
    .line 281
    const v0, 0x7f0a0264

    .line 282
    .line 283
    .line 284
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    check-cast v0, Landroid/widget/ImageView;

    .line 289
    .line 290
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->btnRecommendToggleExpand:Landroid/widget/ImageView;

    .line 291
    .line 292
    const v0, 0x7f0a064d

    .line 293
    .line 294
    .line 295
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 300
    .line 301
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendShrink:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 302
    .line 303
    const v0, 0x7f0a064c

    .line 304
    .line 305
    .line 306
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 311
    .line 312
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 313
    .line 314
    const v0, 0x7f0a05bd

    .line 315
    .line 316
    .line 317
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->expandMask:Landroid/view/View;

    .line 322
    .line 323
    const v0, 0x7f0a0e9e

    .line 324
    .line 325
    .line 326
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Landroid/widget/LinearLayout;

    .line 331
    .line 332
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->llContainer:Landroid/widget/LinearLayout;

    .line 333
    .line 334
    const v0, 0x7f0a18cb

    .line 335
    .line 336
    .line 337
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    check-cast v0, Landroid/widget/TextView;

    .line 342
    .line 343
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tvRecommendAdCount:Landroid/widget/TextView;

    .line 344
    .line 345
    const v0, 0x7f0a0379

    .line 346
    .line 347
    .line 348
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 353
    .line 354
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->cl_cloud:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 355
    .line 356
    const v0, 0x7f0a0a5b

    .line 357
    .line 358
    .line 359
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Landroid/widget/ImageView;

    .line 364
    .line 365
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod:Landroid/widget/ImageView;

    .line 366
    .line 367
    const v0, 0x7f0a0a24

    .line 368
    .line 369
    .line 370
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    check-cast v0, Landroid/widget/ImageView;

    .line 375
    .line 376
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_cloud:Landroid/widget/ImageView;

    .line 377
    .line 378
    const v0, 0x7f0a0a5c

    .line 379
    .line 380
    .line 381
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Landroid/widget/ImageView;

    .line 386
    .line 387
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_1:Landroid/widget/ImageView;

    .line 388
    .line 389
    const v0, 0x7f0a0a25

    .line 390
    .line 391
    .line 392
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Landroid/widget/ImageView;

    .line 397
    .line 398
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_cloud_1:Landroid/widget/ImageView;

    .line 399
    .line 400
    const v0, 0x7f0a1a3f

    .line 401
    .line 402
    .line 403
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Landroid/widget/TextView;

    .line 408
    .line 409
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_text_5:Landroid/widget/TextView;

    .line 410
    .line 411
    const v0, 0x7f0a0f54

    .line 412
    .line 413
    .line 414
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Landroid/widget/LinearLayout;

    .line 419
    .line 420
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->ll_vip:Landroid/widget/LinearLayout;

    .line 421
    .line 422
    const v0, 0x7f0a0204

    .line 423
    .line 424
    .line 425
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const v1, 0x7f0a1368

    .line 430
    .line 431
    .line 432
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    const v2, 0x7f0a1508

    .line 437
    .line 438
    .line 439
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_back:Landroid/widget/ImageView;

    .line 444
    .line 445
    if-eqz v2, :cond_0

    .line 446
    .line 447
    new-instance v3, Lcom/join/mgps/activity/CloudGameIndexActivity_$u;

    .line 448
    .line 449
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$u;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    .line 454
    .line 455
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->ll_mod_start:Landroid/widget/LinearLayout;

    .line 456
    .line 457
    if-eqz v2, :cond_1

    .line 458
    .line 459
    new-instance v3, Lcom/join/mgps/activity/CloudGameIndexActivity_$x;

    .line 460
    .line 461
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$x;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    .line 466
    .line 467
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->ll_stand_start:Landroid/widget/LinearLayout;

    .line 468
    .line 469
    if-eqz v2, :cond_2

    .line 470
    .line 471
    new-instance v3, Lcom/join/mgps/activity/CloudGameIndexActivity_$y;

    .line 472
    .line 473
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$y;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    .line 478
    .line 479
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->btnRecommendToggleShrink:Landroid/widget/ImageView;

    .line 480
    .line 481
    if-eqz v2, :cond_3

    .line 482
    .line 483
    new-instance v3, Lcom/join/mgps/activity/CloudGameIndexActivity_$z;

    .line 484
    .line 485
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$z;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    .line 490
    .line 491
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->btnRecommendToggleExpand:Landroid/widget/ImageView;

    .line 492
    .line 493
    if-eqz v2, :cond_4

    .line 494
    .line 495
    new-instance v3, Lcom/join/mgps/activity/CloudGameIndexActivity_$a0;

    .line 496
    .line 497
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$a0;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    .line 502
    .line 503
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->expandMask:Landroid/view/View;

    .line 504
    .line 505
    if-eqz v2, :cond_5

    .line 506
    .line 507
    new-instance v3, Lcom/join/mgps/activity/CloudGameIndexActivity_$b0;

    .line 508
    .line 509
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$b0;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    .line 514
    .line 515
    :cond_5
    if-eqz v0, :cond_6

    .line 516
    .line 517
    new-instance v2, Lcom/join/mgps/activity/CloudGameIndexActivity_$c0;

    .line 518
    .line 519
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$c0;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    .line 524
    .line 525
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->cl_cloud:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 526
    .line 527
    if-eqz v0, :cond_7

    .line 528
    .line 529
    new-instance v2, Lcom/join/mgps/activity/CloudGameIndexActivity_$d0;

    .line 530
    .line 531
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$d0;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    .line 536
    .line 537
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_open_vip:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 538
    .line 539
    if-eqz v0, :cond_8

    .line 540
    .line 541
    new-instance v2, Lcom/join/mgps/activity/CloudGameIndexActivity_$a;

    .line 542
    .line 543
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$a;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    .line 548
    .line 549
    :cond_8
    if-eqz v1, :cond_9

    .line 550
    .line 551
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$b;

    .line 552
    .line 553
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$b;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    .line 558
    .line 559
    :cond_9
    if-eqz p1, :cond_a

    .line 560
    .line 561
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$c;

    .line 562
    .line 563
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$c;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    .line 568
    .line 569
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameIndexActivity;->afterViews()V

    .line 570
    .line 571
    .line 572
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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method refreshRvData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$f;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

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
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameIndexActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CloudGameIndexActivity_$m;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$k;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$i;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

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

.method showProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CloudGameIndexActivity_$l;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method showRecommendAd()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$g;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

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

.method updateButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "task",
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CloudGameIndexActivity_$n;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

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

.method updateInstallStatus()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudGameIndexActivity_$d;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;)V

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

.method updatePay(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "needRetry"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CloudGameIndexActivity_$o;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Z)V

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

.method updateUi(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modgameBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudGameIndexActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CloudGameIndexActivity_$j;-><init>(Lcom/join/mgps/activity/CloudGameIndexActivity_;Lcom/join/mgps/dto/ModGameDetailBean;)V

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
