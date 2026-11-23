.class public Lcom/join/mgps/activity/GivePraiceActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GivePraiceActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0069
.end annotation


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field adapter:Lcom/join/mgps/activity/GivePraiceActivity$d;

.field datas:Lcom/join/mgps/dto/ForumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumProfileMessageData;",
            ">;"
        }
    .end annotation
.end field

.field indexComment:Ljava/lang/String;

.field iv_nome:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;"
        }
    .end annotation
.end field

.field listData2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field listview:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_finsh:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_title:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field myswip:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pn:I

.field rpcClient:Lcom/join/mgps/rpc/i;

.field setNetwork:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method AfterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->rpcClient:Lcom/join/mgps/rpc/i;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity$d;-><init>(Lcom/join/mgps/activity/GivePraiceActivity;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->adapter:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->adapter:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "praice"

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->type:I

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLoding()V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->type:I

    .line 64
    .line 65
    if-ne v0, v2, :cond_0

    .line 66
    .line 67
    const-string v0, "\u5e16\u5b50:"

    .line 68
    .line 69
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->indexComment:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->getCommunityValue()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-string v0, "\u70b9\u8bc4:"

    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->indexComment:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->getValueComment()V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 83
    .line 84
    new-instance v1, Lcom/join/mgps/activity/GivePraiceActivity$a;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GivePraiceActivity$a;-><init>(Lcom/join/mgps/activity/GivePraiceActivity;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 93
    .line 94
    new-instance v1, Lcom/join/mgps/activity/GivePraiceActivity$b;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GivePraiceActivity$b;-><init>(Lcom/join/mgps/activity/GivePraiceActivity;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->ll_finsh:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    new-instance v1, Lcom/join/mgps/activity/GivePraiceActivity$c;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GivePraiceActivity$c;-><init>(Lcom/join/mgps/activity/GivePraiceActivity;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method Refresh()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method ShowTitle()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->ll_title:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method adapterNotifyData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->adapter:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method adapterNotifyData2(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->adapter:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method cleanNotifyData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->adapter:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method cleanNotifyData2(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listData2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->adapter:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method getCommunityValue()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/GivePraiceActivity;->rpcClient:Lcom/join/mgps/rpc/i;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lcom/join/mgps/activity/GivePraiceActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v5, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 30
    .line 31
    add-int/lit8 v6, v5, 0x1

    .line 32
    .line 33
    iput v6, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 34
    .line 35
    const/16 v6, 0xa

    .line 36
    .line 37
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/join/mgps/rpc/i;->r0(ILjava/lang/String;II)Lcom/join/mgps/dto/ForumResponse;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->updateListHeadAndFoot()V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_7

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/join/mgps/dto/ForumProfileMessageData;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lcom/join/mgps/dto/ForumProfileMessageData;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-lez v4, :cond_3

    .line 80
    .line 81
    iget v3, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 82
    .line 83
    if-ne v3, v1, :cond_0

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GivePraiceActivity;->cleanNotifyData(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageData;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-ge v1, v6, :cond_1

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageData;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_2

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 134
    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GivePraiceActivity;->adapterNotifyData(Ljava/util/List;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 147
    .line 148
    if-ne v0, v1, :cond_4

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->showNoData(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->showNoData(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLodingFailed()V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GivePraiceActivity;->showNoData(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLodingFailed()V

    .line 189
    .line 190
    .line 191
    :cond_7
    :goto_1
    return-void
.end method

.method getValueComment()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eqz v0, :cond_9

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v3, Lcom/join/mgps/rpc/h;->i:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, "/android/v2/message/praisenoticemessagelist"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget v4, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 41
    .line 42
    add-int/lit8 v5, v4, 0x1

    .line 43
    .line 44
    iput v5, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 45
    .line 46
    iget-object v5, p0, Lcom/join/mgps/activity/GivePraiceActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iget-object v6, p0, Lcom/join/mgps/activity/GivePraiceActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v3, v4, v5, v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getPraiceMessPra(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p0, Lcom/join/mgps/activity/GivePraiceActivity;->rpcClient:Lcom/join/mgps/rpc/i;

    .line 63
    .line 64
    invoke-interface {v4, v2, v3}, Lcom/join/mgps/rpc/i;->i(Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GivePriaceBean;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->updateListHeadAndFoot()V

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    if-eqz v2, :cond_7

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_5

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;->getData()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;->getData()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-lez v4, :cond_3

    .line 103
    .line 104
    iget v3, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 105
    .line 106
    if-ne v3, v1, :cond_0

    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GivePraiceActivity;->cleanNotifyData2(Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;->getData()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-ge v1, v3, :cond_1

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;->getData()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    .line 141
    .line 142
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    const/16 v2, 0xa

    .line 153
    .line 154
    if-ge v1, v2, :cond_2

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 157
    .line 158
    .line 159
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GivePraiceActivity;->adapterNotifyData2(Ljava/util/List;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 167
    .line 168
    if-ne v0, v1, :cond_4

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->showNoData(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_5
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 185
    .line 186
    if-ne v0, v1, :cond_6

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->showNoData(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_7
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 203
    .line 204
    if-ne v0, v1, :cond_8

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->showNoData(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_9
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GivePraiceActivity;->showNoData(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->hideLoadingView()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLodingFailed()V

    .line 232
    .line 233
    .line 234
    :goto_1
    return-void
.end method

.method hideLoadingView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setNoMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method showNoData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->myswip:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->iv_nome:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->myswip:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method showToast()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\u5e16\u5b50\u5df2\u5220\u9664"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method updateListHeadAndFoot()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
