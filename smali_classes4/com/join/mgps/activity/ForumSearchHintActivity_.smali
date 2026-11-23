.class public final Lcom/join/mgps/activity/ForumSearchHintActivity_;
.super Lcom/join/mgps/activity/ForumSearchHintActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumSearchHintActivity_$w;
    }
.end annotation


# static fields
.field public static final FID_EXTRA:Ljava/lang/String; = "fid"

.field public static final KEYWORD_EXTRA:Ljava/lang/String; = "keyword"


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

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideKeyboard()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->updateUI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->load()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->clearHistory()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchIndex()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchHistory()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchQuery(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->serverConnectionException()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->netWorkException()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->stopLoadMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setXListNoMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showPullLoad()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hidePullLoad()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->stopXlistRefreshAndLoadMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showToast(Ljava/lang/String;)V

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->netExcption:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->netConnectExcption:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_;->injectExtras_()V

    .line 27
    .line 28
    .line 29
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
    const-string v1, "keyword"

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
    iput-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->keyword:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const-string v1, "fid"

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
    move-result v0

    .line 37
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->fid:I

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumSearchHintActivity_$w;
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
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$w;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumSearchHintActivity_$w;
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
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$w;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method clearHistory()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumSearchHintActivity_$j;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumSearchHintActivity_$j;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->beans_:Ljava/util/Map;

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

.method hideKeyboard()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$t;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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

.method hidePullLoad()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$e;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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

.method load()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumSearchHintActivity_$i;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumSearchHintActivity_$i;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method loadSearchHistory()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumSearchHintActivity_$m;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumSearchHintActivity_$m;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method loadSearchIndex()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumSearchHintActivity_$l;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumSearchHintActivity_$l;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method loadSearchQuery(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "keyword",
            "page"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/ForumSearchHintActivity_$n;

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
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ForumSearchHintActivity_$n;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method netWorkException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$a;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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

.method notifyUi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$h;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity_;->init_(Landroid/os/Bundle;)V

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
    const p1, 0x7f0d027a

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
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
    const v0, 0x7f0a14bc

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/EditText;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 11
    .line 12
    const v0, 0x7f0a0934

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->img_search:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v0, 0x7f0a0926

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->img_iconback:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0a03a4

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->clearLayout:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v0, 0x7f0a14cf

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->search_list_layout:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v0, 0x7f0a07bf

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/GridView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->gridView:Landroid/widget/GridView;

    .line 66
    .line 67
    const v0, 0x7f0a00c1

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->allSearch:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    const v0, 0x7f0a0df3

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->layout1:Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    const v0, 0x7f0a0df4

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->layout2:Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    const v0, 0x7f0a0df5

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->layout3:Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    const v0, 0x7f0a0df6

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->layout4:Landroid/widget/RelativeLayout;

    .line 121
    .line 122
    const v0, 0x7f0a0df7

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->layout5:Landroid/widget/RelativeLayout;

    .line 132
    .line 133
    const v0, 0x7f0a0df8

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->layout6:Landroid/widget/RelativeLayout;

    .line 143
    .line 144
    const v0, 0x7f0a1840

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->tv1:Landroid/widget/TextView;

    .line 154
    .line 155
    const v0, 0x7f0a1841

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->tv2:Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0a1842

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->tv3:Landroid/widget/TextView;

    .line 176
    .line 177
    const v0, 0x7f0a1843

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->tv4:Landroid/widget/TextView;

    .line 187
    .line 188
    const v0, 0x7f0a1844

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->tv5:Landroid/widget/TextView;

    .line 198
    .line 199
    const v0, 0x7f0a1845

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->tv6:Landroid/widget/TextView;

    .line 209
    .line 210
    const v0, 0x7f0a169b

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->text1:Lcom/join/mgps/customview/MarqueeTextView;

    .line 220
    .line 221
    const v0, 0x7f0a169c

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->text2:Lcom/join/mgps/customview/MarqueeTextView;

    .line 231
    .line 232
    const v0, 0x7f0a169d

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->text3:Lcom/join/mgps/customview/MarqueeTextView;

    .line 242
    .line 243
    const v0, 0x7f0a169e

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    .line 251
    .line 252
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->text4:Lcom/join/mgps/customview/MarqueeTextView;

    .line 253
    .line 254
    const v0, 0x7f0a169f

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    .line 262
    .line 263
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->text5:Lcom/join/mgps/customview/MarqueeTextView;

    .line 264
    .line 265
    const v0, 0x7f0a16a0

    .line 266
    .line 267
    .line 268
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    .line 273
    .line 274
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->text6:Lcom/join/mgps/customview/MarqueeTextView;

    .line 275
    .line 276
    const v0, 0x7f0a080e

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Lcom/join/mgps/customview/NoScrollListView;

    .line 284
    .line 285
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyListView:Lcom/join/mgps/customview/NoScrollListView;

    .line 286
    .line 287
    const v0, 0x7f0a012f

    .line 288
    .line 289
    .line 290
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/join/mgps/customview/XListView2;

    .line 295
    .line 296
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 297
    .line 298
    const v0, 0x7f0a113b

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->noHistory:Landroid/widget/TextView;

    .line 308
    .line 309
    const v0, 0x7f0a0f95

    .line 310
    .line 311
    .line 312
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, Landroid/widget/LinearLayout;

    .line 317
    .line 318
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 319
    .line 320
    const v0, 0x7f0a0f92

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/LinearLayout;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 330
    .line 331
    const v0, 0x7f0a1368

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Landroid/widget/ImageView;

    .line 339
    .line 340
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->relodingimag:Landroid/widget/ImageView;

    .line 341
    .line 342
    const v0, 0x7f0a0f6f

    .line 343
    .line 344
    .line 345
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Lcom/join/mgps/customview/LoadingImageView;

    .line 350
    .line 351
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loading_view:Lcom/join/mgps/customview/LoadingImageView;

    .line 352
    .line 353
    const v0, 0x7f0a16c7

    .line 354
    .line 355
    .line 356
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Landroid/widget/TextView;

    .line 361
    .line 362
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->textView2:Landroid/widget/TextView;

    .line 363
    .line 364
    const v0, 0x7f0a1508

    .line 365
    .line 366
    .line 367
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Landroid/widget/Button;

    .line 372
    .line 373
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->setNetwork:Landroid/widget/Button;

    .line 374
    .line 375
    const v0, 0x7f0a05f6

    .line 376
    .line 377
    .line 378
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Landroid/widget/TextView;

    .line 383
    .line 384
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->failedMessage:Landroid/widget/TextView;

    .line 385
    .line 386
    const v0, 0x7f0a150c

    .line 387
    .line 388
    .line 389
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Landroid/widget/TextView;

    .line 394
    .line 395
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->setting:Landroid/widget/TextView;

    .line 396
    .line 397
    const v0, 0x7f0a0f8e

    .line 398
    .line 399
    .line 400
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Landroid/widget/ImageView;

    .line 405
    .line 406
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->lodingBackImage:Landroid/widget/ImageView;

    .line 407
    .line 408
    const v0, 0x7f0a1bff

    .line 409
    .line 410
    .line 411
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    check-cast v0, Lcom/join/mgps/customview/WrapContentGridView;

    .line 416
    .line 417
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->wrapGridView:Lcom/join/mgps/customview/WrapContentGridView;

    .line 418
    .line 419
    const v0, 0x7f0a0339

    .line 420
    .line 421
    .line 422
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->img_search:Landroid/widget/ImageView;

    .line 427
    .line 428
    if-eqz v0, :cond_0

    .line 429
    .line 430
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity_$k;

    .line 431
    .line 432
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$k;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    .line 437
    .line 438
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->img_iconback:Landroid/widget/ImageView;

    .line 439
    .line 440
    if-eqz v0, :cond_1

    .line 441
    .line 442
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity_$o;

    .line 443
    .line 444
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$o;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .line 449
    .line 450
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->clearLayout:Landroid/widget/LinearLayout;

    .line 451
    .line 452
    if-eqz v0, :cond_2

    .line 453
    .line 454
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity_$p;

    .line 455
    .line 456
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$p;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    .line 461
    .line 462
    :cond_2
    if-eqz p1, :cond_3

    .line 463
    .line 464
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$q;

    .line 465
    .line 466
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$q;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    .line 471
    .line 472
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyListView:Lcom/join/mgps/customview/NoScrollListView;

    .line 473
    .line 474
    if-eqz p1, :cond_4

    .line 475
    .line 476
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$r;

    .line 477
    .line 478
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$r;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 482
    .line 483
    .line 484
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 485
    .line 486
    if-eqz p1, :cond_5

    .line 487
    .line 488
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$s;

    .line 489
    .line 490
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$s;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 494
    .line 495
    .line 496
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->afterViews()V

    .line 497
    .line 498
    .line 499
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method serverConnectionException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$v;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setXListNoMore()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$c;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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

.method showPullLoad()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$d;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity_$g;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;)V

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

.method stopLoadMore()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$b;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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

.method stopXlistRefreshAndLoadMore()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$f;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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

.method updateUI()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$u;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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
