.class public Lcom/join/mgps/fragment/b1;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/b1$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0294
.end annotation


# instance fields
.field c:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:I
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field e:Lcom/join/mgps/dto/EndGameNameListBean;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field private f:Lcom/join/android/app/component/video/c;

.field private g:Lcom/join/mgps/fragment/b1$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/b1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/b1;->O(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/b1;)Lcom/join/android/app/component/video/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/b1;->f:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private O(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endGameId"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setEndId(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/b1;->e:Lcom/join/mgps/dto/EndGameNameListBean;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameNameListBean;->getGameId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickEndGameDetail:Lcom/papa/sim/statistic/Event;

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0, p1}, Lcom/papa/sim/statistic/t;->i0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b1;->f:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->H()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method afterviews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "EndGameDiscoveryFragment"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v3, p0, Lcom/join/mgps/fragment/b1;->d:I

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/fragment/b1;->f:Lcom/join/android/app/component/video/c;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/b1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/fragment/b1$c;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/fragment/b1;->e:Lcom/join/mgps/dto/EndGameNameListBean;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameNameListBean;->getGameEndgameVo()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/b1$c;-><init>(Lcom/join/mgps/fragment/b1;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/fragment/b1;->g:Lcom/join/mgps/fragment/b1$c;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/fragment/b1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/fragment/b1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/fragment/b1;->g:Lcom/join/mgps/fragment/b1$c;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const v3, 0x7f0d0256

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/fragment/b1;->g:Lcom/join/mgps/fragment/b1$c;

    .line 92
    .line 93
    new-instance v1, Lcom/join/mgps/fragment/b1$a;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/b1$a;-><init>(Lcom/join/mgps/fragment/b1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/fragment/b1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    new-instance v1, Lcom/join/mgps/fragment/b1$b;

    .line 104
    .line 105
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/b1$b;-><init>(Lcom/join/mgps/fragment/b1;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b1;->autoPlay()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method autoPlay()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

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
    iget-object v0, p0, Lcom/join/mgps/fragment/b1;->f:Lcom/join/android/app/component/video/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->F()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/b1;->f:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b1;->P()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b1;->P()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/b1;->f:Lcom/join/android/app/component/video/c;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->G()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method showTost(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
