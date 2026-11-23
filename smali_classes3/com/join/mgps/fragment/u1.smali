.class public Lcom/join/mgps/fragment/u1;
.super Lcom/join/mgps/fragment/v1;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d068b
.end annotation


# static fields
.field private static final E:Ljava/lang/String; = "key_groups_data"

.field private static final F:Ljava/lang/String; = "key_fragment_pos"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field B:I

.field C:Z

.field D:Lcom/join/mgps/customview/t;

.field private c:I

.field private d:Lcom/join/mgps/dto/RecommenGroupClassify;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/join/mgps/customview/j;

.field private j:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field k:Ljava/lang/String;

.field l:Lcom/join/android/app/component/video/c;

.field m:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Lcom/join/mgps/rpc/i;

.field public p:I

.field public q:I

.field r:Z

.field s:Landroid/net/ConnectivityManager;

.field t:Lcom/join/mgps/customview/MyFlowLayout;

.field u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/join/mgps/rpc/e;

.field w:Z

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/v1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ForumPostsFragment"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->k:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u1;->r:Z

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Ljava/util/List;

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u1;->w:Z

    .line 19
    .line 20
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v1, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->y:Ljava/util/Map;

    .line 33
    .line 34
    new-instance v1, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->A:Ljava/util/List;

    .line 47
    .line 48
    iput v0, p0, Lcom/join/mgps/fragment/u1;->B:I

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u1;->C:Z

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->D:Lcom/join/mgps/customview/t;

    .line 54
    .line 55
    return-void
.end method

