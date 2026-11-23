.class public Lcom/join/mgps/activity/arena/a;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/a$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0024
.end annotation


# static fields
.field private static final t:I = 0xa

.field public static final u:I = 0x1

.field public static final v:I = 0x2

.field public static final w:I = 0x3

.field public static final x:I = 0x4

.field public static final y:I = 0x23

.field public static final z:I = 0x1f


# instance fields
.field c:Lcom/join/mgps/rpc/l;

.field d:I

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroidx/viewpager/widget/ViewPager;

.field h:Lcom/join/mgps/customview/TabPageIndicator;

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private k:Z

.field l:Landroid/app/Activity;

.field private m:I

.field n:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private o:Lcom/join/mgps/adapter/f2;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private r:[Lcom/join/mgps/fragment/c;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
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
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/a;->k:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/arena/a;->m:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->p:Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->q:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->s:Ljava/util/ArrayList;

    .line 30
    .line 31
    return-void
.end method

.method static synthetic M(Lcom/join/mgps/activity/arena/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/a;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/activity/arena/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/a;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic O(Lcom/join/mgps/activity/arena/a;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/a;->T(I)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/activity/arena/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/a;->q:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->U()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private T(I)Landroidx/fragment/app/Fragment;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->r:[Lcom/join/mgps/fragment/c;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->q:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/mgps/dto/GameTypeBean;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTypeBean;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v2, "game_type"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->d:I

    .line 31
    .line 32
    const-string v2, "room_type"

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    const/16 v1, 0x23

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v4, 0x3

    .line 44
    if-ne v1, v4, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x1f

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    const-string v1, "pn"

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    const-string v1, "datas"

    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/arena/a;->s:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    :goto_1
    new-instance v1, Lcom/join/mgps/fragment/c;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/join/mgps/fragment/c;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->r:[Lcom/join/mgps/fragment/c;

    .line 79
    .line 80
    aput-object v1, v0, p1

    .line 81
    .line 82
    return-object v1
.end method


# virtual methods
.method Q()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method S(Lcom/join/mgps/dto/ResultResMainBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/NewArenaGameListBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->q:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/join/mgps/dto/NewArenaGameListBean;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_type()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->s:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/join/mgps/dto/NewArenaGameListBean;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_list()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->q:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    new-array p1, p1, [Lcom/join/mgps/fragment/c;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/join/mgps/activity/arena/a;->r:[Lcom/join/mgps/fragment/c;

    .line 40
    .line 41
    new-instance p1, Lcom/join/mgps/activity/arena/a$d;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/arena/a$d;-><init>(Lcom/join/mgps/activity/arena/a;Landroidx/fragment/app/FragmentManager;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->g:Landroidx/viewpager/widget/ViewPager;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->g:Landroidx/viewpager/widget/ViewPager;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->q:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->g:Landroidx/viewpager/widget/ViewPager;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->h:Lcom/join/mgps/customview/TabPageIndicator;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f0600c9

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setNormalTextColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->h:Lcom/join/mgps/customview/TabPageIndicator;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const v1, 0x7f060503

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setSelectedTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->h:Lcom/join/mgps/customview/TabPageIndicator;

    .line 105
    .line 106
    const v0, 0x7f080c60

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setSelectedBottomDrawableBounds(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->h:Lcom/join/mgps/customview/TabPageIndicator;

    .line 113
    .line 114
    const v0, 0x7f0812fd

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setNormalBottomDrawableBound(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->h:Lcom/join/mgps/customview/TabPageIndicator;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->g:Landroidx/viewpager/widget/ViewPager;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method U()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/a;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->W()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->V()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method V()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/arena/a;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->c:Lcom/join/mgps/rpc/l;

    .line 8
    .line 9
    const/16 v1, 0x23

    .line 10
    .line 11
    invoke-interface {v0, v1, v2, v2}, Lcom/join/mgps/rpc/l;->M(III)Lcom/join/mgps/dto/ResultResMainBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x3

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->c:Lcom/join/mgps/rpc/l;

    .line 20
    .line 21
    const/16 v1, 0x1f

    .line 22
    .line 23
    invoke-interface {v0, v1, v2, v2}, Lcom/join/mgps/rpc/l;->M(III)Lcom/join/mgps/dto/ResultResMainBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_5

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/join/mgps/dto/NewArenaGameListBean;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_type()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/a;->S(Lcom/join/mgps/dto/ResultResMainBean;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->hideLoading()V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    :goto_2
    return-void

    .line 79
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V

    .line 80
    .line 81
    .line 82
    :goto_3
    return-void
.end method

.method W()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->n:Lcom/join/mgps/Util/b;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/arena/a;->n:Lcom/join/mgps/Util/b;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/join/mgps/activity/arena/a;->c:Lcom/join/mgps/rpc/l;

    .line 23
    .line 24
    iget v4, p0, Lcom/join/mgps/activity/arena/a;->m:I

    .line 25
    .line 26
    invoke-interface {v3, v2, v1, v4}, Lcom/join/mgps/rpc/l;->F(ILjava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_6

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    if-eqz v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/join/mgps/dto/GameListBean;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameListBean;->getGame_list()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x0

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-lez v3, :cond_3

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/16 v4, 0xa

    .line 80
    .line 81
    if-lt v3, v4, :cond_2

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/a;->k:Z

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/a;->k:Z

    .line 88
    .line 89
    :goto_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/a;->Z(Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->m:I

    .line 93
    .line 94
    if-gt v1, v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->hideLoading()V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/a;->k:Z

    .line 100
    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->m:I

    .line 104
    .line 105
    add-int/2addr v1, v0

    .line 106
    iput v1, p0, Lcom/join/mgps/activity/arena/a;->m:I

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    :goto_1
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->m:I

    .line 110
    .line 111
    if-gt v1, v0, :cond_7

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    :goto_2
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v3, "requestRecentGameList Exception :"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v2, "ArenaGameListActivity"

    .line 141
    .line 142
    invoke-static {v2, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->m:I

    .line 146
    .line 147
    if-gt v1, v0, :cond_7

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V

    .line 150
    .line 151
    .line 152
    :cond_7
    :goto_3
    return-void
.end method

.method X()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->e:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->i:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method Y()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->i:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method Z(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->p:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->o:Lcom/join/mgps/adapter/f2;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->p:Ljava/util/List;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/f2;->e(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopLoadMore()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/a;->k:Z

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->p:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-gtz p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopLoadMore()V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->o:Lcom/join/mgps/adapter/f2;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 10
    .line 11
    const-string v1, "mType"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/join/mgps/activity/arena/a;->d:I

    .line 18
    .line 19
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->c:Lcom/join/mgps/rpc/l;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/adapter/f2;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/f2;-><init>(Landroid/content/Context;Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->o:Lcom/join/mgps/adapter/f2;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 41
    .line 42
    const/4 v1, 0x6

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Lcom/join/android/app/common/utils/q;->j(Landroid/app/Activity;)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    float-to-double v3, v3

    .line 67
    const-wide v5, 0x3ffe666666666666L    # 1.9

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    cmpl-double v7, v3, v5

    .line 73
    .line 74
    if-ltz v7, :cond_0

    .line 75
    .line 76
    const/4 v3, 0x3

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v3, 0x2

    .line 79
    :goto_0
    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/join/mgps/activity/arena/a$a;

    .line 88
    .line 89
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/arena/a$a;-><init>(Lcom/join/mgps/activity/arena/a;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/join/mgps/activity/arena/a;->d:I

    .line 96
    .line 97
    const/16 v1, 0x8

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    if-ne v0, v3, :cond_1

    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->o:Lcom/join/mgps/adapter/f2;

    .line 108
    .line 109
    new-instance v4, Lcom/join/mgps/activity/arena/a$b;

    .line 110
    .line 111
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/arena/a$b;-><init>(Lcom/join/mgps/activity/arena/a;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v4}, Lcom/join/mgps/adapter/f2;->f(Lcom/join/mgps/adapter/f2$e;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 128
    .line 129
    new-instance v2, Lcom/join/mgps/activity/arena/a$c;

    .line 130
    .line 131
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/a$c;-><init>(Lcom/join/mgps/activity/arena/a;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/widget/RelativeLayout;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->Y()V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/a;->R()V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/widget/RelativeLayout;

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 160
    .line 161
    const v1, 0x7f0a1b84

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 169
    .line 170
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->g:Landroidx/viewpager/widget/ViewPager;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 173
    .line 174
    const v1, 0x7f0a11df

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lcom/join/mgps/customview/TabPageIndicator;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->h:Lcom/join/mgps/customview/TabPageIndicator;

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->Y()V

    .line 186
    .line 187
    .line 188
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/a;->R()V

    .line 189
    .line 190
    .line 191
    :goto_1
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xc8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->i:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->Y()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/a;->R()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
