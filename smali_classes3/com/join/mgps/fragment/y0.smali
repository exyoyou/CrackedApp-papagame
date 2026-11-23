.class public Lcom/join/mgps/fragment/y0;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/y0$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0293
.end annotation


# instance fields
.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/join/mgps/dto/EndGameDetailBean;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field private m:Landroid/content/Context;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/join/mgps/fragment/y0$c;

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/y0;->p:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/fragment/y0;Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/y0;->U(Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;Landroid/view/View;)V

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/y0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/y0;->p:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/y0;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/y0;->p:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/fragment/y0;->p:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/y0;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y0;->R(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/y0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/y0;->m:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private R(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mills"
        }
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 3
    .line 4
    div-float/2addr p1, v0

    .line 5
    const/high16 v0, 0x42700000    # 60.0f

    .line 6
    .line 7
    const-string v1, "\u79d2"

    .line 8
    .line 9
    cmpg-float v0, p1, v0

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/text/DecimalFormat;

    .line 19
    .line 20
    const-string v3, "0.00"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    float-to-double v3, p1

    .line 26
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    float-to-int p1, p1

    .line 42
    div-int/lit8 v0, p1, 0x3c

    .line 43
    .line 44
    rem-int/lit8 p1, p1, 0x3c

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, "\u5206"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method private synthetic U(Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y0;->T(Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method S(I)V
    .locals 2
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/dto/RequestEndGameDetailArgs;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestEndGameDetailArgs;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameDetailArgs;->setGameId(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameDetailArgs;->setEndgameId(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameDetailArgs;->setUid(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestEndGameDetailArgs;->setPage(I)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Lcom/join/mgps/rpc/impl/i;->a0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/16 v1, 0xc8

    .line 94
    .line 95
    if-ne v0, v1, :cond_1

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/util/List;

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y0;->updateUi(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const v0, 0x7f12031e

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y0;->showTost(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method T(Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
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
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/dto/EndGameRecordArgs;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/EndGameRecordArgs;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/EndGameRecordArgs;->setEndgameId(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/EndGameRecordArgs;->setUid(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getChallengeId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/EndGameRecordArgs;->setChallengeId(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getUid()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/EndGameRecordArgs;->setOwnerUid(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 59
    .line 60
    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Lcom/join/mgps/rpc/impl/i;->H0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/16 v1, 0xc8

    .line 92
    .line 93
    if-ne v0, v1, :cond_0

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y0;->V(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const-string p1, "\u83b7\u53d6\u56de\u653e\u5730\u5740\u5931\u8d25"

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y0;->showTost(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const v0, 0x7f12031e

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y0;->showTost(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x5

    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/join/mgps/Util/z;->j:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "/record/"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/fragment/y0;->m:Landroid/content/Context;

    .line 55
    .line 56
    const-string v0, "\u56de\u653e\u5931\u8d25\uff01"

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-string v1, "/"

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-instance v2, Ljava/io/File;

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y0;->X(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lcom/join/android/app/common/http/d;->B()Lcom/join/android/app/common/http/d$j;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance v2, Lcom/join/mgps/fragment/y0$b;

    .line 118
    .line 119
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/y0$b;-><init>(Lcom/join/mgps/fragment/y0;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1, v0, v2}, Lcom/join/android/app/common/http/d$j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void

    .line 126
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity_$f;->a(Lcom/join/mgps/dto/EndGameBean;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const/16 v1, 0xf

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity_$f;->d(I)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/EndGameLaunchActivity_$f;->c(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public W(Lcom/join/mgps/dto/EndGameDetailBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/y0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/join/mgps/fragment/y0;->p:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y0;->afterviews()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method X(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->m:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/16 v3, 0xf

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    move-object v4, p1

    .line 37
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/UtilsMy;->F4(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method afterviews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/y0;->m:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean;->getRankingList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/y0;->n:Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->m:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/join/mgps/fragment/y0$c;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->n:Ljava/util/List;

    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/y0$c;-><init>(Lcom/join/mgps/fragment/y0;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/mgps/fragment/y0;->o:Lcom/join/mgps/fragment/y0$c;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->m:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v2, 0x7f0d0256

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->o:Lcom/join/mgps/fragment/y0$c;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->o:Lcom/join/mgps/fragment/y0$c;

    .line 68
    .line 69
    new-instance v1, Lcom/join/mgps/fragment/y0$a;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/y0$a;-><init>(Lcom/join/mgps/fragment/y0;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$l;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->l:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean;->getMyRankings()Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x4

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->j:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->j:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    const-string v3, "#FAFAFA"

    .line 96
    .line 97
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->c:Landroid/widget/TextView;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v5, "\u7b2c"

    .line 112
    .line 113
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getRanking()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v5, "\u540d"

    .line 124
    .line 125
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getAvatar()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->e:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getNickname()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->f:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getElapsedTime()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-direct {p0, v3}, Lcom/join/mgps/fragment/y0;->R(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->g:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getChange()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    iget-object v2, p0, Lcom/join/mgps/fragment/y0;->k:Landroid/widget/ImageView;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->isPlayback()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_0

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_0
    const/4 v4, 0x4

    .line 189
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Lcom/join/mgps/fragment/y0;->k:Landroid/widget/ImageView;

    .line 193
    .line 194
    new-instance v2, Lcom/join/mgps/fragment/x0;

    .line 195
    .line 196
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/fragment/x0;-><init>(Lcom/join/mgps/fragment/y0;Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->c:Landroid/widget/TextView;

    .line 204
    .line 205
    const-string v2, "--"

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->e:Landroid/widget/TextView;

    .line 232
    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->f:Landroid/widget/TextView;

    .line 253
    .line 254
    const-string v3, "\u6682\u65e0\u8bb0\u5f55"

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->g:Landroid/widget/TextView;

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->j:Landroid/widget/RelativeLayout;

    .line 265
    .line 266
    const/16 v2, 0x8

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->k:Landroid/widget/ImageView;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    :goto_1
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

.method updateUi(Ljava/util/List;)V
    .locals 1
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
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->o:Lcom/join/mgps/fragment/y0$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y0;->o:Lcom/join/mgps/fragment/y0$c;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/y0;->o:Lcom/join/mgps/fragment/y0$c;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd(Z)V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method