.method static synthetic O(Lcom/join/mgps/fragment/u1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/u1;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/u1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/u1;->c:I

    .line 2
    .line 3
    return p0
.end method

.method private R(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->D:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->D:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private W()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_groups_data"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "key_fragment_pos"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-class v3, Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 32
    .line 33
    invoke-virtual {v2, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->d:Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 40
    .line 41
    :cond_0
    iput v1, p0, Lcom/join/mgps/fragment/u1;->c:I

    .line 42
    .line 43
    return-void
.end method

.method public static Y(Lcom/join/mgps/dto/RecommenGroupClassify;I)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "pos"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumPostsFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/ForumPostsFragment_;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "key_groups_data"

    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "key_fragment_pos"

    .line 21
    .line 22
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method private a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/fragment/u1$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u1$b;-><init>(Lcom/join/mgps/fragment/u1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/fragment/u1$c;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/u1$c;-><init>(Lcom/join/mgps/fragment/u1;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->i:Lcom/join/mgps/customview/j;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->k:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/android/app/component/video/c;

    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/android/app/component/video/c;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/fragment/u1$d;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u1$d;-><init>(Lcom/join/mgps/fragment/u1;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f1(Lw6/f;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->k:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C0(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 73
    .line 74
    new-instance v1, Lcom/join/mgps/fragment/u1$e;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u1$e;-><init>(Lcom/join/mgps/fragment/u1;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->I0(Lcom/join/mgps/adapter/ForumBaseAdapter$t0;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->S(I)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private d0(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0274

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    const/4 v3, -0x2

    .line 16
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x1

    .line 28
    const/high16 v5, 0x41a00000    # 20.0f

    .line 29
    .line 30
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    float-to-int v3, v3

    .line 35
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/high16 v5, 0x41200000    # 10.0f

    .line 46
    .line 47
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    float-to-int v3, v3

    .line 52
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    const v1, 0x7f0a167a

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/TextView;

    .line 65
    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_0
    const v2, 0x7f0604e5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    .line 74
    .line 75
    const-string v2, "#3CA4FD"

    .line 76
    .line 77
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v3, "#"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lcom/join/mgps/fragment/u1$h;

    .line 112
    .line 113
    invoke-direct {v2, p0, p1, v1}, Lcom/join/mgps/fragment/u1$h;-><init>(Lcom/join/mgps/fragment/u1;Lcom/join/mgps/dto/RecommendLabelTag;Landroid/widget/TextView;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    return-object v0
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->R(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private j0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->A:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->A:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x4

    .line 33
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/fragment/u1;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/customview/MyFlowLayout;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/MyFlowLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->g:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 53
    .line 54
    invoke-direct {p0, v1}, Lcom/join/mgps/fragment/u1;->d0(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-lez v0, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_1
    return-void
.end method

.method private m0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 14
    .line 15
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_FLOW_LAYOUT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 16
    .line 17
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/join/mgps/fragment/u1;->g:Ljava/util/List;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;-><init>(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private n0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, ""

    .line 15
    .line 16
    if-nez v1, :cond_4

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 33
    .line 34
    sget-object v5, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 35
    .line 36
    new-instance v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;

    .line 37
    .line 38
    const/16 v19, 0x1

    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-lez v6, :cond_1

    .line 45
    .line 46
    const/4 v8, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v8, 0x0

    .line 49
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-lez v6, :cond_2

    .line 54
    .line 55
    const/4 v9, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v9, 0x0

    .line 58
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-lez v6, :cond_3

    .line 75
    .line 76
    const/4 v13, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const/4 v13, 0x0

    .line 79
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v14

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v16

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v17

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v18

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    .line 111
    .line 112
    .line 113
    move-result v20

    .line 114
    move-object v6, v15

    .line 115
    move/from16 v7, v19

    .line 116
    .line 117
    move-object v3, v15

    .line 118
    move-object/from16 v15, v16

    .line 119
    .line 120
    move-object/from16 v16, v17

    .line 121
    .line 122
    move-object/from16 v17, v18

    .line 123
    .line 124
    move/from16 v18, v20

    .line 125
    .line 126
    invoke-direct/range {v6 .. v18}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, v5, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v3, v0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 133
    .line 134
    invoke-virtual {v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 135
    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    const/4 v1, 0x0

    .line 140
    const/16 v19, 0x0

    .line 141
    .line 142
    :goto_3
    if-nez v1, :cond_8

    .line 143
    .line 144
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 145
    .line 146
    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 147
    .line 148
    new-instance v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;

    .line 149
    .line 150
    const/4 v6, 0x1

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-lez v5, :cond_5

    .line 156
    .line 157
    const/4 v7, 0x1

    .line 158
    goto :goto_4

    .line 159
    :cond_5
    const/4 v7, 0x0

    .line 160
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-lez v5, :cond_6

    .line 165
    .line 166
    const/4 v8, 0x1

    .line 167
    goto :goto_5

    .line 168
    :cond_6
    const/4 v8, 0x0

    .line 169
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    const/4 v11, 0x0

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-lez v5, :cond_7

    .line 183
    .line 184
    const/4 v12, 0x1

    .line 185
    goto :goto_6

    .line 186
    :cond_7
    const/4 v12, 0x0

    .line 187
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v17

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    .line 219
    .line 220
    .line 221
    move-result v18

    .line 222
    move-object v5, v15

    .line 223
    move-object v4, v15

    .line 224
    move-object/from16 v15, v16

    .line 225
    .line 226
    move-object/from16 v16, v17

    .line 227
    .line 228
    move/from16 v17, v18

    .line 229
    .line 230
    invoke-direct/range {v5 .. v17}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    iget-object v3, v0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 237
    .line 238
    invoke-virtual {v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_f

    .line 242
    .line 243
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-eqz v1, :cond_a

    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_9

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_9
    const/4 v13, 0x0

    .line 265
    goto :goto_8

    .line 266
    :cond_a
    :goto_7
    const/4 v13, 0x1

    .line 267
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-nez v1, :cond_13

    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-nez v1, :cond_13

    .line 290
    .line 291
    new-instance v8, Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    const-string v3, "#00FFFFFF"

    .line 301
    .line 302
    if-lez v1, :cond_b

    .line 303
    .line 304
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 305
    .line 306
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v4, "\u7cbe"

    .line 310
    .line 311
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v4, "#FF8378FF"

    .line 318
    .line 319
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const/4 v4, 0x0

    .line 326
    invoke-interface {v8, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-lez v1, :cond_c

    .line 334
    .line 335
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 336
    .line 337
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 338
    .line 339
    .line 340
    const-string v4, "\u9876"

    .line 341
    .line 342
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v3, "#FFFF6464"

    .line 349
    .line 350
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const/4 v15, 0x0

    .line 357
    invoke-interface {v8, v15, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_c
    const/4 v15, 0x0

    .line 362
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    if-eqz v1, :cond_d

    .line 367
    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    .line 374
    .line 375
    :cond_d
    iget-object v3, v0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 376
    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-lez v1, :cond_e

    .line 386
    .line 387
    const/4 v6, 0x1

    .line 388
    goto :goto_a

    .line 389
    :cond_e
    const/4 v6, 0x0

    .line 390
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    move v5, v13

    .line 410
    invoke-static/range {v3 .. v8}, Lcom/join/mgps/Util/r0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    .line 411
    .line 412
    .line 413
    move-result-object v14

    .line 414
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;

    .line 415
    .line 416
    const/4 v3, 0x1

    .line 417
    xor-int/lit8 v4, v19, 0x1

    .line 418
    .line 419
    if-eqz v13, :cond_f

    .line 420
    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    if-lez v3, :cond_f

    .line 426
    .line 427
    const/4 v5, 0x1

    .line 428
    goto :goto_b

    .line 429
    :cond_f
    const/4 v5, 0x0

    .line 430
    :goto_b
    if-eqz v13, :cond_10

    .line 431
    .line 432
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-lez v3, :cond_10

    .line 437
    .line 438
    const/4 v6, 0x1

    .line 439
    goto :goto_c

    .line 440
    :cond_10
    const/4 v6, 0x0

    .line 441
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v7

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    const/4 v9, 0x0

    .line 450
    if-eqz v13, :cond_11

    .line 451
    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-lez v3, :cond_11

    .line 457
    .line 458
    const/4 v10, 0x1

    .line 459
    goto :goto_d

    .line 460
    :cond_11
    const/4 v10, 0x0

    .line 461
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 467
    .line 468
    .line 469
    move-result v11

    .line 470
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v11

    .line 480
    if-eqz v13, :cond_12

    .line 481
    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    goto :goto_e

    .line 487
    :cond_12
    const/4 v3, 0x0

    .line 488
    :goto_e
    move-object v12, v3

    .line 489
    move-object v3, v1

    .line 490
    invoke-direct/range {v3 .. v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V

    .line 491
    .line 492
    .line 493
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 494
    .line 495
    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 496
    .line 497
    invoke-direct {v3, v4, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    iget-object v4, v0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 501
    .line 502
    invoke-virtual {v4, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 503
    .line 504
    .line 505
    iget-object v3, v0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 506
    .line 507
    if-eqz v3, :cond_14

    .line 508
    .line 509
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    if-eqz v3, :cond_14

    .line 514
    .line 515
    iget-object v3, v0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 516
    .line 517
    invoke-virtual {v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->y()Lcom/join/android/app/component/optimizetext/b;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    iget-object v4, v0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 522
    .line 523
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    const v6, 0x7f070ed5

    .line 528
    .line 529
    .line 530
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    int-to-float v5, v5

    .line 535
    invoke-static {v4, v5}, Lcom/join/mgps/Util/i0;->c(Landroid/content/Context;F)I

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    invoke-virtual {v3, v4}, Lcom/join/android/app/component/optimizetext/b;->j(I)Lcom/join/android/app/component/optimizetext/b;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-virtual {v3, v1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 544
    .line 545
    .line 546
    goto :goto_10

    .line 547
    :cond_13
    :goto_f
    const/4 v15, 0x0

    .line 548
    :cond_14
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    if-eqz v1, :cond_15

    .line 553
    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-nez v1, :cond_15

    .line 567
    .line 568
    const/4 v4, 0x1

    .line 569
    goto :goto_11

    .line 570
    :cond_15
    const/4 v4, 0x0

    .line 571
    :goto_11
    if-nez v4, :cond_1c

    .line 572
    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSmall_thumb_pic_list()Ljava/util/List;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    move-object v6, v2

    .line 587
    move-object v7, v6

    .line 588
    :goto_12
    if-eqz v1, :cond_18

    .line 589
    .line 590
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 591
    .line 592
    .line 593
    move-result v8

    .line 594
    if-ge v15, v8, :cond_18

    .line 595
    .line 596
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v8

    .line 600
    check-cast v8, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 601
    .line 602
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v9

    .line 606
    const-string v10, "pic"

    .line 607
    .line 608
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v9

    .line 612
    if-eqz v9, :cond_16

    .line 613
    .line 614
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v8

    .line 618
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    goto :goto_13

    .line 622
    :cond_16
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v9

    .line 626
    const-string v10, "video"

    .line 627
    .line 628
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v9

    .line 632
    if-eqz v9, :cond_17

    .line 633
    .line 634
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 635
    .line 636
    .line 637
    move-result v9

    .line 638
    if-eqz v9, :cond_17

    .line 639
    .line 640
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v7

    .line 648
    :cond_17
    :goto_13
    add-int/lit8 v15, v15, 0x1

    .line 649
    .line 650
    goto :goto_12

    .line 651
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v8

    .line 655
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 656
    .line 657
    .line 658
    move-result v8

    .line 659
    if-eqz v8, :cond_19

    .line 660
    .line 661
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v8

    .line 665
    goto :goto_14

    .line 666
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v8

    .line 670
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 671
    .line 672
    .line 673
    move-result v8

    .line 674
    if-eqz v8, :cond_1a

    .line 675
    .line 676
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v8

    .line 680
    goto :goto_14

    .line 681
    :cond_1a
    move-object v8, v2

    .line 682
    :goto_14
    if-eqz v5, :cond_1b

    .line 683
    .line 684
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 685
    .line 686
    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 687
    .line 688
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$q;

    .line 689
    .line 690
    invoke-direct {v5, v6, v7, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-direct {v1, v3, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 694
    .line 695
    .line 696
    iget-object v3, v0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 697
    .line 698
    invoke-virtual {v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 699
    .line 700
    .line 701
    goto :goto_15

    .line 702
    :cond_1b
    if-eqz v1, :cond_1c

    .line 703
    .line 704
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    if-eqz v5, :cond_1c

    .line 709
    .line 710
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 711
    .line 712
    sget-object v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 713
    .line 714
    new-instance v7, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;

    .line 715
    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 717
    .line 718
    .line 719
    move-result v8

    .line 720
    invoke-direct {v7, v1, v3, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 721
    .line 722
    .line 723
    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    iget-object v1, v0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 727
    .line 728
    invoke-virtual {v1, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 729
    .line 730
    .line 731
    :cond_1c
    :goto_15
    if-eqz v4, :cond_1e

    .line 732
    .line 733
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/u1;->i0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 738
    .line 739
    .line 740
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 741
    .line 742
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    if-nez v3, :cond_1d

    .line 751
    .line 752
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 753
    .line 754
    :cond_1d
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 755
    .line 756
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;

    .line 757
    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .line 762
    .line 763
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 764
    .line 765
    .line 766
    move-result v6

    .line 767
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v6

    .line 785
    const/4 v7, 0x1

    .line 786
    invoke-direct {v4, v7, v2, v5, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;-><init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    invoke-direct {v3, v1, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    iget-object v1, v0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 793
    .line 794
    invoke-virtual {v1, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 795
    .line 796
    .line 797
    :cond_1e
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 798
    .line 799
    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 800
    .line 801
    new-instance v13, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;

    .line 802
    .line 803
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v4

    .line 807
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getForum_name()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v6

    .line 815
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 816
    .line 817
    .line 818
    move-result v7

    .line 819
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 820
    .line 821
    .line 822
    move-result v8

    .line 823
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 824
    .line 825
    .line 826
    move-result v9

    .line 827
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    .line 828
    .line 829
    .line 830
    move-result v10

    .line 831
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 832
    .line 833
    .line 834
    move-result v11

    .line 835
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 836
    .line 837
    .line 838
    move-result v12

    .line 839
    move-object v3, v13

    .line 840
    invoke-direct/range {v3 .. v12}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZI)V

    .line 841
    .line 842
    .line 843
    invoke-direct {v1, v2, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 844
    .line 845
    .line 846
    iget-object v2, v0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 847
    .line 848
    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 849
    .line 850
    .line 851
    return-void
.end method

.method private o0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/join/mgps/fragment/u1;->n0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->A:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/u1;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/u1;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
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
    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->A:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->Y4(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->A:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/u1;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->A:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/u1;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public C(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "duration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    long-to-int p3, p2

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method S(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_8

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_7

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p1, v1, :cond_6

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    if-eq p1, v1, :cond_5

    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    if-eq p1, v1, :cond_4

    .line 22
    .line 23
    const/16 v0, 0xa

    .line 24
    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->d:Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroupClassify;->getGname()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p1, ""

    .line 39
    .line 40
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    const-string p1, "\u5e16\u5b50"

    .line 47
    .line 48
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "\u6ca1\u6709\u66f4\u591a"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "\u5e16\u54e6~"

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 76
    .line 77
    new-instance v1, Lcom/join/mgps/fragment/u1$j;

    .line 78
    .line 79
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/u1$j;-><init>(Lcom/join/mgps/fragment/u1;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 97
    .line 98
    const/16 v0, 0x8

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 109
    .line 110
    const v0, 0x7f080edb

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 121
    .line 122
    new-instance v0, Lcom/join/mgps/fragment/u1$i;

    .line 123
    .line 124
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/u1$i;-><init>(Lcom/join/mgps/fragment/u1;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    const-string p1, "\u52a0\u8f7d\u5931\u8d25~"

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 142
    .line 143
    new-instance v0, Lcom/join/mgps/fragment/u1$a;

    .line 144
    .line 145
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/u1$a;-><init>(Lcom/join/mgps/fragment/u1;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_7
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_8
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 176
    .line 177
    .line 178
    :goto_1
    return-void
.end method

.method V(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->c0(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 10
    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    iget v1, p0, Lcom/join/mgps/fragment/u1;->B:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v0, p1, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->v:Lcom/join/mgps/rpc/e;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->I0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 80
    .line 81
    iget-boolean v0, p0, Lcom/join/mgps/fragment/u1;->C:Z

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->r0(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception p1

    .line 108
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    :cond_4
    :goto_1
    iput v1, p0, Lcom/join/mgps/fragment/u1;->B:I

    .line 115
    .line 116
    iput-boolean v1, p0, Lcom/join/mgps/fragment/u1;->C:Z

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :goto_2
    iput v1, p0, Lcom/join/mgps/fragment/u1;->B:I

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/join/mgps/fragment/u1;->C:Z

    .line 122
    .line 123
    throw p1

    .line 124
    :cond_5
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_3
    return-void
.end method

.method X(I)V
    .locals 7
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
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->c0(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, -0x1

    .line 12
    :try_start_0
    iget v3, p0, Lcom/join/mgps/fragment/u1;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-ne v3, v2, :cond_1

    .line 15
    .line 16
    if-eq v3, v2, :cond_0

    .line 17
    .line 18
    iput v1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    if-ne v3, p1, :cond_3

    .line 25
    .line 26
    if-eq v3, v2, :cond_2

    .line 27
    .line 28
    iput v1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 39
    .line 40
    .line 41
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-eqz v3, :cond_5

    .line 43
    .line 44
    iget p1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 45
    .line 46
    if-eq p1, v2, :cond_4

    .line 47
    .line 48
    iput v1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 49
    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_5
    :try_start_2
    iput p1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 55
    .line 56
    iget-object v3, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v5, p0, Lcom/join/mgps/fragment/u1;->d:Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/join/mgps/dto/RecommenGroupClassify;->getGid()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    iget-object v6, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/rpc/i;

    .line 83
    .line 84
    invoke-interface {v6, v5, p1, v3, v4}, Lcom/join/mgps/rpc/i;->g0(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_b

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_b

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-nez v4, :cond_7

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->S(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    iget p1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 106
    .line 107
    if-eq p1, v2, :cond_6

    .line 108
    .line 109
    iput v1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 110
    .line 111
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_7
    :try_start_3
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFlag()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    iput v4, p0, Lcom/join/mgps/fragment/u1;->f:I

    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-eqz v4, :cond_9

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_8

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    invoke-virtual {p0, p1, v3}, Lcom/join/mgps/fragment/u1;->q0(ILcom/join/mgps/dto/ForumData$HomepageRecommendLabel;)V

    .line 145
    .line 146
    .line 147
    iput p1, p0, Lcom/join/mgps/fragment/u1;->p:I

    .line 148
    .line 149
    const/4 v3, 0x2

    .line 150
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/u1;->S(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_9
    :goto_0
    iput v2, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 155
    .line 156
    const/16 v3, 0xa

    .line 157
    .line 158
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/u1;->S(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    .line 160
    .line 161
    iget p1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 162
    .line 163
    if-eq p1, v2, :cond_a

    .line 164
    .line 165
    iput v1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 166
    .line 167
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_b
    :goto_1
    iget p1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 172
    .line 173
    if-eq p1, v2, :cond_d

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catchall_0
    move-exception p1

    .line 177
    goto :goto_3

    .line 178
    :catch_0
    move-exception v3

    .line 179
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 183
    .line 184
    .line 185
    const/4 v3, 0x1

    .line 186
    if-ne p1, v3, :cond_c

    .line 187
    .line 188
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 189
    .line 190
    if-eqz p1, :cond_c

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eq p1, v0, :cond_c

    .line 197
    .line 198
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 201
    .line 202
    .line 203
    :cond_c
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->S(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    .line 205
    .line 206
    iget p1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 207
    .line 208
    if-eq p1, v2, :cond_d

    .line 209
    .line 210
    :goto_2
    iput v1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 211
    .line 212
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :goto_3
    iget v0, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 217
    .line 218
    if-eq v0, v2, :cond_e

    .line 219
    .line 220
    iput v1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 221
    .line 222
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_10

    .line 231
    .line 232
    const p1, 0x7f12031e

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_10
    const/16 p1, 0x9

    .line 243
    .line 244
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->S(I)V

    .line 245
    .line 246
    .line 247
    :goto_4
    return-void
.end method

.method public Z()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->v:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    :try_start_0
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
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u1;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->W()V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/join/mgps/fragment/u1;->w:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->Z()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->a0()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->loading()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method b0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->c0(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const v0, 0x7f12031e

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/16 v0, 0x9

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->S(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0
.end method

.method c0(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->s:Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    const-string v1, "connectivity"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/fragment/u1;->s:Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->s:Landroid/net/ConnectivityManager;

    .line 29
    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    return v0

    .line 33
    :cond_3
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_1
    array-length v2, p1

    .line 41
    if-ge v1, v2, :cond_5

    .line 42
    .line 43
    aget-object v2, p1, v1

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    if-ne v2, v3, :cond_4

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_5
    return v0
.end method

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "from"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p2, v1, :cond_9

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p2, v1, :cond_8

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p2, v1, :cond_6

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    if-eq p2, v1, :cond_5

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    if-eq p2, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq p2, v1, :cond_1

    .line 26
    .line 27
    const/16 p1, 0xb

    .line 28
    .line 29
    if-eq p2, p1, :cond_7

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->y:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->y:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_b

    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->y:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->y:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_b

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_b

    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->y:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->y:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 115
    .line 116
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_b

    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 129
    .line 130
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->y:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_a

    .line 149
    .line 150
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->y:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 156
    .line 157
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_b

    .line 162
    .line 163
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->z:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_0
    return-void
.end method

.method e0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->m0()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->o0()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "event"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p2, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge p2, v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 69
    .line 70
    .line 71
    or-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->e0()V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method g0(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lt6/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method h0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curPid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/join/mgps/Util/r0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, ""

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/rpc/i;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/i;->R(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v3, 0x2c2

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->k0(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->p0()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p1}, Lcom/join/mgps/Util/r0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public i(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method i0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameInfo"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->A:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->x:Ljava/util/Map;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method k0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v2, p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    :goto_0
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    xor-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->e0()V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method declared-synchronized loading()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->X(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->F()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u1;->w:Z

    .line 20
    .line 21
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 3
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
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/u1;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "zip DownloadStatus ="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    :pswitch_0
    goto :goto_0

    .line 37
    :pswitch_1
    const/16 p1, 0x9

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/u1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_2
    const/16 p1, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/u1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_3
    const/4 p1, 0x7

    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/u1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_4
    const/4 p1, 0x4

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/u1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_5
    const/4 p1, 0x3

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/u1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_6
    const/4 p1, 0x6

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/u1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_7
    const/4 p1, 0x5

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/u1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_8
    const/4 p1, 0x2

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/u1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_9
    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/u1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->S(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/android/app/component/video/c;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->H()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/android/app/component/video/c;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->P()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->c0()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/android/app/component/video/c;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string p2, "ForumPostsFragment"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/join/mgps/fragment/u1;->c:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "onViewCreated"

    .line 24
    .line 25
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/join/mgps/fragment/u1;->r:Z

    .line 34
    .line 35
    return-void
.end method

.method p0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method q0(ILcom/join/mgps/dto/ForumData$HomepageRecommendLabel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "page",
            "data"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getRecommend_tags()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->g:Ljava/util/List;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lcom/join/mgps/fragment/u1;->g:Ljava/util/List;

    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 30
    .line 31
    :cond_1
    const/4 v2, 0x1

    .line 32
    if-ne p1, v2, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->g:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getLabel_switcher()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-ne p1, v2, :cond_2

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-lez p1, :cond_2

    .line 57
    .line 58
    new-instance p1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 59
    .line 60
    invoke-direct {p1}, Lcom/join/mgps/dto/RecommendLabelTag;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 p2, -0x1

    .line 64
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/RecommendLabelTag;->setTag_id(I)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const v2, 0x7f1202bd

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/RecommendLabelTag;->setTag_name(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/join/mgps/fragment/u1;->g:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->g:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    .line 92
    .line 93
    :cond_2
    if-eqz v1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->e0()V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method r0(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v1, v3, :cond_2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/join/mgps/fragment/u1;->h:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 73
    .line 74
    .line 75
    or-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->e0()V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-lez v1, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    const/4 v1, 0x5

    .line 126
    if-ne p1, v1, :cond_6

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_1
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/join/mgps/fragment/u1$f;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u1$f;-><init>(Lcom/join/mgps/fragment/u1;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->i:Lcom/join/mgps/customview/j;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/join/mgps/customview/j;->onRefresh()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method s0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/fragment/u1$g;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u1$g;-><init>(Lcom/join/mgps/fragment/u1;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x64

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "ForumPostsFragment"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/join/mgps/fragment/u1;->c:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "setUserVisibleHint--isVisibleToUser="

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " isInit="

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v2, p0, Lcom/join/mgps/fragment/u1;->r:Z

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    iget p1, p0, Lcom/join/mgps/fragment/u1;->p:I

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    if-ge p1, v0, :cond_0

    .line 63
    .line 64
    iget p1, p0, Lcom/join/mgps/fragment/u1;->q:I

    .line 65
    .line 66
    if-nez p1, :cond_0

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->loading()V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public t0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->K(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/android/app/component/video/c;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method u0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/u1;->R(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    return v0
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
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->j0()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x4

    .line 28
    if-eq p2, p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->j0()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
