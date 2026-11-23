.class public final Lcom/join/mgps/activity/GivePraiceActivity_;
.super Lcom/join/mgps/activity/GivePraiceActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GivePraiceActivity_$q;
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

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GivePraiceActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->Refresh()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity;->cleanNotifyData(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showToast()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->getValueComment()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->getCommunityValue()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity;->cleanNotifyData2(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->updateListHeadAndFoot()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->ShowTitle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/GivePraiceActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity;->showNoData(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity;->adapterNotifyData(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity;->adapterNotifyData2(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/GivePraiceActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0
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
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/GivePraiceActivity_$q;
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
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GivePraiceActivity_$q;
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
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$q;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method Refresh()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$i;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;)V

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

.method ShowTitle()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$m;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;)V

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

.method adapterNotifyData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity_$o;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/util/List;)V

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

.method adapterNotifyData2(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity_$p;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/util/List;)V

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

.method cleanNotifyData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity_$j;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/util/List;)V

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

.method cleanNotifyData2(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listData2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity_$k;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity_;->beans_:Ljava/util/Map;

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

.method getCommunityValue()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GivePraiceActivity_$g;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GivePraiceActivity_$g;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getValueComment()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GivePraiceActivity_$f;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GivePraiceActivity_$f;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method hideLoadingView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$b;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity_;->init_(Landroid/os/Bundle;)V

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
    const p1, 0x7f0d0069

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
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
    const v0, 0x7f0a0ef4

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
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->ll_finsh:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const v0, 0x7f0a10d7

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->myswip:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 22
    .line 23
    const v0, 0x7f0a0e8e

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
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 33
    .line 34
    const v0, 0x7f0a0f95

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
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v0, 0x7f0a0f92

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
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v0, 0x7f0a0a66

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
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->iv_nome:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const v0, 0x7f0a0f4a

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
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->ll_title:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    const v0, 0x7f0a1508

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/Button;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->setNetwork:Landroid/widget/Button;

    .line 88
    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$h;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$h;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->AfterViews()V

    .line 100
    .line 101
    .line 102
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
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity_;->beans_:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method setNoMore()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$d;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;)V

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

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$a;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$c;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;)V

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

.method showNoData(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity_$n;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;I)V

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

.method showToast()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$e;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;)V

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

.method updateListHeadAndFoot()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity_$l;-><init>(Lcom/join/mgps/activity/GivePraiceActivity_;)V

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
