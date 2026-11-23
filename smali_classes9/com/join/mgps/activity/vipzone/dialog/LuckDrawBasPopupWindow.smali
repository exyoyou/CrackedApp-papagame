.class public Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
.super Lcom/join/mgps/customview/v;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DrawPrizeHolder;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$RuleHolder;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$OnGameOperateListener;
    }
.end annotation


# instance fields
.field Luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

.field adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

.field closed:Landroid/view/View;

.field dataMainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field historyTitle:Landroid/view/View;

.field nullHistory:Landroid/view/View;

.field page:I

.field recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

.field title:Landroid/widget/TextView;

.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "type",
            "height"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/v;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    .line 12
    .line 13
    iput p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->height:I

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 21
    .line 22
    iput p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    .line 23
    .line 24
    iput p3, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->height:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->init()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->getHistory(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private getHistory(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "pn"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

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
    invoke-virtual {v1, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v1, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUserToken(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p2, v0}, Lb7/i;->J1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;

    .line 56
    .line 57
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d065a

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, -0x2

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 29
    .line 30
    const v1, 0x7f0a1345

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 42
    .line 43
    const v1, 0x7f0a080f

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 53
    .line 54
    const v1, 0x7f0a03b8

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->closed:Landroid/view/View;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 64
    .line 65
    const v1, 0x7f0a1173

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->nullHistory:Landroid/view/View;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 75
    .line 76
    const v1, 0x7f0a1767

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->title:Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 93
    .line 94
    iget v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    .line 95
    .line 96
    const/4 v1, 0x3

    .line 97
    const/4 v2, 0x1

    .line 98
    if-ne v0, v2, :cond_0

    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 101
    .line 102
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const/4 v3, 0x2

    .line 114
    if-ne v0, v3, :cond_1

    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 122
    .line 123
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    if-ne v0, v1, :cond_2

    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 137
    .line 138
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    .line 156
    iget v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->height:I

    .line 157
    .line 158
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->closed:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 178
    .line 179
    new-instance v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;

    .line 180
    .line 181
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a03b8

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->onClickClosed(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public onClickClosed(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public show(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/Luckbean;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "luckbean",
            "type"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->Luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 2
    .line 3
    iput p3, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    .line 4
    .line 5
    const/16 v0, 0x50

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/v;->showAtLocation(Landroid/view/View;III)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x8

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p3, v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->title:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v1, "\u5956\u54c1\u6c60"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getPrize_list()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/LuckPrizeBean;

    .line 47
    .line 48
    new-instance v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    .line 51
    .line 52
    .line 53
    iput p3, v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->type:I

    .line 54
    .line 55
    iput-object v0, v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    const/4 v2, 0x2

    .line 75
    if-ne p3, v2, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->title:Landroid/widget/TextView;

    .line 83
    .line 84
    const-string p2, "\u4e2d\u5956\u8bb0\u5f55"

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 90
    .line 91
    iget p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    .line 92
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->getHistory(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    const/4 v0, 0x3

    .line 103
    if-ne p3, v0, :cond_4

    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->title:Landroid/widget/TextView;

    .line 111
    .line 112
    const-string v1, "\u6d3b\u52a8\u89c4\u5219"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getRule()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_3

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Ljava/lang/String;

    .line 141
    .line 142
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    .line 145
    .line 146
    .line 147
    iput p3, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->type:I

    .line 148
    .line 149
    iput-object p2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    .line 150
    .line 151
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 160
    .line 161
    .line 162
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 163
    .line 164
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 165
    .line 166
    .line 167
    return-void
.end method
