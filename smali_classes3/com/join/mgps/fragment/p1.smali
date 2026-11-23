.class public Lcom/join/mgps/fragment/p1;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/p1$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d029a
.end annotation


# instance fields
.field c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/fragment/p1$d;

.field f:Landroid/content/Context;

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field m:Lcom/join/mgps/rpc/k;

.field n:I

.field o:Lcom/join/android/app/component/video/h;

.field private p:Z

.field private q:Z

.field private r:Lcom/join/kotlin/ui/findgame/adapter/FindMiniRecentGameAdapter;

.field s:Lcom/join/mgps/dto/ExtBean;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/p1;->n:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/fragment/p1;->p:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/fragment/p1;->q:Z

    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "rankList"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "quickGame"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "10021"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/join/mgps/fragment/p1;->s:Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/join/mgps/fragment/p1;->t:Ljava/util/List;

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/join/mgps/fragment/p1;->u:Z

    .line 45
    .line 46
    return-void
.end method

.method static synthetic O(Lcom/join/mgps/fragment/p1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/p1;->p:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic P(Lcom/join/mgps/fragment/p1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/p1;->t:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/p1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/p1;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private T()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    aget v1, v0, v1

    .line 23
    .line 24
    :goto_0
    const/4 v2, 0x1

    .line 25
    aget v3, v0, v2

    .line 26
    .line 27
    if-gt v1, v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sget-object v5, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 77
    .line 78
    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method private X(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 17
    .line 18
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/p1;->t:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p1;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/p1;->t:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p1;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p1;->X(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/p1;->t:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p1;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private updateDownStateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SearchDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 16
    .line 17
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method M()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/p1;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/p1;->m:Lcom/join/mgps/rpc/k;

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/fragment/p1$d;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p1$d;-><init>(Lcom/join/mgps/fragment/p1;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 28
    .line 29
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/mgps/fragment/p1;->f:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 48
    .line 49
    const/16 v1, 0xa

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setPreLoadCount(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/fragment/p1;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 62
    .line 63
    const/16 v1, 0x8

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/join/android/app/component/video/h;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 77
    .line 78
    const-string v3, "FindMiniGameFragmentVideoHelper"

    .line 79
    .line 80
    invoke-direct {v0, v2, v3}, Lcom/join/android/app/component/video/h;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/fragment/p1;->o:Lcom/join/android/app/component/video/h;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 86
    .line 87
    new-instance v2, Lcom/join/mgps/fragment/p1$a;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/p1$a;-><init>(Lcom/join/mgps/fragment/p1;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    instance-of v2, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    if-eqz v2, :cond_0

    .line 105
    .line 106
    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 109
    .line 110
    .line 111
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 112
    .line 113
    new-instance v2, Lcom/join/mgps/fragment/p1$b;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/p1$b;-><init>(Lcom/join/mgps/fragment/p1;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 122
    .line 123
    new-instance v2, Lcom/join/mgps/fragment/p1$c;

    .line 124
    .line 125
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/p1$c;-><init>(Lcom/join/mgps/fragment/p1;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->r:Lcom/join/kotlin/ui/findgame/adapter/FindMiniRecentGameAdapter;

    .line 132
    .line 133
    if-nez v0, :cond_1

    .line 134
    .line 135
    new-instance v0, Lcom/join/kotlin/ui/findgame/adapter/FindMiniRecentGameAdapter;

    .line 136
    .line 137
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/adapter/FindMiniRecentGameAdapter;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/join/mgps/fragment/p1;->r:Lcom/join/kotlin/ui/findgame/adapter/FindMiniRecentGameAdapter;

    .line 141
    .line 142
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    .line 144
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-direct {v2, v4, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    .line 158
    iget-object v2, p0, Lcom/join/mgps/fragment/p1;->r:Lcom/join/kotlin/ui/findgame/adapter/FindMiniRecentGameAdapter;

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/p1;->R(I)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method N()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->d:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->S()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method R(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/join/mgps/fragment/p1;->p:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->showLoding()V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/fragment/p1;->f:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/dto/RequestMiniGameArgs;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestMiniGameArgs;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestMiniGameArgs;->setPage(I)V

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x14

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestMiniGameArgs;->setPageSize(I)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/join/mgps/fragment/p1;->f:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->o0(Landroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestMiniGameArgs;->setUid(I)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/join/mgps/fragment/p1;->l:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestMiniGameArgs;->setGameId(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/fragment/p1;->m:Lcom/join/mgps/rpc/k;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/k;->h(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/join/mgps/dto/H5GameDataBean;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/join/mgps/dto/H5GameDataBean;->getGame_list()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/join/mgps/dto/H5GameDataBean;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/join/mgps/dto/H5GameDataBean;->getGame_list()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->S()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->W()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/join/mgps/dto/H5GameDataBean;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/p1;->V(Lcom/join/mgps/dto/H5GameDataBean;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    if-ne p1, v0, :cond_3

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->N()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->U()V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->showLodingFailed()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :goto_0
    return-void
.end method

.method S()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/p1;->i:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->i:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method U()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setNoMore()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method V(Lcom/join/mgps/dto/H5GameDataBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_6

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->S()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/H5GameDataBean;->getTop_game_list()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/H5GameDataBean;->getTop_game_list()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->r:Lcom/join/kotlin/ui/findgame/adapter/FindMiniRecentGameAdapter;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/H5GameDataBean;->getTop_game_list()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/H5GameDataBean;->getGame_list()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x1

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 72
    .line 73
    div-int/lit8 v4, v1, 0x2

    .line 74
    .line 75
    rem-int/lit8 v5, v1, 0x2

    .line 76
    .line 77
    add-int/2addr v1, v3

    .line 78
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    iget-object v7, p0, Lcom/join/mgps/fragment/p1;->s:Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    add-int/2addr v4, v3

    .line 94
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v4, "_"

    .line 98
    .line 99
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    add-int/2addr v5, v3

    .line 103
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v6, v3}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5VmGame()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    const-string v4, "H5Game"

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    const-string v4, "game"

    .line 124
    .line 125
    :goto_1
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 134
    .line 135
    .line 136
    iget-object v3, p0, Lcom/join/mgps/fragment/p1;->t:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    iget v0, p0, Lcom/join/mgps/fragment/p1;->n:I

    .line 143
    .line 144
    if-ne v0, v3, :cond_5

    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/join/mgps/dto/H5GameDataBean;->getGame_list()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->e:Lcom/join/mgps/fragment/p1$d;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/join/mgps/dto/H5GameDataBean;->getGame_list()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/fragment/p1;->t:Ljava/util/List;

    .line 166
    .line 167
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p1;->updateDownStateList(Ljava/util/List;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 171
    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->loadMoreComplete()V

    .line 175
    .line 176
    .line 177
    :cond_7
    iget-boolean p1, p0, Lcom/join/mgps/fragment/p1;->u:Z

    .line 178
    .line 179
    if-eqz p1, :cond_8

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->U()V

    .line 182
    .line 183
    .line 184
    :cond_8
    return-void
.end method

.method W()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->d:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->o:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->y()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->o:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->A()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method autoPlay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/p1;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->o:Lcom/join/android/app/component/video/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/h;->h(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/p1;->T()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->o:Lcom/join/android/app/component/video/h;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->x()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq p1, v2, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq p1, v1, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eq p1, v3, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x7

    .line 22
    if-eq p1, v3, :cond_0

    .line 23
    .line 24
    const/16 v2, 0x30

    .line 25
    .line 26
    if-eq p1, v2, :cond_2

    .line 27
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    const/16 p1, 0x9

    .line 33
    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/p1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    const/16 p1, 0x8

    .line 39
    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/p1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/p1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/p1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/p1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/p1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/p1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/p1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->Y()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->Z()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->showLoding()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/fragment/p1;->n:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/p1;->R(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleToUser"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/fragment/p1;->q:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->Z()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->s:Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/fragment/p1;->s:Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "page"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->s:Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->autoPlay()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/join/mgps/fragment/p1;->q:Z

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p1;->Y()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->i:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->i:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p1;->g:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p1;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p1;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p1;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p1;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
