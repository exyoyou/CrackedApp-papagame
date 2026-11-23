.class public final Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;
.super Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$FragmentBuilder_;
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

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;-><init>()V

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
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showNoticeDetail(Ljava/util/List;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updateCommentInput()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showMain(Ljava/util/List;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;ZLcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadCommentDetail(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetail(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetailFromNotice(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commitComment(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1901(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoadingDetail()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showEmpty()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingViewDetail()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static builder()Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$FragmentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$FragmentBuilder_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$FragmentBuilder_;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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


# virtual methods
.method commitComment(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$25;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$25;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->beans_:Ljava/util/Map;

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

.method hideLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$12;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$12;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

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

.method hideLoadingDetail()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$14;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$14;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

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

.method public loadCommentDetail(I)V
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
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$21;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$21;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method loadData(I)V
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
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$22;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$22;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method loadDataDetail(I)V
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
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$23;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$23;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method loadDataDetailFromNotice(I)V
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
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$24;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$24;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resourceId",
            "item"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$27;

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
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$27;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ruid",
            "resourceId",
            "item"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$26;

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
    invoke-direct/range {v0 .. v8}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$26;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
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
    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d028b

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
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
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
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->textView2:Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a145d

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    const v0, 0x7f0a0f95

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    .line 20
    .line 21
    const v0, 0x7f0a0f92

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

    .line 29
    .line 30
    const v0, 0x7f0a0f96

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    .line 38
    .line 39
    const v0, 0x7f0a0f93

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

    .line 47
    .line 48
    const v0, 0x7f0a1a48

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    .line 58
    .line 59
    const v0, 0x7f0a059b

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/EditText;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 69
    .line 70
    const v0, 0x7f0a0a11

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    .line 80
    .line 81
    const v0, 0x7f0a13d4

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    const v0, 0x7f0a13d5

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    .line 102
    .line 103
    const v0, 0x7f0a1458

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 113
    .line 114
    const v0, 0x7f0a16c7

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/widget/TextView;

    .line 122
    .line 123
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->textView2:Landroid/widget/TextView;

    .line 124
    .line 125
    const v0, 0x7f0a0eee

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/LinearLayout;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    const v0, 0x7f0a1508

    .line 137
    .line 138
    .line 139
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const v1, 0x7f0a1509

    .line 144
    .line 145
    .line 146
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const v2, 0x7f0a1368

    .line 151
    .line 152
    .line 153
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const v3, 0x7f0a1369

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    const v4, 0x7f0a0a22

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const v5, 0x7f0a1940

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object v5, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    .line 179
    .line 180
    if-eqz v5, :cond_0

    .line 181
    .line 182
    new-instance v6, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$1;

    .line 183
    .line 184
    invoke-direct {v6, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    :cond_0
    if-eqz v0, :cond_1

    .line 191
    .line 192
    new-instance v5, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$2;

    .line 193
    .line 194
    invoke-direct {v5, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$2;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    :cond_1
    if-eqz v1, :cond_2

    .line 201
    .line 202
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$3;

    .line 203
    .line 204
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$3;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    :cond_2
    if-eqz v2, :cond_3

    .line 211
    .line 212
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$4;

    .line 213
    .line 214
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$4;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    :cond_3
    if-eqz v3, :cond_4

    .line 221
    .line 222
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$5;

    .line 223
    .line 224
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$5;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    :cond_4
    if-eqz v4, :cond_5

    .line 231
    .line 232
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$6;

    .line 233
    .line 234
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$6;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    :cond_5
    if-eqz p1, :cond_6

    .line 241
    .line 242
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$7;

    .line 243
    .line 244
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$7;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->aftervidew()V

    .line 251
    .line 252
    .line 253
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
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->onViewChangedNotifier_:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showDetail(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "list",
            "loadMore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V

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

.method showEmpty()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$15;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$15;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

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

.method showLoadFailed(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$11;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$11;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V

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

.method showLoadFailedDetail(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$13;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$13;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V

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

.method showLoadingView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$16;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$16;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

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

.method showLoadingViewDetail()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$17;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$17;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

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

.method showMain(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "list",
            "loadMore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V

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

.method showNoticeDetail(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "list",
            "loadMore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$8;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V

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

.method showTost(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$19;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$19;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V

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

.method updateCommentInput()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$18;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$18;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

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

.method updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "praise",
            "item"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;ZLcom/join/mgps/dto/BbsCommentListBean;)V

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
