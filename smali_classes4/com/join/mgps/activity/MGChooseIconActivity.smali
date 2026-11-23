.class public Lcom/join/mgps/activity/MGChooseIconActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d067d
.end annotation


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field application:Lcom/MApplication;

.field private chooseAdapter:Lcom/join/mgps/adapter/f;

.field chooseGridView:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field from:I
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

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->lists:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->hasLocal:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/MGChooseIconActivity;)Lcom/join/mgps/adapter/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseAdapter:Lcom/join/mgps/adapter/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/MGChooseIconActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->lists:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method afterViews()V
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
    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

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
    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->application:Lcom/MApplication;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    iput-object p0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->title_textview:Landroid/widget/TextView;

    .line 31
    .line 32
    const-string v1, "\u9009\u62e9\u56fe\u50cf"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseGridView:Landroid/widget/GridView;

    .line 38
    .line 39
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseGridView:Landroid/widget/GridView;

    .line 59
    .line 60
    new-instance v1, Lcom/join/mgps/activity/MGChooseIconActivity$a;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGChooseIconActivity$a;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lt6/y;->n()Lt6/y;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lq5/b;->d()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->headPortraitTableLocal:Ljava/util/List;

    .line 77
    .line 78
    new-instance v0, Lcom/join/mgps/adapter/f;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->context:Landroid/content/Context;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->lists:Ljava/util/List;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/join/mgps/adapter/f;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseAdapter:Lcom/join/mgps/adapter/f;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseGridView:Landroid/widget/GridView;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;-><init>()V

    .line 103
    .line 104
    .line 105
    const v1, 0x7f080401

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setId(I)V

    .line 109
    .line 110
    .line 111
    const-string v1, "\u76f8\u673a"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setHead_portrait_pic(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->lists:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->headPortraitTableLocal:Ljava/util/List;

    .line 122
    .line 123
    if-eqz v0, :cond_0

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-lez v0, :cond_0

    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->lists:Ljava/util/List;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->headPortraitTableLocal:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseAdapter:Lcom/join/mgps/adapter/f;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->hasLocal:Z

    .line 145
    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showUi()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->getUserHeadPortrait()V

    .line 150
    .line 151
    .line 152
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

.method deleteLocalUserIcon()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getLocalUserIcon()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1}, Lcom/join/android/app/common/utils/l;->H(Ljava/io/File;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/h;->e(Landroid/net/Uri;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_0
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
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method getUserHeadPortrait()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/HeadPicRequestBean;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/HeadPicRequestBean;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/HeadPicRequestBean;->setUid(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/HeadPicRequestBean;->setToken(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/HeadPicRequestBean;->setSign(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/HeadPicRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->J(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/join/mgps/dto/UserHeadPortrait;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserHeadPortrait;->isIs_success()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->hasLocal:Z

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/join/mgps/dto/UserHeadPortrait;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserHeadPortrait;->getHead_portrait_pic()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showSuccess(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->hasLocal:Z

    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->hasLocal:Z

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLoadingFailed()V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_1
    iget-boolean v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->hasLocal:Z

    .line 103
    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLoadingFailed()V

    .line 107
    .line 108
    .line 109
    :cond_1
    throw v0

    .line 110
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->hasLocal:Z

    .line 111
    .line 112
    if-nez v0, :cond_3

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLoadingFailed()V

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showUi()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->getUserHeadPortrait()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showLoading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoadingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseGridView:Landroid/widget/GridView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
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
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseGridView:Landroid/widget/GridView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lt6/y;->n()Lt6/y;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lq5/b;->a()I

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ge v1, v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setHead_portrait_pic(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lt6/y;->n()Lt6/y;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v0}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lt6/y;->n()Lt6/y;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lq5/b;->d()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->lists:Ljava/util/List;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->headPortraitTableLocal:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->lists:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseAdapter:Lcom/join/mgps/adapter/f;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method showUi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->hasLocal:Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseGridView:Landroid/widget/GridView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->chooseGridView:Landroid/widget/GridView;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method success(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatarSrc"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setAvatarSrc(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    invoke-virtual {v0, v1, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lw6/a;->c()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/l;->k(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->deleteLocalUserIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    const/16 p1, 0x2711

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    .line 52
    .line 53
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLoading()V

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
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setGender(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAccount(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setNick_name(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setUid(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAvatar_src(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->h(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_0

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->success(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->error(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->error(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLodingDismis()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->error(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->error(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-void
.end method
