.class Lcom/join/mgps/activity/HMCloudMainActivity$u;
.super Lcom/kongzue/dialogx/interfaces/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMainActivity;->chooseBestLine(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/r<",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;

.field final synthetic b:Lcom/join/mgps/activity/HMCloudMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity;ILcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "layoutResId",
            "val$serverInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$u;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/join/mgps/activity/HMCloudMainActivity$u;->a:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/interfaces/r;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic d(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity$u;->lambda$onBind$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/activity/HMCloudMainActivity$u;Lcom/join/mgps/adapter/k;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/activity/HMCloudMainActivity$u;->f(Lcom/join/mgps/adapter/k;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic f(Lcom/join/mgps/adapter/k;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1, p5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 6
    .line 7
    iget-object p4, p0, Lcom/join/mgps/activity/HMCloudMainActivity$u;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 8
    .line 9
    invoke-static {p4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    invoke-virtual {p5, p3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W0(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/k;->k(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Z

    .line 25
    .line 26
    .line 27
    move-result p5

    .line 28
    if-nez p5, :cond_2

    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getState()Lcom/wufan/user/service/protobuf/enumeration/ServerState;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/ServerState;->SERVER_LINE_STOP:Lcom/wufan/user/service/protobuf/enumeration/ServerState;

    .line 35
    .line 36
    if-ne p5, v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getIsVip()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    invoke-static {p4}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_1

    .line 53
    .line 54
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    sget-object p2, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    sget-object p3, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iget-object p2, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$u;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->openChargeVip(Lcom/join/mgps/dto/ExtBean;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/k;->m(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, p3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Q0(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_3

    .line 124
    .line 125
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, p3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->L(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$u;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 133
    .line 134
    const/4 p2, 0x2

    .line 135
    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/activity/HMCloudMainActivity;->updateLineUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;I)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 140
    .line 141
    .line 142
    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$onBind$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "v"
        }
    .end annotation

    const v0, 0x7f0a09fe

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a145c

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance v1, Lcom/join/mgps/activity/p4;

    invoke-direct {v1, p1}, Lcom/join/mgps/activity/p4;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/k;

    invoke-direct {v0}, Lcom/join/mgps/adapter/k;-><init>()V

    .line 6
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$u;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$u$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$u$a;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity$u;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$u;->a:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;->getListInfoList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$u;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/HMCloudMainActivity;->curServerId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/join/mgps/adapter/k;->m(Ljava/lang/String;)V

    .line 11
    new-instance p2, Lcom/join/mgps/activity/q4;

    invoke-direct {p2, p0, v0, p1}, Lcom/join/mgps/activity/q4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity$u;Lcom/join/mgps/adapter/k;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dialog",
            "v"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity$u;->onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method
