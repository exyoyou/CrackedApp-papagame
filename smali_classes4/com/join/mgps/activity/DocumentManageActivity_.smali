.class public final Lcom/join/mgps/activity/DocumentManageActivity_;
.super Lcom/join/mgps/activity/DocumentManageActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DocumentManageActivity_$r;
    }
.end annotation


# static fields
.field public static final FROM_EXTRA:Ljava/lang/String; = "from"

.field public static final GAMEID_EXTRA:Ljava/lang/String; = "gameid"


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

.field private final intentFilter2_:Landroid/content/IntentFilter;

.field private final intentFilter3_:Landroid/content/IntentFilter;

.field private final onViewChangedNotifier_:Lzc/c;

.field private final recvedDownDataReceiver_:Landroid/content/BroadcastReceiver;

.field private final recvedDownDatav2Receiver_:Landroid/content/BroadcastReceiver;

.field private final showDialogDowningReceiver_:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$1;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->recvedDownDataReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$2;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->showDialogDowningReceiver_:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->intentFilter3_:Landroid/content/IntentFilter;

    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$3;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$3;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->recvedDownDatav2Receiver_:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/ArchiveNumDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->showRedBroadcast(Lcom/join/mgps/dto/ArchiveNumDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/DocumentManageActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->showRedPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/DocumentManageActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->upNum(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/DocumentManageActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->showPopuwindow(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/DocumentManageActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->hideRedPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->updateStatu(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/DocumentManageActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->getNum()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->downFinishToCopy(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/DocumentManageActivity;->downLodingImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity_;->injectExtras_()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 15
    .line 16
    const-string v0, "com.cloud.downCloud"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string v0, "com.wufun.cloud.showDownDialog"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->intentFilter3_:Landroid/content/IntentFilter;

    .line 29
    .line 30
    const-string v0, "com.cloud.downCloud.all"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->recvedDownDataReceiver_:Landroid/content/BroadcastReceiver;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->showDialogDowningReceiver_:Landroid/content/BroadcastReceiver;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->recvedDownDatav2Receiver_:Landroid/content/BroadcastReceiver;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->intentFilter3_:Landroid/content/IntentFilter;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "from"

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
    sput v1, Lcom/join/mgps/activity/DocumentManageActivity;->from:I

    .line 24
    .line 25
    :cond_0
    const-string v1, "gameid"

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
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->gameid:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/DocumentManageActivity_$r;
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
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$r;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/DocumentManageActivity_$r;
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
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$r;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method downFinishToCopy(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/DocumentManageActivity_$j;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/DocumentManageActivity_$j;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method downLodingImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageUrl",
            "filePath",
            "fileName"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/DocumentManageActivity_$k;

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
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/DocumentManageActivity_$k;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
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
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->beans_:Ljava/util/Map;

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

.method getNum()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DocumentManageActivity_$i;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DocumentManageActivity_$i;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$g;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

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
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0046

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->recvedDownDataReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->showDialogDowningReceiver_:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->recvedDownDatav2Receiver_:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->onDestroy()V

    .line 17
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
    const v0, 0x7f0a0119

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
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->archive_back:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const v0, 0x7f0a13ed

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rl_myarchive:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    const v0, 0x7f0a19d2

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
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->tv_myarchive_size:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a0a63

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
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->iv_myarchive_open:Landroid/widget/ImageView;

    .line 44
    .line 45
    const v0, 0x7f0a1397

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/RadioGroup;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rg_myarchive:Landroid/widget/RadioGroup;

    .line 55
    .line 56
    const v0, 0x7f0a130f

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/RadioButton;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 66
    .line 67
    const v0, 0x7f0a130d

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/RadioButton;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_colud:Landroid/widget/RadioButton;

    .line 77
    .line 78
    const v0, 0x7f0a13fd

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
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rl_shop:Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    const v0, 0x7f0a1a1e

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
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->tv_shop_size:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a0a7e

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/ImageView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->iv_shop_open:Landroid/widget/ImageView;

    .line 110
    .line 111
    const v0, 0x7f0a1398    # 1.835352E38f

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/RadioGroup;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rg_myshop:Landroid/widget/RadioGroup;

    .line 121
    .line 122
    const v0, 0x7f0a1315

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/RadioButton;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 132
    .line 133
    const v0, 0x7f0a130c

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/RadioButton;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_buy:Landroid/widget/RadioButton;

    .line 143
    .line 144
    const v0, 0x7f0a0f0d

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
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->ll_manage:Landroid/widget/LinearLayout;

    .line 154
    .line 155
    const v0, 0x7f0a19be

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
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->tv_manage:Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0a06c0

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/FrameLayout;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->frag:Landroid/widget/FrameLayout;

    .line 176
    .line 177
    const v0, 0x7f0a13cf

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rl_bg:Landroid/widget/RelativeLayout;

    .line 187
    .line 188
    const v0, 0x7f0a1599

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->simdw:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 198
    .line 199
    const v0, 0x7f0a1a0b

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Landroid/widget/TextView;

    .line 207
    .line 208
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->tv_red:Landroid/widget/TextView;

    .line 209
    .line 210
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 211
    .line 212
    if-eqz p1, :cond_0

    .line 213
    .line 214
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$l;

    .line 215
    .line 216
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$l;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_colud:Landroid/widget/RadioButton;

    .line 223
    .line 224
    if-eqz p1, :cond_1

    .line 225
    .line 226
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$m;

    .line 227
    .line 228
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$m;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 235
    .line 236
    if-eqz p1, :cond_2

    .line 237
    .line 238
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$n;

    .line 239
    .line 240
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$n;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_buy:Landroid/widget/RadioButton;

    .line 247
    .line 248
    if-eqz p1, :cond_3

    .line 249
    .line 250
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$o;

    .line 251
    .line 252
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$o;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rl_myarchive:Landroid/widget/RelativeLayout;

    .line 259
    .line 260
    if-eqz p1, :cond_4

    .line 261
    .line 262
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$p;

    .line 263
    .line 264
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$p;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->archive_back:Landroid/widget/LinearLayout;

    .line 271
    .line 272
    if-eqz p1, :cond_5

    .line 273
    .line 274
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$q;

    .line 275
    .line 276
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$q;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rl_shop:Landroid/widget/RelativeLayout;

    .line 283
    .line 284
    if-eqz p1, :cond_6

    .line 285
    .line 286
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$a;

    .line 287
    .line 288
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$a;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .line 293
    .line 294
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->ll_manage:Landroid/widget/LinearLayout;

    .line 295
    .line 296
    if-eqz p1, :cond_7

    .line 297
    .line 298
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$b;

    .line 299
    .line 300
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$b;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->afterViews()V

    .line 307
    .line 308
    .line 309
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
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->beans_:Ljava/util/Map;

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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showPopuwindow(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_$f;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;I)V

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

.method showRedBroadcast(Lcom/join/mgps/dto/ArchiveNumDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "numDataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_$c;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/ArchiveNumDataBean;)V

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

.method showRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$d;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

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

.method upNum(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "localnum"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_$e;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;I)V

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

.method updateStatu(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_$h;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/CloudListDataBean;)V

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
