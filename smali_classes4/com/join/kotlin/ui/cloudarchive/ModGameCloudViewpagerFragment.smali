.class public Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02b3
.end annotation


# instance fields
.field private cloudArchiveTagAdapter:Lcom/join/mgps/adapter/h;

.field private defaultSelectedIndex:I

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation
.end field

.field private gameId:Ljava/lang/String;

.field private lastSelectedTagIndex:I

.field private modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

.field subTabList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field viewpager:Lcom/join/mgps/customview/NoScrollViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

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
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    .line 13
    .line 14
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lambda$addTagList$0(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)Lcom/join/mgps/adapter/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->cloudArchiveTagAdapter:Lcom/join/mgps/adapter/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private addTagList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->setSelected(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->subTabList:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/join/mgps/adapter/h;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->cloudArchiveTagAdapter:Lcom/join/mgps/adapter/h;

    .line 52
    .line 53
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/k0;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/k0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/h;->f(Lcom/join/mgps/adapter/h$b;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->subTabList:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->cloudArchiveTagAdapter:Lcom/join/mgps/adapter/h;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private initDefaultSelectedIndex()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_cfg()Lcom/join/mgps/dto/CloudArchiveCfg;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_cfg()Lcom/join/mgps/dto/CloudArchiveCfg;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudArchiveCfg;->getLocation_at()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x2

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "5"

    .line 57
    .line 58
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    .line 71
    .line 72
    :cond_1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    .line 73
    .line 74
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method private initViewPager()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->fragments:Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 25
    .line 26
    new-instance v2, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "gameId"

    .line 37
    .line 38
    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->gameId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v4, "type"

    .line 44
    .line 45
    iget v5, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->type:I

    .line 46
    .line 47
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v4, "datas"

    .line 51
    .line 52
    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 53
    .line 54
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "tag"

    .line 58
    .line 59
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->fragments:Ljava/util/List;

    .line 66
    .line 67
    new-instance v4, Lcom/join/mgps/adapter/h0$a;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/h0;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->fragments:Ljava/util/List;

    .line 87
    .line 88
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    add-int/lit8 v2, v2, -0x1

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 110
    .line 111
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/NoScrollViewPager;->setCurrentItem(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 117
    .line 118
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment$1;

    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method private synthetic lambda$addTagList$0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/customview/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->fragments:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/adapter/h0$a;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/adapter/h0$a;->c:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    instance-of v0, p1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->scrollToTop()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "datas"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/join/mgps/dto/ModGameDetailBean;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->type:I

    .line 22
    .line 23
    const-string v1, "gameId"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->gameId:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "tags"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->initDefaultSelectedIndex()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->addTagList()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->initViewPager()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
