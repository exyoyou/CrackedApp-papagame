.class public Lcom/join/mgps/fragment/o;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0289
.end annotation


# instance fields
.field c:Lcom/join/mgps/rpc/e;

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:I

.field private j:Landroid/widget/TextView;

.field private k:Landroid/content/Context;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/join/mgps/adapter/l;

.field private r:Lcom/join/mgps/adapter/m;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Lcom/join/mgps/customview/t;

.field private u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private v:Landroid/widget/TextView;

.field w:Landroid/os/Handler;

.field private x:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/fragment/o$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/o$a;-><init>(Lcom/join/mgps/fragment/o;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->w:Landroid/os/Handler;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/o;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/o;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/o;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/o;->m:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic P(Lcom/join/mgps/fragment/o;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/o;)Lcom/join/mgps/customview/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method S()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o;->l:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget v2, p0, Lcom/join/mgps/fragment/o;->m:I

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/o;->U(I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->c:Lcom/join/mgps/rpc/e;

    .line 20
    .line 21
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/e;->T(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageBean;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageBean;->getFlag()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "1"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageBean;->getMessages()Lcom/join/mgps/dto/GiftPackageMessageBean;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageMessageBean;->getData()Lcom/join/mgps/dto/GiftPackageMainDataInfoBean;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageMainDataInfoBean;->getUser()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageBean;->getMessages()Lcom/join/mgps/dto/GiftPackageMessageBean;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageMessageBean;->getData()Lcom/join/mgps/dto/GiftPackageMainDataInfoBean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageMainDataInfoBean;->getRecommend()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-lez v4, :cond_0

    .line 70
    .line 71
    iget v2, p0, Lcom/join/mgps/fragment/o;->m:I

    .line 72
    .line 73
    add-int/2addr v2, v0

    .line 74
    iput v2, p0, Lcom/join/mgps/fragment/o;->m:I

    .line 75
    .line 76
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/o;->showMain(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    if-eqz v2, :cond_1

    .line 81
    .line 82
    iget v3, p0, Lcom/join/mgps/fragment/o;->m:I

    .line 83
    .line 84
    if-ne v3, v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->p:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->p:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->showMain()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->W()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->W()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o;->l:Z

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->Y()V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o;->l:Z

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->Y()V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->W()V

    .line 127
    .line 128
    .line 129
    :goto_2
    return-void
.end method

.method T(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountBean",
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "\u9886\u53d6\u5931\u8d25"

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_game_id()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0, p1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->c:Lcom/join/mgps/rpc/e;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->N0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageOperationBean;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz p1, :cond_6

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getFlag()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "0"

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getError_info()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getCode()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "1001"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getMessages()Lcom/join/mgps/dto/GiftPackageOperationMessageBean;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationMessageBean;->getData()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-lez v0, :cond_5

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->o:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-ge v0, v2, :cond_3

    .line 113
    .line 114
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->o:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-ne v3, v4, :cond_2

    .line 131
    .line 132
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_overdue(I)V

    .line 140
    .line 141
    .line 142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/fragment/o;->p:Ljava/util/List;

    .line 146
    .line 147
    if-eqz p2, :cond_4

    .line 148
    .line 149
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-lez p2, :cond_4

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->S()V

    .line 156
    .line 157
    .line 158
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o;->V(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catchall_0
    move-exception p1

    .line 167
    goto :goto_1

    .line 168
    :catch_0
    move-exception p1

    .line 169
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .line 171
    .line 172
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :goto_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_2
    return-void
.end method

.method public U(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/join/mgps/fragment/o;->i:I

    .line 12
    .line 13
    iget v2, p0, Lcom/join/mgps/fragment/o;->n:I

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageRequestBean(IIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method V(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->q:Lcom/join/mgps/adapter/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 9
    .line 10
    const v2, 0x7f1301b0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 17
    .line 18
    const v1, 0x7f0d0814

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 25
    .line 26
    const v1, 0x7f0a04b2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/Button;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->x:Landroid/widget/Button;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 38
    .line 39
    const v1, 0x7f0a04b8

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/Button;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 49
    .line 50
    const v2, 0x7f0a1762

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 60
    .line 61
    const v3, 0x7f0a146f

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 71
    .line 72
    const v4, 0x7f0a146e

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 82
    .line 83
    const v5, 0x7f0a107a

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object v4, p0, Lcom/join/mgps/fragment/o;->v:Landroid/widget/TextView;

    .line 93
    .line 94
    const-string v4, "\u9886\u53f7\u6210\u529f"

    .line 95
    .line 96
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    const-string v1, "\u5173\u95ed"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->x:Landroid/widget/Button;

    .line 116
    .line 117
    const-string v3, "\u4e0b\u8f7d\u6e38\u620f"

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_9

    .line 133
    .line 134
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v4, v5}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    iput-object v4, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 147
    .line 148
    const/16 v5, 0x9

    .line 149
    .line 150
    const/4 v6, 0x5

    .line 151
    const/4 v7, 0x0

    .line 152
    if-nez v4, :cond_3

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    iput-object v4, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_2

    .line 169
    .line 170
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 171
    .line 172
    sget-object v8, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v4, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-static {v4}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    iget-object v8, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v4, v8, v9}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_1

    .line 206
    .line 207
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 208
    .line 209
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-static {v4}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    iget-object v8, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-virtual {v4, v8, v9}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-eqz v8, :cond_0

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-ge v4, v8, :cond_0

    .line 254
    .line 255
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 256
    .line 257
    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 262
    .line 263
    invoke-virtual {v4, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 264
    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 268
    .line 269
    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 274
    .line 275
    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 276
    .line 277
    .line 278
    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadType()I

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    invoke-virtual {v4, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 284
    .line 285
    .line 286
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 287
    .line 288
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getScreenshot_pic()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    invoke-virtual {v4, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 296
    .line 297
    if-eqz v4, :cond_4

    .line 298
    .line 299
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-static {v4, v8}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    const/16 v8, 0x2b

    .line 316
    .line 317
    if-lez v4, :cond_5

    .line 318
    .line 319
    const/16 v7, 0x2b

    .line 320
    .line 321
    :cond_5
    if-eqz v7, :cond_7

    .line 322
    .line 323
    if-eq v7, v6, :cond_6

    .line 324
    .line 325
    if-eq v7, v5, :cond_7

    .line 326
    .line 327
    if-eq v7, v8, :cond_7

    .line 328
    .line 329
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->x:Landroid/widget/Button;

    .line 330
    .line 331
    const-string v4, "\u4e0b\u8f7d\u4e2d.."

    .line 332
    .line 333
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_6
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->x:Landroid/widget/Button;

    .line 338
    .line 339
    const-string v4, "\u542f\u52a8\u6e38\u620f"

    .line 340
    .line 341
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_7
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->x:Landroid/widget/Button;

    .line 346
    .line 347
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->x:Landroid/widget/Button;

    .line 362
    .line 363
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-static {v3, v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->I3(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->v:Landroid/widget/TextView;

    .line 383
    .line 384
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 385
    .line 386
    .line 387
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 388
    .line 389
    if-eqz v3, :cond_9

    .line 390
    .line 391
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_8

    .line 396
    .line 397
    return-void

    .line 398
    :cond_8
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 399
    .line 400
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 401
    .line 402
    .line 403
    :cond_9
    new-instance v3, Lcom/join/mgps/fragment/o$f;

    .line 404
    .line 405
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/fragment/o$f;-><init>(Lcom/join/mgps/fragment/o;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    .line 410
    .line 411
    new-instance p1, Lcom/join/mgps/fragment/o$g;

    .line 412
    .line 413
    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/o$g;-><init>(Lcom/join/mgps/fragment/o;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    .line 418
    .line 419
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->x:Landroid/widget/Button;

    .line 420
    .line 421
    new-instance v0, Lcom/join/mgps/fragment/o$h;

    .line 422
    .line 423
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/o$h;-><init>(Lcom/join/mgps/fragment/o;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    .line 428
    .line 429
    return-void
.end method

.method W()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/fragment/o;->m:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->s:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->d:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->g:Lcom/join/mgps/customview/XListView2;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method X()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->s:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->d:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method Y()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->g:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->g:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->c:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/o;->m:I

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
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->g:Lcom/join/mgps/customview/XListView2;

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->g:Lcom/join/mgps/customview/XListView2;

    .line 25
    .line 26
    new-instance v1, Lcom/join/mgps/fragment/o$b;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o$b;-><init>(Lcom/join/mgps/fragment/o;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->g:Lcom/join/mgps/customview/XListView2;

    .line 35
    .line 36
    new-instance v1, Lcom/join/mgps/fragment/o$c;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o$c;-><init>(Lcom/join/mgps/fragment/o;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->g:Lcom/join/mgps/customview/XListView2;

    .line 45
    .line 46
    new-instance v1, Lcom/join/mgps/fragment/o$d;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o$d;-><init>(Lcom/join/mgps/fragment/o;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x14

    .line 55
    .line 56
    iput v0, p0, Lcom/join/mgps/fragment/o;->n:I

    .line 57
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->o:Ljava/util/List;

    .line 64
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->p:Ljava/util/List;

    .line 71
    .line 72
    new-instance v0, Lcom/join/mgps/adapter/l;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->o:Ljava/util/List;

    .line 77
    .line 78
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/l;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->q:Lcom/join/mgps/adapter/l;

    .line 82
    .line 83
    new-instance v0, Lcom/join/mgps/adapter/m;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->p:Ljava/util/List;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->w:Landroid/os/Handler;

    .line 90
    .line 91
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/adapter/m;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/adapter/m;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const v1, 0x7f0d0155

    .line 103
    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const v1, 0x7f0a057b

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/join/mgps/fragment/o;->s:Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    const v1, 0x7f0a1740

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object v1, p0, Lcom/join/mgps/fragment/o;->j:Landroid/widget/TextView;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->s:Landroid/widget/RelativeLayout;

    .line 133
    .line 134
    new-instance v2, Lcom/join/mgps/fragment/o$e;

    .line 135
    .line 136
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/o$e;-><init>(Lcom/join/mgps/fragment/o;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->g:Lcom/join/mgps/customview/XListView2;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->q:Lcom/join/mgps/adapter/l;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->h:Landroid/widget/ListView;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->h:Landroid/widget/ListView;

    .line 155
    .line 156
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/adapter/m;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->X()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->S()V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "uid"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/join/mgps/fragment/o;->i:I

    .line 17
    .line 18
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
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->t:Lcom/join/mgps/customview/t;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 3
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
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v1, 0x5

    .line 34
    if-eq p1, v1, :cond_2

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    if-eq p1, v1, :cond_0

    .line 39
    .line 40
    const/16 v1, 0xb

    .line 41
    .line 42
    if-eq p1, v1, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x30

    .line 45
    .line 46
    if-eq p1, v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->u:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 86
    .line 87
    :cond_3
    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/o;->m:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->X()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->S()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method showMain()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->s:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/adapter/m;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12031a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12031b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "giftPackageDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/o;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->s:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/join/mgps/fragment/o;->m:I

    if-ge p1, v0, :cond_2

    .line 23
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->g:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->q:Lcom/join/mgps/adapter/l;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->k:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
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
    :cond_0
    return-void
.end method
