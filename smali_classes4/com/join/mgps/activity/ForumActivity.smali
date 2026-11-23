.class public Lcom/join/mgps/activity/ForumActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/mgps/customview/ForumBaseHeaderView$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d069f
.end annotation


# static fields
.field public static orderBy:I = 0x2


# instance fields
.field adapter:Lcom/join/mgps/adapter/h0;

.field adapterPW:Landroid/widget/BaseAdapter;

.field bottom:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btnSendPosts:Landroid/widget/Button;

.field currentFragment:Lcom/join/mgps/fragment/b0;

.field fid:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field forumGroupIndex:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

.field forum_post:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forum_title_center:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field from:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field headerView:Lcom/join/mgps/customview/ForumGroupHeaderView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field keepJoinState:I

.field loadingView:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mDySinceDirectionChange:I

.field private mLastSelectedPos:I

.field mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field names:[Ljava/lang/String;

.field popWindow:Lcom/join/mgps/customview/g;

.field popupWindow:Lcom/join/mgps/customview/h;

.field quickReturnFooter:Lcom/join/mgps/Util/n3$a;

.field rlOrderBy:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field scrollableLayout:Lru/noties/scrollable/ScrollableLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sreach_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout4;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;"
        }
    .end annotation
.end field

.field typesPW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field wrapListView:Lcom/join/mgps/customview/WrapContentListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->typesPW:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ForumActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumActivity;->mLastSelectedPos:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/ForumActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumActivity;->mLastSelectedPos:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ForumActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/ForumActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private items(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge p1, v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v3, Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 42
    .line 43
    invoke-direct {v3}, Lcom/join/mgps/dto/RecommenGroupClassify;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RecommenGroupClassify;->setGid(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RecommenGroupClassify;->setGname(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/join/mgps/adapter/h0$a;

    .line 53
    .line 54
    iget v4, p0, Lcom/join/mgps/activity/ForumActivity;->fid:I

    .line 55
    .line 56
    iget-object v5, p0, Lcom/join/mgps/activity/ForumActivity;->forumGroupIndex:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v4, v5, v3, p1}, Lcom/join/mgps/fragment/s1;->Z(ILjava/lang/String;Lcom/join/mgps/dto/RecommenGroupClassify;I)Landroidx/fragment/app/Fragment;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {v2, v1, v3}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 p1, p1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-object v0
.end method


# virtual methods
.method T(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->initForumId()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->forum_title_center:Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->forum_post:Landroid/widget/Button;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->forum_title_center:Landroid/widget/TextView;

    .line 22
    .line 23
    const-string v2, "\u5c0f\u7ec4\u4e3b\u9875"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/Util/n3$a;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->btnSendPosts:Landroid/widget/Button;

    .line 31
    .line 32
    invoke-direct {v0, v2}, Lcom/join/mgps/Util/n3$a;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->headerView:Lcom/join/mgps/customview/ForumGroupHeaderView;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumBaseHeaderView;->setmOnMeasureHeight(Lcom/join/mgps/customview/ForumBaseHeaderView$a;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->headerView:Lcom/join/mgps/customview/ForumGroupHeaderView;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumBaseHeaderView;->setHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v0, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 59
    .line 60
    new-instance v3, Lcom/join/mgps/activity/ForumActivity$b;

    .line 61
    .line 62
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ForumActivity$b;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumActivity;->changeLoadingState(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->loading()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->sreach_image:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public autoRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method back_image()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->from:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->from:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "discovery"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Lcom/join/mgps/activity/ForumIndexActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method btnSendPosts()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->forumGroupIndex:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/mgps/activity/posting/PostingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->getType()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->g(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->forumGroupIndex:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->f(Ljava/lang/String;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->fid:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->a(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/16 v1, 0x4444

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method changeJoinState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isJoined"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->headerView:Lcom/join/mgps/customview/ForumGroupHeaderView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumGroupHeaderView;->setJoinState(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumActivity;->keepJoinState:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eq v0, p1, :cond_2

    .line 18
    .line 19
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->o0(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v1}, Lcom/join/mgps/pref/h;->o0(Z)V

    .line 32
    .line 33
    .line 34
    :goto_1
    return-void
.end method

.method changeLoadingState(I)V
    .locals 2
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

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
    if-eq p1, v1, :cond_6

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_5

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p1, v1, :cond_4

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    if-eq p1, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    if-eq p1, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9\u54e6~"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/activity/ForumActivity$d;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumActivity$d;-><init>(Lcom/join/mgps/activity/ForumActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Lcom/join/mgps/activity/ForumActivity$c;

    .line 56
    .line 57
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/ForumActivity$c;-><init>(Lcom/join/mgps/activity/ForumActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 75
    .line 76
    new-instance v0, Lcom/join/mgps/activity/ForumActivity$e;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumActivity$e;-><init>(Lcom/join/mgps/activity/ForumActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->hideSendBtn()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method exitGroup()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 24
    .line 25
    iget v3, p0, Lcom/join/mgps/activity/ForumActivity;->fid:I

    .line 26
    .line 27
    invoke-interface {v2, v3, v0, v1}, Lcom/join/mgps/rpc/i;->O(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumActivity;->changeJoinState(Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->T(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const v0, 0x7f120118

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const v0, 0x7f12031e

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->T(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method forum_post()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->typesPW:Ljava/util/List;

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
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->typesPW:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->names:[Ljava/lang/String;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->typesPW:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->names:[Ljava/lang/String;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Lcom/join/mgps/activity/ForumActivity;->typesPW:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, "\u5e16"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    aput-object v3, v2, v1

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 70
    .line 71
    const/4 v2, -0x1

    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const v3, 0x7f0d0271

    .line 79
    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v3, Lcom/join/mgps/customview/h;

    .line 87
    .line 88
    invoke-direct {v3, p0}, Lcom/join/mgps/customview/h;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 97
    .line 98
    const/4 v4, -0x2

    .line 99
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 103
    .line 104
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const v3, 0x7f0a1c00

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/join/mgps/customview/WrapContentListView;

    .line 121
    .line 122
    iput-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->wrapListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 123
    .line 124
    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 125
    .line 126
    const v3, 0x7f0a10d8

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lcom/join/mgps/activity/ForumActivity;->names:[Ljava/lang/String;

    .line 130
    .line 131
    const v5, 0x7f0d0272

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, p0, v5, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iput-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->adapterPW:Landroid/widget/BaseAdapter;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->wrapListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 140
    .line 141
    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->wrapListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 145
    .line 146
    new-instance v3, Lcom/join/mgps/activity/ForumActivity$a;

    .line 147
    .line 148
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ForumActivity$a;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    mul-int/lit8 v1, v1, -0x1

    .line 165
    .line 166
    if-nez v1, :cond_3

    .line 167
    .line 168
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const v3, 0x7f07123b

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    mul-int/lit8 v1, v1, -0x1

    .line 180
    .line 181
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->names:[Ljava/lang/String;

    .line 182
    .line 183
    array-length v2, v2

    .line 184
    mul-int v1, v1, v2

    .line 185
    .line 186
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 187
    .line 188
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->bottom:Landroid/view/View;

    .line 189
    .line 190
    invoke-virtual {v2, v3, v0, v1}, Lcom/join/mgps/customview/h;->showAsDropDown(Landroid/view/View;II)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 195
    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_5

    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/join/mgps/customview/h;->dismiss()V

    .line 207
    .line 208
    .line 209
    :cond_5
    return-void
.end method

.method getCurrentFragment()Lcom/join/mgps/fragment/v1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->currentFragment:Lcom/join/mgps/fragment/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/fragment/b0;->a()Lcom/join/mgps/fragment/v1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method getForumGroupIndex()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 25
    .line 26
    iget v4, p0, Lcom/join/mgps/activity/ForumActivity;->fid:I

    .line 27
    .line 28
    invoke-interface {v3, v4, v1, v2}, Lcom/join/mgps/rpc/i;->K(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->changeLoadingState(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumActivity;->showForumGroupIndex(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumActivity;->changeLoadingState(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->changeLoadingState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->changeLoadingState(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const v0, 0x7f12031e

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->T(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/16 v0, 0x9

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->changeLoadingState(I)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method getType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

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
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method hideSendBtn()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->btnSendPosts:Landroid/widget/Button;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumActivity;->mLastSelectedPos:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-ltz v0, :cond_3

    .line 23
    .line 24
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v0, v3, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 33
    .line 34
    iget v3, p0, Lcom/join/mgps/activity/ForumActivity;->mLastSelectedPos:I

    .line 35
    .line 36
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v3, 0x5

    .line 47
    if-ne v0, v3, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->btnSendPosts:Landroid/widget/Button;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->btnSendPosts:Landroid/widget/Button;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->btnSendPosts:Landroid/widget/Button;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->btnSendPosts:Landroid/widget/Button;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method public initForumId()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_forum_bean"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-class v2, Lcom/join/mgps/dto/ForumBean;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/dto/ForumBean;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/join/mgps/activity/ForumActivity;->fid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method initScrollableLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/adapter/h0;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, v2}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 33
    .line 34
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumActivity;->items(Landroid/content/Context;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/h0;->e(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/adapter/h0;->getCount()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->g()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/adapter/h0;->getCount()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v2, 0x5

    .line 83
    if-gt v0, v2, :cond_1

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 98
    .line 99
    new-instance v1, Lcom/join/mgps/activity/ForumActivity$f;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$f;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->headerView:Lcom/join/mgps/customview/ForumGroupHeaderView;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setDraggableView(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lcom/join/mgps/fragment/c0;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/fragment/c0;-><init>(Landroidx/viewpager/widget/ViewPager;Landroidx/fragment/app/FragmentManager;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->currentFragment:Lcom/join/mgps/fragment/b0;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 128
    .line 129
    new-instance v1, Lcom/join/mgps/activity/ForumActivity$g;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$g;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setCanScrollVerticallyDelegate(Lru/noties/scrollable/b;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 138
    .line 139
    new-instance v1, Lcom/join/mgps/activity/ForumActivity$h;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$h;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setOnFlingOverListener(Lru/noties/scrollable/j;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 148
    .line 149
    new-instance v1, Lcom/join/mgps/activity/ForumActivity$i;

    .line 150
    .line 151
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$i;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->w(Lru/noties/scrollable/k;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public isRefresh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method joinGroup()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 24
    .line 25
    iget v3, p0, Lcom/join/mgps/activity/ForumActivity;->fid:I

    .line 26
    .line 27
    invoke-interface {v2, v3, v0, v1}, Lcom/join/mgps/rpc/i;->n0(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumActivity;->changeJoinState(Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->T(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const v0, 0x7f120242

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const v0, 0x7f12031e

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->T(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method loading()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->getForumGroupIndex()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x4444

    .line 5
    .line 6
    if-ne p1, v0, :cond_2

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    const-string p2, "postingType"

    .line 14
    .line 15
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-ge p2, p3, :cond_1

    .line 31
    .line 32
    iget-object p3, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    check-cast p3, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-ne p1, p3, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 47
    .line 48
    const/4 p3, 0x1

    .line 49
    invoke-virtual {p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->refreshFrg()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/android/app/component/video/a;->g0(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 6
    .line 7
    iget v2, p0, Lcom/join/mgps/activity/ForumActivity;->mLastSelectedPos:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/mgps/fragment/s1;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/fragment/s1;->onBackPressedMy()Z

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 27
    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->from:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->from:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "discovery"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-static {p0}, Lcom/join/mgps/activity/ForumIndexActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a1029

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget v0, p0, Lcom/join/mgps/activity/ForumActivity;->fid:I

    .line 15
    .line 16
    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupMemberActivity(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const v0, 0x7f0a0674

    .line 21
    .line 22
    .line 23
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->headerView:Lcom/join/mgps/customview/ForumGroupHeaderView;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumGroupHeaderView;->b()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->exitGroup()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->showDialog()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->joinGroup()V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public onMeasure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lru/noties/scrollable/ScrollableLayout;->setMaxScrollY(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sub-int/2addr v0, v1

    .line 30
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dy"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->mDySinceDirectionChange:I

    .line 5
    .line 6
    if-ltz v1, :cond_1

    .line 7
    .line 8
    :cond_0
    if-gez p1, :cond_2

    .line 9
    .line 10
    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->mDySinceDirectionChange:I

    .line 11
    .line 12
    if-lez v1, :cond_2

    .line 13
    .line 14
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/n3$a;->g()V

    .line 17
    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/activity/ForumActivity;->mDySinceDirectionChange:I

    .line 20
    .line 21
    :cond_2
    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->mDySinceDirectionChange:I

    .line 22
    .line 23
    add-int/2addr v1, p1

    .line 24
    iput v1, p0, Lcom/join/mgps/activity/ForumActivity;->mDySinceDirectionChange:I

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/Util/n3$a;->h()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-le v1, p1, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/n3$a;->l(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget p1, p0, Lcom/join/mgps/activity/ForumActivity;->mDySinceDirectionChange:I

    .line 41
    .line 42
    if-gez p1, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/n3$a;->l(Z)V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_0
    return-void
.end method

.method playVideoDelay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->mLastSelectedPos:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/fragment/s1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/fragment/s1;->S()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method refresh()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method refreshFrg()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->currentFragment:Lcom/join/mgps/fragment/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/fragment/b0;->a()Lcom/join/mgps/fragment/v1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/join/mgps/fragment/s1;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->currentFragment:Lcom/join/mgps/fragment/b0;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/join/mgps/fragment/b0;->a()Lcom/join/mgps/fragment/v1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/fragment/s1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/fragment/s1;->refresh()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method rlOrderBy()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/g;

    .line 6
    .line 7
    const/4 v1, -0x2

    .line 8
    invoke-direct {v0, p0, v1, v1}, Lcom/join/mgps/customview/g;-><init>(Landroid/content/Context;II)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/activity/ForumActivity$j;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$j;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/g;->d(Lcom/join/mgps/customview/g$b;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    const/high16 v2, 0x42fc0000    # 126.0f

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    float-to-int v0, v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->rlOrderBy:Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    sub-int/2addr v1, v0

    .line 94
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const v3, 0x7f070487

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    sub-int/2addr v1, v0

    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->rlOrderBy:Landroid/widget/RelativeLayout;

    .line 117
    .line 118
    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->popWindow:Lcom/join/mgps/customview/g;

    .line 122
    .line 123
    sget v1, Lcom/join/mgps/activity/ForumActivity;->orderBy:I

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/g;->c(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void
.end method

.method showDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showForumGroupIndex(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V
    .locals 2
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->A()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->forumGroupIndex:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->o0(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/join/mgps/activity/ForumActivity;->keepJoinState:I

    .line 42
    .line 43
    :goto_0
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->forumGroupIndex:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->headerView:Lcom/join/mgps/customview/ForumGroupHeaderView;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumGroupHeaderView;->setData(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->typesPW:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getPost_type()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getPost_type()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->typesPW:Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getPost_type()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 81
    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 90
    .line 91
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getType()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getType()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->refreshFrg()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getType()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->types:Ljava/util/List;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->initScrollableLayout()V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method sreach_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumActivity;->fid:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->C0(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stopRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
