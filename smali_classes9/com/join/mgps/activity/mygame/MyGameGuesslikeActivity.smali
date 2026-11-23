.class public Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0771
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->title_textview:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u731c\u4f60\u559c\u6b22"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->showLoadingLayoutBase()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->getDownloadRecomedData()V

    .line 14
    .line 15
    .line 16
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

.method getDownloadRecomedData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "0"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v4, "2"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setDataType(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setUid(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setToken(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0, v2}, Lb7/i;->K1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;-><init>(Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public getLoadingLayoutResID()I
    .locals 1

    const v0, 0x7f0a0fee

    return v0
.end method

.method public loadDataBase()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->getDownloadRecomedData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showGuesslike(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "3"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    const-string v1, "0"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lcom/papa/sim/statistic/Event;->showGuessYouLike:Lcom/papa/sim/statistic/Event;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->hideLoadingLayoutBase()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 64
    .line 65
    new-instance v2, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 66
    .line 67
    invoke-direct {v2, v3, v1}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const/4 v2, 0x3

    .line 79
    invoke-direct {p1, v1, v0, v2}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
