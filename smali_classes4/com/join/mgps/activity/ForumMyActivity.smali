.class public Lcom/join/mgps/activity/ForumMyActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/mgps/customview/ForumBaseHeaderView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumMyActivity$k;,
        Lcom/join/mgps/activity/ForumMyActivity$l;,
        Lcom/join/mgps/activity/ForumMyActivity$j;,
        Lcom/join/mgps/activity/ForumMyActivity$m;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0053
.end annotation


# instance fields
.field private final EX_ITEM_COMMENT:I

.field private final EX_ITEM_GROUP:I

.field private final EX_ITEM_POST:I

.field private final EX_ITEM_TAG:I

.field adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

.field expandableListView:Lcom/join/mgps/customview/XExpandableListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field firstExpandGroup:Z

.field forum_follow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;"
        }
    .end annotation
.end field

.field forum_title_center:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field headerView:Lcom/join/mgps/customview/ForumMyHeaderView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private listViewRefreshListener:Lcom/join/mgps/customview/j;

.field loadingView:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public pageCount:I

.field public pageLoading:I

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field scrollableLayout:Lru/noties/scrollable/ScrollableLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tag_follow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->forum_follow:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->tag_follow:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->EX_ITEM_GROUP:I

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->EX_ITEM_TAG:I

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->EX_ITEM_POST:I

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->EX_ITEM_COMMENT:I

    .line 29
    .line 30
    new-instance v1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->firstExpandGroup:Z

    .line 38
    .line 39
    return-void
.end method

