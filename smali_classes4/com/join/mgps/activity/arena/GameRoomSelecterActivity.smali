.class public Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;,
        Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;,
        Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0784
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

.field context:Landroid/content/Context;

.field gameAdapter:Lcom/join/mgps/adapter/f2;

.field gameInfoBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field gameInfoListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field mGameInfo:Lcom/join/mgps/dto/GameInfoBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->gameInfoListData:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->finishActivityForGetConfigFailure()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private finishActivityForGetConfigFailure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private getGameTypeList()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/l;->m0()Lb7/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Lb7/k;->L(Ljava/lang/String;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$d;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$a;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->f(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    iput-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->context:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/adapter/f2;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->context:Landroid/content/Context;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/f2;-><init>(Landroid/content/Context;Z)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->gameAdapter:Lcom/join/mgps/adapter/f2;

    .line 55
    .line 56
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$b;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/f2;->f(Lcom/join/mgps/adapter/f2$e;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->gameAdapter:Lcom/join/mgps/adapter/f2;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/adapter/f2;->b()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->gameInfoBeanList:Ljava/util/List;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->gameAdapter:Lcom/join/mgps/adapter/f2;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->getGameConfig()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->getGameTypeList()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method getGameConfig()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x2

    .line 28
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestArenaRoomListArgs(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/d;->N1()Lb7/d;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1, v0}, Lb7/d;->h(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$c;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->finishActivityForGetConfigFailure()V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void
.end method
