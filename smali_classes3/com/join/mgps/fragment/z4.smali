.class public Lcom/join/mgps/fragment/z4;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/q;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02d4
.end annotation


# instance fields
.field A:Ljava/lang/String;

.field B:Lcom/join/mgps/dto/ExtBean;

.field private C:I

.field private D:Z

.field E:Lcom/join/mgps/dto/ExtBean;

.field final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field private G:I

.field private H:I

.field I:Landroid/os/Handler;

.field J:Ljava/lang/Runnable;

.field K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private L:Z

.field M:Landroid/view/View;

.field N:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/join/mgps/adapter/j6;

.field f:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/join/mgps/rpc/e;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:I

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field private z:Lcom/join/mgps/dto/RecomDatabean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/join/mgps/fragment/z4;->n:I

    .line 16
    .line 17
    iput v1, p0, Lcom/join/mgps/fragment/z4;->o:I

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/join/mgps/fragment/z4;->p:Z

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/fragment/z4;->q:I

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 26
    .line 27
    iput v1, p0, Lcom/join/mgps/fragment/z4;->s:I

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/join/mgps/fragment/z4;->u:Z

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->y:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->A:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/join/mgps/fragment/z4;->C:I

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/join/mgps/fragment/z4;->D:Z

    .line 43
    .line 44
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    iput v1, p0, Lcom/join/mgps/fragment/z4;->G:I

    .line 59
    .line 60
    iput v1, p0, Lcom/join/mgps/fragment/z4;->H:I

    .line 61
    .line 62
    new-instance v0, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->I:Landroid/os/Handler;

    .line 68
    .line 69
    new-instance v0, Lcom/join/mgps/fragment/y4;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/y4;-><init>(Lcom/join/mgps/fragment/z4;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->J:Ljava/lang/Runnable;

    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->K:Ljava/util/List;

    .line 82
    .line 83
    iput-boolean v1, p0, Lcom/join/mgps/fragment/z4;->L:Z

    .line 84
    .line 85
    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/fragment/z4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/z4;->k0()V

    return-void
.end method

.method public static synthetic P(Lcom/join/mgps/fragment/z4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/z4;->expDiscountGame()V

    return-void
.end method

.method public static synthetic Q(Lcom/join/mgps/fragment/z4;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->j0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic R(Lcom/join/mgps/fragment/z4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/z4;->expDiscountGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S(Lcom/join/mgps/fragment/z4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic U(Lcom/join/mgps/fragment/z4;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/z4;->p:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic V(Lcom/join/mgps/fragment/z4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/z4;->n:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic W(Lcom/join/mgps/fragment/z4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/z4;->o:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic X(Lcom/join/mgps/fragment/z4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/z4;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Y(Lcom/join/mgps/fragment/z4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/z4;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/z4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/z4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c0(Lcom/join/mgps/fragment/z4;)Lcom/join/mgps/adapter/j6;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d0(Lcom/join/mgps/fragment/z4;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private expDiscountGame()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/fragment/z4;->D:Z

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/join/mgps/fragment/z4;->L:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/fragment/z4;->L:Z

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->getLastVisiblePosition()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-gt v3, v2, :cond_2

    .line 21
    .line 22
    iget-object v4, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->o2(Lcom/join/mgps/dto/CollectionBeanSub;)Z

    .line 40
    .line 41
    .line 42
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    :try_start_1
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 46
    .line 47
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v6, "discount_game"

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 64
    .line 65
    .line 66
    new-instance v6, Lcom/papa/sim/statistic/Data;

    .line 67
    .line 68
    invoke-direct {v6}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 76
    .line 77
    .line 78
    iget-object v7, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 85
    .line 86
    invoke-virtual {v7, v8, v5, v6}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v5

    .line 91
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    sget-object v6, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v5, v6, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .line 116
    .line 117
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v1

    .line 121
    iput-boolean v0, p0, Lcom/join/mgps/fragment/z4;->L:Z

    .line 122
    .line 123
    throw v1

    .line 124
    :catch_1
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/z4;->L:Z

    .line 125
    .line 126
    return-void
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->z:Lcom/join/mgps/dto/RecomDatabean;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->z:Lcom/join/mgps/dto/RecomDatabean;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->z:Lcom/join/mgps/dto/RecomDatabean;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private synthetic k0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/z4;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static m0(Ljava/lang/String;Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "title",
            "pageIndex",
            "parentExtBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/RankingItemFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/RankingItemFragment_;-><init>()V

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
    const-string v2, "type"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "title"

    .line 17
    .line 18
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "pageIndex"

    .line 22
    .line 23
    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string p0, "parentExtBean"

    .line 27
    .line 28
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public static n0(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromHome",
            "type",
            "title",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/RankingItemFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/RankingItemFragment_;-><init>()V

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
    const-string v2, "type"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "fromHome"

    .line 17
    .line 18
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    const-string p0, "title"

    .line 22
    .line 23
    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "datas"

    .line 27
    .line 28
    check-cast p3, Ljava/io/Serializable;

    .line 29
    .line 30
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    return-object v0
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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->y0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
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
    :try_start_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->y0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->y0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->y0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private s0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_3

    .line 9
    .line 10
    iget v1, p0, Lcom/join/mgps/fragment/z4;->n:I

    .line 11
    .line 12
    if-gt v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/join/mgps/fragment/z4;->v:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v1, "home"

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string v1, "ranking"

    .line 30
    .line 31
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v0, 0x1

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->K:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->K:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
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
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 25
    .line 26
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return-void
.end method

.method private updateProgressPartly()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/z4;->o:I

    .line 2
    .line 3
    if-ltz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/fragment/z4;->n:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_3

    .line 14
    .line 15
    iget v0, p0, Lcom/join/mgps/fragment/z4;->o:I

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/z4;->n:I

    .line 18
    .line 19
    if-gt v0, v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq v2, v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/16 v3, 0xc

    .line 50
    .line 51
    if-ne v2, v3, :cond_2

    .line 52
    .line 53
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 54
    .line 55
    iget v3, p0, Lcom/join/mgps/fragment/z4;->o:I

    .line 56
    .line 57
    sub-int v3, v0, v3

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-object v3, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    instance-of v3, v2, Lv2/c;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    check-cast v2, Lv2/c;

    .line 76
    .line 77
    const v3, 0x7f0a054e

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Lv2/c;->getView(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/join/mgps/customview/DownloadNormalView;

    .line 85
    .line 86
    :try_start_0
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    long-to-int v1, v3

    .line 91
    int-to-long v3, v1

    .line 92
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    return-void
.end method

.method private y0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    .line 19
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->h0()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->l:Lcom/join/mgps/rpc/e;

    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->h:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const v1, 0x7f060021

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/adapter/j6;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/join/mgps/adapter/j6;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 52
    .line 53
    const-string v2, "0"

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/j6;->o(I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-boolean v1, p0, Lcom/join/mgps/fragment/z4;->v:Z

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/join/mgps/adapter/j6;->n()V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 77
    .line 78
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-direct {v2, v3, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 99
    .line 100
    const/16 v2, 0x14

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 106
    .line 107
    new-instance v2, Lcom/join/mgps/fragment/z4$a;

    .line 108
    .line 109
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/z4$a;-><init>(Lcom/join/mgps/fragment/z4;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->showLoding()V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->w:Ljava/util/List;

    .line 119
    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->w:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_2

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 144
    .line 145
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/fragment/z4;->showMain(Ljava/util/List;Z)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 155
    .line 156
    .line 157
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 158
    .line 159
    new-instance v1, Lcom/join/mgps/fragment/z4$b;

    .line 160
    .line 161
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/z4$b;-><init>(Lcom/join/mgps/fragment/z4;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 168
    .line 169
    new-instance v1, Lcom/join/mgps/fragment/z4$c;

    .line 170
    .line 171
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/z4$c;-><init>(Lcom/join/mgps/fragment/z4;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method e0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/fragment/z4;->g0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameType",
            "romType",
            "sort_type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    iget v6, p0, Lcom/join/mgps/fragment/z4;->q:I

    .line 12
    .line 13
    move-object v4, p1

    .line 14
    move-object v5, p2

    .line 15
    move-object v7, p3

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameListRequestBean(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method g0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameType",
            "romType",
            "refresh"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->w:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x0

    .line 13
    if-eqz p1, :cond_8

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/fragment/z4;->u:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, p1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 41
    .line 42
    invoke-direct {v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setType(I)V

    .line 52
    .line 53
    .line 54
    iget v3, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v2, v1}, Lb7/i;->F1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/join/mgps/dto/ResponseModel;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    sub-int/2addr v3, p1

    .line 112
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 113
    .line 114
    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lcom/join/mgps/dto/RankingMainDataBean;

    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/join/mgps/dto/RankingMainDataBean;->getRank_list()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Lcom/join/mgps/dto/RankingMainDataBean;

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/join/mgps/dto/RankingMainDataBean;->getRank_type()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Lcom/join/mgps/dto/RankingMainDataBean;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/join/mgps/dto/RankingMainDataBean;->getRank_type()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-lez v3, :cond_2

    .line 160
    .line 161
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    .line 162
    .line 163
    iget-object v4, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 164
    .line 165
    invoke-direct {v3, v4}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->rankingMenu2()Lorg/androidannotations/api/sharedpreferences/p;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Lcom/join/mgps/dto/RankingMainDataBean;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/join/mgps/dto/RankingMainDataBean;->getRank_type()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v3, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_1
    const/4 v2, 0x0

    .line 191
    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const/4 v2, 0x0

    .line 198
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_4

    .line 203
    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 209
    .line 210
    add-int/2addr v2, p1

    .line 211
    iget-boolean v4, p0, Lcom/join/mgps/fragment/z4;->v:Z

    .line 212
    .line 213
    if-eqz v4, :cond_3

    .line 214
    .line 215
    const/4 v4, 0x3

    .line 216
    if-le v2, v4, :cond_3

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->o0()V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_3
    iget v4, p0, Lcom/join/mgps/fragment/z4;->H:I

    .line 223
    .line 224
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 225
    .line 226
    .line 227
    iget v4, p0, Lcom/join/mgps/fragment/z4;->G:I

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    iget-object v5, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 237
    .line 238
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 239
    .line 240
    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    iget-object v5, p0, Lcom/join/mgps/fragment/z4;->A:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v5, "-ranking-"

    .line 252
    .line 253
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    add-int/2addr v5, v2

    .line 261
    add-int/2addr v5, p1

    .line 262
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-lez v1, :cond_5

    .line 281
    .line 282
    invoke-virtual {p0, v0, p3}, Lcom/join/mgps/fragment/z4;->showMain(Ljava/util/List;Z)V

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_5
    iget p3, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 287
    .line 288
    if-ne p3, p1, :cond_6

    .line 289
    .line 290
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 291
    .line 292
    .line 293
    move-result p3

    .line 294
    if-nez p3, :cond_6

    .line 295
    .line 296
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/z4;->x0(Z)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->o0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :catchall_0
    move-exception p1

    .line 305
    goto :goto_4

    .line 306
    :catch_0
    move-exception p3

    .line 307
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    sub-int/2addr v2, p1

    .line 314
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    .line 319
    .line 320
    iget p3, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 321
    .line 322
    if-ne p3, p1, :cond_7

    .line 323
    .line 324
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-nez p1, :cond_7

    .line 329
    .line 330
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/z4;->x0(Z)V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->o0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    .line 336
    .line 337
    :goto_3
    iput-boolean p2, p0, Lcom/join/mgps/fragment/z4;->u:Z

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :goto_4
    iput-boolean p2, p0, Lcom/join/mgps/fragment/z4;->u:Z

    .line 341
    .line 342
    throw p1

    .line 343
    :cond_8
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/z4;->x0(Z)V

    .line 344
    .line 345
    .line 346
    :goto_5
    return-void
.end method

.method h0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "type"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "pageIndex"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lcom/join/mgps/fragment/z4;->C:I

    .line 23
    .line 24
    const-string v1, "fromHome"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput-boolean v1, p0, Lcom/join/mgps/fragment/z4;->v:Z

    .line 31
    .line 32
    const-string v1, "title"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/join/mgps/fragment/z4;->y:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "parentExtBean"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/join/mgps/fragment/z4;->B:Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    const-string v1, "datas"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/util/List;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->w:Ljava/util/List;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->B:Lcom/join/mgps/dto/ExtBean;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 75
    .line 76
    sget-object v1, Lcom/papa/sim/statistic/EventP$FirstModel;->rankingList:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-object v1, Lcom/papa/sim/statistic/EventP$SecondModel;->rankingGroup:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 93
    .line 94
    .line 95
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/z4;->v:Z

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    const-string v0, "home"

    .line 100
    .line 101
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->A:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const-string v0, "ranking"

    .line 105
    .line 106
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->A:Ljava/lang/String;

    .line 107
    .line 108
    :goto_1
    const-string v0, "1"

    .line 109
    .line 110
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    const/16 v0, 0x2a97

    .line 119
    .line 120
    iput v0, p0, Lcom/join/mgps/fragment/z4;->G:I

    .line 121
    .line 122
    iput v0, p0, Lcom/join/mgps/fragment/z4;->H:I

    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 125
    .line 126
    const-string v1, "10017"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 129
    .line 130
    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :cond_3
    const-string v0, "2"

    .line 134
    .line 135
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    const/16 v0, 0x2a96

    .line 144
    .line 145
    iput v0, p0, Lcom/join/mgps/fragment/z4;->G:I

    .line 146
    .line 147
    iput v0, p0, Lcom/join/mgps/fragment/z4;->H:I

    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 150
    .line 151
    const-string v1, "10018"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    const-string v0, "3"

    .line 158
    .line 159
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    const/16 v0, 0x2a95

    .line 168
    .line 169
    iput v0, p0, Lcom/join/mgps/fragment/z4;->G:I

    .line 170
    .line 171
    iput v0, p0, Lcom/join/mgps/fragment/z4;->H:I

    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 174
    .line 175
    const-string v1, "10019"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    const-string v0, "6"

    .line 182
    .line 183
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_6

    .line 190
    .line 191
    const/16 v0, 0x2a98

    .line 192
    .line 193
    iput v0, p0, Lcom/join/mgps/fragment/z4;->G:I

    .line 194
    .line 195
    iput v0, p0, Lcom/join/mgps/fragment/z4;->H:I

    .line 196
    .line 197
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 198
    .line 199
    const-string v1, "10016"

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    const-string v0, "7"

    .line 206
    .line 207
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_7

    .line 214
    .line 215
    const/16 v0, 0x2a99

    .line 216
    .line 217
    iput v0, p0, Lcom/join/mgps/fragment/z4;->G:I

    .line 218
    .line 219
    iput v0, p0, Lcom/join/mgps/fragment/z4;->H:I

    .line 220
    .line 221
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 222
    .line 223
    const-string v1, "10014"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_7
    const-string v0, "8"

    .line 230
    .line 231
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_8

    .line 238
    .line 239
    const/16 v0, 0x2a9a

    .line 240
    .line 241
    iput v0, p0, Lcom/join/mgps/fragment/z4;->G:I

    .line 242
    .line 243
    iput v0, p0, Lcom/join/mgps/fragment/z4;->H:I

    .line 244
    .line 245
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 246
    .line 247
    const-string v1, "10015"

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 250
    .line 251
    .line 252
    :cond_8
    :goto_2
    return-void
.end method

.method i0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->M:Landroid/view/View;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 25
    .line 26
    iput-boolean v3, v0, Lcom/join/mgps/adapter/j6;->g:Z

    .line 27
    .line 28
    iput-object v2, p0, Lcom/join/mgps/fragment/z4;->M:Landroid/view/View;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->z:Lcom/join/mgps/dto/RecomDatabean;

    .line 32
    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->z:Lcom/join/mgps/dto/RecomDatabean;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->z:Lcom/join/mgps/dto/RecomDatabean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->M:Landroid/view/View;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const v1, 0x7f0d0605

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->M:Landroid/view/View;

    .line 81
    .line 82
    const v1, 0x7f0a044e

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/fragment/z4;->N:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->M:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->addHeaderView(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    iput-boolean v1, v0, Lcom/join/mgps/adapter/j6;->g:Z

    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->N:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->z:Lcom/join/mgps/dto/RecomDatabean;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->z:Lcom/join/mgps/dto/RecomDatabean;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    goto :goto_0

    .line 126
    :cond_4
    const-string v1, ""

    .line 127
    .line 128
    :goto_0
    const v2, 0x7f080aef

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->M:Landroid/view/View;

    .line 135
    .line 136
    new-instance v1, Lcom/join/mgps/fragment/w4;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/w4;-><init>(Lcom/join/mgps/fragment/z4;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    return-void
.end method

.method l0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1, v2, v0}, Lcom/join/mgps/fragment/z4;->g0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected lazyLoad()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->e0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lcom/join/mgps/fragment/z4;->G:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v2, Lcom/papa/sim/statistic/Event;->goGameRankGame:Lcom/papa/sim/statistic/Event;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method o0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
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
    if-eq p1, v1, :cond_5

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq p1, v2, :cond_4

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq p1, v1, :cond_3

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eq p1, v3, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x7

    .line 22
    if-eq p1, v3, :cond_1

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    if-eq p1, v2, :cond_0

    .line 27
    .line 28
    const/16 v4, 0x30

    .line 29
    .line 30
    if-eq p1, v4, :cond_3

    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_0
    const/16 p1, 0x9

    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/z4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/z4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/z4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/fragment/z4;->p:Z

    .line 51
    .line 52
    if-nez p1, :cond_6

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/join/mgps/fragment/z4;->updateProgressPartly()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/z4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/z4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/z4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/z4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/z4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 76
    .line 77
    .line 78
    :cond_6
    :goto_0
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

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

.method public onPageVisible(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/z4;->C:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/fragment/z4;->D:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v3, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1, v0, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/join/mgps/fragment/z4;->expDiscountGame()V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method p0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/z4;->q:I

    .line 2
    .line 3
    const/16 v1, 0x3e9

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method q0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public r0(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultdatas",
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->w:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/z4;->w:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/z4;->showMain(Ljava/util/List;Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method relodingimag()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->showLoding()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2, v0}, Lcom/join/mgps/fragment/z4;->g0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->h:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->i:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->j:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method showMain(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subList",
            "refresh"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->i:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->h:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->j:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopLoadMore()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 51
    .line 52
    .line 53
    :cond_5
    iget v0, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    if-ne v0, v1, :cond_6

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->i0()V

    .line 64
    .line 65
    .line 66
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/join/mgps/fragment/z4;->E:Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->updateDownStateList(Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 101
    .line 102
    if-eqz v0, :cond_a

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 113
    .line 114
    .line 115
    :cond_8
    if-eqz p2, :cond_9

    .line 116
    .line 117
    iget-object p2, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 124
    .line 125
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addAll(Ljava/util/Collection;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->getLastVisiblePosition()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iget-object p2, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    sub-int/2addr p2, v1

    .line 145
    if-ne p1, p2, :cond_a

    .line 146
    .line 147
    iget p1, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 148
    .line 149
    if-ne p1, v1, :cond_a

    .line 150
    .line 151
    iget-boolean p1, p0, Lcom/join/mgps/fragment/z4;->D:Z

    .line 152
    .line 153
    if-eqz p1, :cond_a

    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 156
    .line 157
    new-instance p2, Lcom/join/mgps/fragment/x4;

    .line 158
    .line 159
    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/x4;-><init>(Lcom/join/mgps/fragment/z4;)V

    .line 160
    .line 161
    .line 162
    const-wide/16 v0, 0x1f4

    .line 163
    .line 164
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :cond_a
    :goto_2
    return-void
.end method

.method t0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public u0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->reset()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->showLoding()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, p1}, Lcom/join/mgps/fragment/z4;->g0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z4;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method public v0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "romType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->reset()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->showLoding()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1, p1}, Lcom/join/mgps/fragment/z4;->g0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public w0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameType",
            "romType"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->reset()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z4;->showLoding()V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/join/mgps/fragment/z4;->e:Lcom/join/mgps/adapter/j6;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/fragment/z4;->r:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->t:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, p2, v0, p1}, Lcom/join/mgps/fragment/z4;->g0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method x0(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNormal"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopLoadMore()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-nez p1, :cond_5

    .line 18
    .line 19
    iget p1, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 20
    .line 21
    if-ne p1, v1, :cond_4

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_4

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->i:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->h:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->j:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    if-eqz p1, :cond_9

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->c:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const v0, 0x7f12031e

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    if-eqz p1, :cond_9

    .line 83
    .line 84
    iget p1, p0, Lcom/join/mgps/fragment/z4;->m:I

    .line 85
    .line 86
    if-ne p1, v1, :cond_9

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->d:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_9

    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->i:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->h:Landroid/widget/LinearLayout;

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 111
    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/z4;->j:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    if-eqz p1, :cond_9

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_9
    :goto_0
    return-void
.end method