.method private declared-synchronized notifyDataChanged()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->b()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->b()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$l;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->e(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->a(Lcom/join/mgps/activity/ForumMyActivity$l;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$l;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->e(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->a(Lcom/join/mgps/activity/ForumMyActivity$l;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->forum_follow:Ljava/util/List;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$l;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->e(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->forum_follow:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->c(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->a(Lcom/join/mgps/activity/ForumMyActivity$l;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->tag_follow:Ljava/util/List;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$l;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->e(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->tag_follow:Ljava/util/List;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->d(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->a(Lcom/join/mgps/activity/ForumMyActivity$l;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 110
    .line 111
    .line 112
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->firstExpandGroup:Z

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    const/4 v1, 0x0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/join/mgps/activity/ForumMyActivity$k;->getGroupCount()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-ge v1, v2, :cond_3

    .line 125
    .line 126
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->firstExpandGroup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    :cond_4
    monitor-exit p0

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    monitor-exit p0

    .line 140
    throw v0
.end method


# virtual methods
.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->forum_title_center:Landroid/widget/TextView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->forum_title_center:Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v2, "\u6211\u7684\u793e\u533a"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->headerView:Lcom/join/mgps/customview/ForumMyHeaderView;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumBaseHeaderView;->setmOnMeasureHeight(Lcom/join/mgps/customview/ForumBaseHeaderView$a;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->headerView:Lcom/join/mgps/customview/ForumMyHeaderView;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumBaseHeaderView;->setHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 37
    .line 38
    new-instance v2, Lcom/join/mgps/activity/ForumMyActivity$a;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumMyActivity$a;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 52
    .line 53
    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$b;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$b;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setCanScrollVerticallyDelegate(Lru/noties/scrollable/b;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 62
    .line 63
    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$c;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$c;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setOnFlingOverListener(Lru/noties/scrollable/j;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 72
    .line 73
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XExpandableListView;->setPreLoadCount(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 79
    .line 80
    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$d;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$d;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XExpandableListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$e;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$e;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->listViewRefreshListener:Lcom/join/mgps/customview/j;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XExpandableListView;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 101
    .line 102
    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/ForumMyActivity$k;-><init>(Lcom/join/mgps/activity/ForumMyActivity;Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->adapter:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 113
    .line 114
    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$f;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$f;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->loading()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method changeLoadingState(I)V
    .locals 3
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
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_5

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    .line 10
    const/16 v0, 0x10

    .line 11
    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "\u6ca1\u6709\u66f4\u591a"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "\u793e\u533a\u5185\u5bb9"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "\u5e16\u54e6~"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$h;

    .line 55
    .line 56
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$h;-><init>(Lcom/join/mgps/activity/ForumMyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 74
    .line 75
    const/16 v0, 0x8

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 88
    .line 89
    const-string v1, "\u52a0\u8f7d\u5931\u8d25~"

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 95
    .line 96
    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$i;

    .line 97
    .line 98
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$i;-><init>(Lcom/join/mgps/activity/ForumMyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void
.end method

.method isNetWorkConnected()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f12031e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->showMessage(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x9

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->changeLoadingState(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->stopXlistRefreshAndLoadMore()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0
.end method

.method loading()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->myForumMain(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method myForumMain(I)V
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
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    :try_start_0
    iget v3, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-ne v3, p1, :cond_1

    .line 13
    .line 14
    if-eq v3, v2, :cond_0

    .line 15
    .line 16
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->stopXlistRefreshAndLoadMore()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 23
    .line 24
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/join/mgps/activity/ForumMyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 41
    .line 42
    sget v6, Lcom/join/mgps/Util/r0;->d:I

    .line 43
    .line 44
    invoke-interface {v5, v3, v4, p1, v6}, Lcom/join/mgps/rpc/i;->r(Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ForumResponse;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_6

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->changeLoadingState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    iget p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 66
    .line 67
    if-eq p1, v2, :cond_2

    .line 68
    .line 69
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->stopXlistRefreshAndLoadMore()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Lcom/join/mgps/dto/ForumData$MyForumMain;

    .line 80
    .line 81
    invoke-virtual {p0, v4, p1}, Lcom/join/mgps/activity/ForumMyActivity;->showMain(Lcom/join/mgps/dto/ForumData$MyForumMain;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/join/mgps/dto/ForumData$MyForumMain;

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$MyForumMain;->getTag_follow()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lcom/join/mgps/dto/ForumData$MyForumMain;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$MyForumMain;->getTag_follow()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_4

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iput p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageCount:I

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    :goto_0
    iput v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->changeLoadingState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    .line 122
    :goto_1
    iget p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 123
    .line 124
    if-eq p1, v2, :cond_7

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catchall_0
    move-exception p1

    .line 128
    goto :goto_3

    .line 129
    :catch_0
    move-exception p1

    .line 130
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->changeLoadingState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    .line 135
    .line 136
    iget p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 137
    .line 138
    if-eq p1, v2, :cond_7

    .line 139
    .line 140
    :goto_2
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 141
    .line 142
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->stopXlistRefreshAndLoadMore()V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :goto_3
    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 147
    .line 148
    if-eq v0, v2, :cond_8

    .line 149
    .line 150
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->pageLoading:I

    .line 151
    .line 152
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->stopXlistRefreshAndLoadMore()V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_9
    const p1, 0x7f12031e

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity;->showMessage(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const/16 p1, 0x9

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity;->changeLoadingState(I)V

    .line 169
    .line 170
    .line 171
    :goto_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    return-void
.end method

.method public onMeasure(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lru/noties/scrollable/ScrollableLayout;->setMaxScrollY(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->timeRefreshData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method refresh()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showMain(Lcom/join/mgps/dto/ForumData$MyForumMain;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$MyForumMain;->getForum_follow()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$MyForumMain;->getTag_follow()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p2, v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->forum_follow:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->tag_follow:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->forum_follow:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->tag_follow:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    if-ne p2, v1, :cond_3

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->firstExpandGroup:Z

    .line 51
    .line 52
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyActivity;->notifyDataChanged()V

    .line 53
    .line 54
    .line 55
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

.method stopXlistRefreshAndLoadMore()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$g;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$g;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

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

.method timeRefreshData()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->A()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->o0(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->loading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method
