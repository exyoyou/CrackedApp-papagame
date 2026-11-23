.class public Lcom/join/mgps/activity/MYAccountReginFinishActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0766
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MYAccountReginFinishActivity"


# instance fields
.field private HeadPortraitUrl:Ljava/lang/String;

.field accountBean:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field application:Lcom/MApplication;

.field private chooseAdapter:Lcom/join/mgps/adapter/f;

.field chooseGridView:Lcom/join/mgps/customview/MyGridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field private distroyed:Z

.field fromWhere:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private hasLocal:Z

.field private headPortraitTableLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;"
        }
    .end annotation
.end field

.field private lastClick:J

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;"
        }
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

.field private nameSize:I

.field reginFinish:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field scrollView:Landroid/widget/ScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->nameSize:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->distroyed:Z

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lists:Ljava/util/List;

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->headPortraitTableLocal:Ljava/util/List;

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->hasLocal:Z

    .line 24
    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Lcom/join/mgps/adapter/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseAdapter:Lcom/join/mgps/adapter/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/MYAccountReginFinishActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->HeadPortraitUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lists:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method afterview()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/MApplication;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->application:Lcom/MApplication;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->fromWhere:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->title_textview:Landroid/widget/TextView;

    .line 31
    .line 32
    const-string v2, "\u4fee\u6539\u5934\u50cf"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->title_textview:Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v2, "\u6ce8\u518c\u6210\u529f"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 54
    .line 55
    iput-object p0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->context:Landroid/content/Context;

    .line 56
    .line 57
    new-instance v0, Lcom/join/mgps/adapter/f;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->context:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lists:Ljava/util/List;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/join/mgps/adapter/f;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseAdapter:Lcom/join/mgps/adapter/f;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseGridView:Lcom/join/mgps/customview/MyGridView;

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseGridView:Lcom/join/mgps/customview/MyGridView;

    .line 80
    .line 81
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseGridView:Lcom/join/mgps/customview/MyGridView;

    .line 91
    .line 92
    new-instance v2, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lt6/y;->n()Lt6/y;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lq5/b;->d()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->headPortraitTableLocal:Ljava/util/List;

    .line 109
    .line 110
    new-instance v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    .line 111
    .line 112
    invoke-direct {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;-><init>()V

    .line 113
    .line 114
    .line 115
    const v2, 0x7f080401

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setId(I)V

    .line 119
    .line 120
    .line 121
    const-string v2, "\u76f8\u673a"

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setHead_portrait_pic(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lists:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->headPortraitTableLocal:Ljava/util/List;

    .line 132
    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-lez v0, :cond_2

    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lists:Ljava/util/List;

    .line 142
    .line 143
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->headPortraitTableLocal:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseAdapter:Lcom/join/mgps/adapter/f;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 151
    .line 152
    .line 153
    iput-boolean v1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->hasLocal:Z

    .line 154
    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showUi()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->getUserHeadPortrait()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method getUserHeadPortrait()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/HeadPicRequestBean;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/HeadPicRequestBean;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/HeadPicRequestBean;->setUid(I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/HeadPicRequestBean;->setToken(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/HeadPicRequestBean;->setSign(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/HeadPicRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->J(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/join/mgps/dto/UserHeadPortrait;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserHeadPortrait;->isIs_success()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/join/mgps/dto/UserHeadPortrait;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserHeadPortrait;->getHead_portrait_pic()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showSuccess(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lodingFailedButShowDefault()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/join/mgps/dto/UserHeadPortrait;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserHeadPortrait;->getError_msg()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lodingFailedButShowDefault()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    .line 110
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lodingFailedButShowDefault()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLodingDismis()V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLodingDismis()V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lodingFailedButShowDefault()V

    .line 133
    .line 134
    .line 135
    :goto_2
    return-void
.end method

.method lodingFailedButShowDefault()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->scrollView:Landroid/widget/ScrollView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseGridView:Lcom/join/mgps/customview/MyGridView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseAdapter:Lcom/join/mgps/adapter/f;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->distroyed:Z

    .line 6
    .line 7
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method reginFinish()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lastClick:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x7d0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gtz v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lastClick:J

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->HeadPortraitUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->updatedata(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method registerByThirdWay(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatarSrc"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->distroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method showSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseGridView:Lcom/join/mgps/customview/MyGridView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->scrollView:Landroid/widget/ScrollView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lt6/y;->n()Lt6/y;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lq5/b;->a()I

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ge v1, v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setHead_portrait_pic(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lt6/y;->n()Lt6/y;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v0}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lt6/y;->n()Lt6/y;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lq5/b;->d()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lists:Ljava/util/List;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->headPortraitTableLocal:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->lists:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->chooseAdapter:Lcom/join/mgps/adapter/f;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method showUi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->hasLocal:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->scrollView:Landroid/widget/ScrollView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->scrollView:Landroid/widget/ScrollView;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method updateSuccess()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->application:Lcom/MApplication;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/MApplication;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method updatedata(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatarSrc"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLoding()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setGender(I)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAccount(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setNick_name(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setUid(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAvatar_src(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->h(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->updateSuccess()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLodingDismis()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    return-void
.end method
