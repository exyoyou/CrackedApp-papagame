.class public Lcom/join/mgps/activity/MyVoucherGameActivity;
.super Lcom/join/mgps/baseactivity/BaseLoadingActivity;
.source "SourceFile"

# interfaces
.implements Lw6/a$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0084
.end annotation


# instance fields
.field private ad:Lcom/join/mgps/dto/AccountVoucherAd;

.field gamrVoucherNumber:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listview:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mAdapter:Lcom/join/mgps/adapter/t4;

.field private mBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;"
        }
    .end annotation
.end field

.field mRpcAccountClient:Lcom/join/mgps/rpc/o;

.field mVoucher:Lcom/join/mgps/dto/AccountVoucher;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private pager:I

.field textTopRight:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field voucherGameDetail:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->pager:I

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/MyVoucherGameActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->pager:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$008(Lcom/join/mgps/activity/MyVoucherGameActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->pager:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->pager:I

    .line 6
    .line 7
    return v0
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/n;->i()Lcom/join/mgps/rpc/impl/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mRpcAccountClient:Lcom/join/mgps/rpc/o;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mBeans:Ljava/util/List;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->textTopRight:Landroid/widget/TextView;

    .line 22
    .line 23
    const v1, 0x7f120565

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/join/mgps/adapter/t4;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mBeans:Ljava/util/List;

    .line 32
    .line 33
    invoke-direct {v0, v1, p0}, Lcom/join/mgps/adapter/t4;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mAdapter:Lcom/join/mgps/adapter/t4;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 44
    .line 45
    new-instance v1, Lcom/join/mgps/activity/MyVoucherGameActivity$a;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity$a;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 54
    .line 55
    new-instance v1, Lcom/join/mgps/activity/MyVoucherGameActivity$b;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity$b;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->title_textview:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mVoucher:Lcom/join/mgps/dto/AccountVoucher;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucher;->getGame_name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Lw6/a;->a(Lw6/a$a;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->loadData()V

    .line 82
    .line 83
    .line 84
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

.method public getLoadingLayoutResID()I
    .locals 1

    const v0, 0x7f0a0e2f

    return v0
.end method

.method public loadData()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    .line 10
    .line 11
    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "uid"

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "token"

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string v2, "game_id"

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mVoucher:Lcom/join/mgps/dto/AccountVoucher;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountVoucher;->getGame_id()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-string v2, "page"

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget v4, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->pager:I

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v2, v0}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "limit"

    .line 97
    .line 98
    const-string v2, "10"

    .line 99
    .line 100
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mRpcAccountClient:Lcom/join/mgps/rpc/o;

    .line 104
    .line 105
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/o;->c(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getError()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    const/4 v2, 0x1

    .line 116
    if-nez v1, :cond_2

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Lcom/join/mgps/dto/ResultMyVoucherGameBean;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getCoupons()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lcom/join/mgps/dto/ResultMyVoucherGameBean;

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getHelp()Lcom/join/mgps/dto/AccountVoucherAd;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    iput-object v3, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->ad:Lcom/join/mgps/dto/AccountVoucherAd;

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-lez v3, :cond_1

    .line 147
    .line 148
    iget v3, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->pager:I

    .line 149
    .line 150
    if-ne v3, v2, :cond_0

    .line 151
    .line 152
    iget-object v2, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mBeans:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mBeans:Ljava/util/List;

    .line 158
    .line 159
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mBeans:Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    .line 167
    .line 168
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;

    .line 173
    .line 174
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->updateUi(Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->pager:I

    .line 179
    .line 180
    if-eq v0, v2, :cond_6

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->noMore()V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_2
    iget v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->pager:I

    .line 187
    .line 188
    if-ne v0, v2, :cond_3

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showLodingFailed()V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->noMore()V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showLodingFailed()V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showLodingFailed()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showNoNet()V

    .line 214
    .line 215
    .line 216
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->updateListFooter()V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method noMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAppMsgChange()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->pager:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->loadData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lw6/a;->d(Lw6/a$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method showLodingFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mBeans:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->showFailLayout()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method showNoNet()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const v0, 0x7f12031e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method textTopRight()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->ad:Lcom/join/mgps/dto/AccountVoucherAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->ad:Lcom/join/mgps/dto/AccountVoucherAd;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucherAd;->getLink()Lcom/join/mgps/dto/AccountVoucherAdBean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucherAdBean;->getLink_type_val()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->ad:Lcom/join/mgps/dto/AccountVoucherAd;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucherAd;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getMoney()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->voucherGameDetail:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->gamrVoucherNumber:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const v3, 0x7f120553

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, "<font color = \'#D33D3E\'>"

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getMoney()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getCount()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, "</font>"

    .line 51
    .line 52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    aput-object v4, v3, v1

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getMoney()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getMoney()D

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/4 v1, 0x1

    .line 88
    aput-object p1, v3, v1

    .line 89
    .line 90
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->voucherGameDetail:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const/16 v0, 0x8

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->hideLoadingLayout()V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mAdapter:Lcom/join/mgps/adapter/t4;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method voucherGameDetail()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mVoucher:Lcom/join/mgps/dto/AccountVoucher;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountVoucher;->getGame_id()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mVoucher:Lcom/join/mgps/dto/AccountVoucher;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucher;->getGame_tpl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->mVoucher:Lcom/join/mgps/dto/AccountVoucher;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucher;->getSp_tpl_two_position()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v1, p0

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
