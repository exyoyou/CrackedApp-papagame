.class public Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d08af
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

.field context:Landroid/content/Context;

.field isstruckting:Z

.field line:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

.field private prizeData:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

.field private prizeList:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

.field private prizeRule:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipCenterDataMains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;",
            ">;"
        }
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
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->showData(Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->startScratchPrize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeList:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeList:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeData:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeData:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeRule:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeRule:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    .line 3
    return-object p1
.end method

.method private addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipCenterGameListitem"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->getGame_list()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, p0, v2, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-direct {p1, p0, v1, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private getData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setUid(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setUserToken(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/join/mgps/Util/b;->vl(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    const/4 v2, 0x0

    .line 51
    :goto_0
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setVip(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1, v0}, Lb7/i;->b1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private showData(Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultData"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->loding_faile:Landroid/view/View;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->loding_layout:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getLuck_draw_info()Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getLuck_draw_info()Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getMod_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getGf_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getOs_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getCp_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "\u4f1a\u5458\u4e13\u4eab\u5408\u96c6"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->setTitle(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    .line 95
    .line 96
    const/4 v2, 0x3

    .line 97
    invoke-direct {v1, p0, v2, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    .line 106
    .line 107
    const/4 v1, 0x5

    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getMember_collection()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    new-instance p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    .line 121
    .line 122
    const/4 v0, 0x6

    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-direct {p1, p0, v0, v1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method private startScratchPrize()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUserToken(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1, v0}, Lb7/i;->I1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/Event;->visitMembercen:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->title_textview:Landroid/widget/TextView;

    .line 18
    .line 19
    const-string v1, "\u4f1a\u5458\u4e2d\u5fc3"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->title_textview:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f0713c2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->title_textview:Landroid/widget/TextView;

    .line 43
    .line 44
    const/16 v1, 0x11

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->line:Landroid/view/View;

    .line 72
    .line 73
    const/16 v1, 0x8

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->getData()V

    .line 79
    .line 80
    .line 81
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

.method delaysetStrcth(Lcom/join/mgps/customview/ScratchView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scratch"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ScratchView;->setCanCratch(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ScratchView;->setCanCratch(Z)V

    .line 21
    .line 22
    .line 23
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ScratchView;->setNumber(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ScratchView;->setNumber(I)V

    .line 36
    .line 37
    .line 38
    :goto_2
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->getData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
