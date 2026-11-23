.class public Lcom/join/mgps/activity/CreateEndGameCommitActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d003b
.end annotation


# static fields
.field public static final REQUEST_CODE_PICK_VIDEO:I = 0x3e9


# instance fields
.field archiveBean:Lcom/join/mgps/dto/ArchiveListBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field bossBean:Lcom/join/mgps/dto/BossBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field cloudSlotPath:Ljava/lang/String;

.field cloudVideoCoverPath:Ljava/lang/String;

.field cloudVideoPath:Ljava/lang/String;

.field compressProgressDialog:Lcom/join/mgps/dialog/b0;

.field et_desc:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field et_title:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isRequesting:Z

.field private isUploading:Z

.field iv_thumb:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_choose_video:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_video:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field slotCompressedPath:Ljava/lang/String;

.field slotUpFinish:Z

.field private slotUpload:Z

.field svv_view:Lcom/join/android/app/component/video/StandardVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field systemTipDialog:Lcom/join/mgps/dialog/i2;

.field time:Ljava/lang/Long;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field uploadProgressDialog:Lcom/join/mgps/dialog/n2;

.field videoCompressPath:Ljava/lang/String;

.field videoPath:Ljava/lang/String;

.field videoUpFinish:Z

.field private videoUpload:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoUpFinish:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpFinish:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isUploading:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoUpload:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpload:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isRequesting:Z

    .line 16
    .line 17
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/CreateEndGameCommitActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoUpload:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/CreateEndGameCommitActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpload:Z

    .line 2
    .line 3
    return p1
.end method

.method private compressImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "imagePath"
        }
    .end annotation

    .line 1
    const-string v0, "file://"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/join/mgps/Util/z;->k:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "uploadCoverFile"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, "."

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v0, Ljava/io/File;

    .line 46
    .line 47
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    .line 62
    .line 63
    :cond_0
    new-instance v2, Lcom/join/mgps/activity/screenshot/ImageFactory;

    .line 64
    .line 65
    invoke-direct {v2}, Lcom/join/mgps/activity/screenshot/ImageFactory;-><init>()V

    .line 66
    .line 67
    .line 68
    const/16 v5, 0x1f4

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    move-object v4, p2

    .line 72
    move-object v7, p1

    .line 73
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/activity/screenshot/ImageFactory;->compressAndGenImage(Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-object p2
.end method

.method private getFileSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string v0, "."

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private onUploadError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isUploading:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->dismissUploading()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 6
    .line 7
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a11
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method chooseVideo()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0ee0
        }
    .end annotation

    .line 1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/e2;->B()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "video/*"

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/Util/e2;->t()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v2, "android.intent.category.OPENABLE"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v2, "android.intent.action.PICK"

    .line 50
    .line 51
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 54
    .line 55
    .line 56
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    :goto_1
    const-string v1, "\u9009\u62e9\u6311\u6218\u89c6\u9891"

    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/16 v1, 0x3e9

    .line 68
    .line 69
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    .line 71
    .line 72
    :goto_2
    return-void
.end method

.method commitCreateEndGame()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u521b\u5efa\u5931\u8d25\u8bf7\u91cd\u8bd5"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isRequesting:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isRequesting:Z

    .line 10
    .line 11
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->isNotLogin(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v1, "\u8bf7\u5148\u767b\u5f55"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isRequesting:Z

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    .line 45
    .line 46
    invoke-direct {v3, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lcom/join/mgps/dto/RequestCreateEndGameArgs;

    .line 50
    .line 51
    invoke-direct {v4}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ""

    .line 67
    .line 68
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;->setUid(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->cloudSlotPath:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;->setArchive(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->cloudVideoPath:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;->setVideo(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->cloudVideoCoverPath:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;->setCover(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/join/mgps/dto/BossBean;->getIndex()Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;->setIndex(Ljava/lang/Integer;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/dto/BossBean;->getGameId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;->setGameId(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->time:Ljava/lang/Long;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    invoke-virtual {v4, v5, v6}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;->setDuration(J)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->et_title:Landroid/widget/EditText;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;->setTitle(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->et_desc:Landroid/widget/EditText;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/RequestCreateEndGameArgs;->setSubTitle(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v1, v3}, Lcom/join/mgps/rpc/k;->E(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iput-boolean v2, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isRequesting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .line 161
    if-eqz v1, :cond_2

    .line 162
    .line 163
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Ljava/lang/Boolean;

    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_2

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->dismissUploading()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onCreateSuccess()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onDeleteVideoCache()V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catch_0
    move-exception v1

    .line 186
    goto :goto_0

    .line 187
    :cond_2
    if-eqz v1, :cond_3

    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_3

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->dismissUploading()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :catch_1
    move-exception v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->dismissUploading()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isRequesting:Z

    .line 233
    .line 234
    :goto_1
    return-void
.end method

.method compressVideo(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourcePath"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/Util/z;->l:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "compress/video"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/io/File;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, "."

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->getFileSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoCompressPath:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v1, Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity$c;-><init>(Lcom/join/mgps/activity/CreateEndGameCommitActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0, v1}, Lcom/vincent/videocompressor/h;->b(Ljava/lang/String;Ljava/lang/String;Lcom/vincent/videocompressor/h$a;)Lcom/vincent/videocompressor/h$b;

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method createEndGame()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1940
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isNotLogin(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoPath:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "\u8bf7\u9009\u62e9\u6311\u6218\u89c6\u9891"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->et_title:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->et_title:Landroid/widget/EditText;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x6

    .line 71
    if-ge v0, v1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->et_desc:Landroid/widget/EditText;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    const-string v0, "\u8bf7\u8f93\u5165\u6b8b\u5c40\u8bf4\u660e"

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpload:Z

    .line 98
    .line 99
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoUpload:Z

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoCompressPath:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoPath:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->compressVideo(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onCompressSuccess()V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    :goto_0
    const-string v0, "\u8bf7\u8f93\u5165\u6807\u9898\uff086\uff5e20\u5b57\uff09"

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_6
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->showToast(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void
.end method

.method dismissUploading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->uploadProgressDialog:Lcom/join/mgps/dialog/n2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e9

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Lcom/join/mgps/Util/d3;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoPath:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->svv_view:Lcom/join/android/app/component/video/StandardVideoView;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->rl_video:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->ll_choose_video:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const/16 p3, 0x8

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoPath:Ljava/lang/String;

    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    invoke-static {p1, p3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p3, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->svv_view:Lcom/join/android/app/component/video/StandardVideoView;

    .line 46
    .line 47
    iget-object p3, p3, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    invoke-virtual {p3, p1}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->svv_view:Lcom/join/android/app/component/video/StandardVideoView;

    .line 53
    .line 54
    const-string p3, "CreateEndGameActivity_Video"

    .line 55
    .line 56
    invoke-virtual {p1, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->svv_view:Lcom/join/android/app/component/video/StandardVideoView;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->svv_view:Lcom/join/android/app/component/video/StandardVideoView;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/video/StandardVideoView;->setShowCoverWhenPause(Z)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->svv_view:Lcom/join/android/app/component/video/StandardVideoView;

    .line 70
    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v0, "file://"

    .line 77
    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoPath:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    new-array v0, p2, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {p1, p3, p2, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setUpLazy(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    return-void
.end method

.method onCompressStart()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->compressProgressDialog:Lcom/join/mgps/dialog/b0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/b0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/b0;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->compressProgressDialog:Lcom/join/mgps/dialog/b0;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->compressProgressDialog:Lcom/join/mgps/dialog/b0;

    .line 13
    .line 14
    const-string v1, "\u89c6\u9891"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b0;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method onCompressSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->compressProgressDialog:Lcom/join/mgps/dialog/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoUpFinish:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoCompressPath:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->uploadFile(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method onCreateSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->systemTipDialog:Lcom/join/mgps/dialog/i2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/i2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/i2;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->systemTipDialog:Lcom/join/mgps/dialog/i2;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->systemTipDialog:Lcom/join/mgps/dialog/i2;

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/activity/CreateEndGameCommitActivity$b;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity$b;-><init>(Lcom/join/mgps/activity/CreateEndGameCommitActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/i2;->a(Lcom/papa91/arc/interfaces/DialogListenerWrap;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->systemTipDialog:Lcom/join/mgps/dialog/i2;

    .line 23
    .line 24
    const-string v1, "\u4e0a\u4f20\u6210\u529f\uff0c\u6211\u4eec\u5c06\u57283\u4e2a\u5de5\u4f5c\u65e5\u5185\u5b8c\u6210\u5ba1\u6838"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/i2;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method onDeleteSlotCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotCompressedPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotCompressedPath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/o0;->m(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotCompressedPath:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method onDeleteVideo()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a2f
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoPath:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->ll_choose_video:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->rl_video:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method onDeleteVideoCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoCompressPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoCompressPath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/o0;->m(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoCompressPath:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->svv_view:Lcom/join/android/app/component/video/StandardVideoView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string v0, "CreateEndGameActivity_Video"

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/android/app/component/video/a;->n0(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->svv_view:Lcom/join/android/app/component/video/StandardVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method onSystemTipClose()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/event/v;

    .line 2
    .line 3
    const-string v1, "CreateEndGameActivity"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/join/mgps/event/v;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method onUpdateProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->compressProgressDialog:Lcom/join/mgps/dialog/b0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->compressProgressDialog:Lcom/join/mgps/dialog/b0;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/b0;->update(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method onUpdateUploadProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->uploadProgressDialog:Lcom/join/mgps/dialog/n2;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->uploadProgressDialog:Lcom/join/mgps/dialog/n2;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/n2;->update(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method onUploadStart(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->uploadProgressDialog:Lcom/join/mgps/dialog/n2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/n2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/n2;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->uploadProgressDialog:Lcom/join/mgps/dialog/n2;

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    const-string p1, "\u89c6\u9891"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "\u5b58\u6863"

    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->uploadProgressDialog:Lcom/join/mgps/dialog/n2;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/n2;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method onUploadSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpFinish:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpload:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->dismissUploading()V

    .line 10
    .line 11
    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpFinish:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpload:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->archiveBean:Lcom/join/mgps/dto/ArchiveListBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveListBean;->getArchiveFilePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->uploadFile(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    :cond_2
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

.method uploadFile(Ljava/lang/String;I)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "upFilePath",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "data"

    .line 6
    .line 7
    const-string v3, "code"

    .line 8
    .line 9
    const-string v4, "remoteUrl"

    .line 10
    .line 11
    const-string v5, "cover"

    .line 12
    .line 13
    const-string v6, "message"

    .line 14
    .line 15
    const-string v7, "\u4e0a\u4f20\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 16
    .line 17
    iget-boolean v8, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isUploading:Z

    .line 18
    .line 19
    if-eqz v8, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v8, 0x1

    .line 23
    iput-boolean v8, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isUploading:Z

    .line 24
    .line 25
    const/4 v9, 0x2

    .line 26
    if-ne v1, v8, :cond_1

    .line 27
    .line 28
    iput-boolean v8, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoUpload:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-ne v1, v9, :cond_2

    .line 32
    .line 33
    iput-boolean v8, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpload:Z

    .line 34
    .line 35
    :cond_2
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    if-eqz v10, :cond_d

    .line 40
    .line 41
    new-instance v15, Lcom/join/mgps/dto/RequestModel;

    .line 42
    .line 43
    invoke-direct {v15}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v15, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 47
    .line 48
    .line 49
    new-instance v10, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    .line 50
    .line 51
    invoke-direct {v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-virtual {v11}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    iget-object v12, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->gameId:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v10, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setGameId(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    invoke-virtual {v10, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setUid(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v15, v10}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v16

    .line 81
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUploadStart(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    new-instance v12, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v11}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v13, ""

    .line 101
    .line 102
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    invoke-virtual {v11}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    new-instance v11, Ljava/io/File;

    .line 114
    .line 115
    move-object/from16 v12, p1

    .line 116
    .line 117
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v17

    .line 124
    const/4 v11, 0x0

    .line 125
    if-ne v1, v9, :cond_3

    .line 126
    .line 127
    const/16 v18, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    const/16 v18, 0x0

    .line 131
    .line 132
    :goto_1
    if-ne v1, v8, :cond_4

    .line 133
    .line 134
    const/16 v19, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    const/16 v19, 0x0

    .line 138
    .line 139
    :goto_2
    new-instance v9, Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;

    .line 140
    .line 141
    invoke-direct {v9, v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity$a;-><init>(Lcom/join/mgps/activity/CreateEndGameCommitActivity;I)V

    .line 142
    .line 143
    .line 144
    const/4 v8, 0x0

    .line 145
    move-object v11, v10

    .line 146
    move-object/from16 v12, p1

    .line 147
    .line 148
    move-object/from16 v20, v9

    .line 149
    .line 150
    invoke-virtual/range {v11 .. v20}, Lcom/join/android/app/common/http/h;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RequestModel;Ljava/lang/String;Ljava/lang/String;IILcom/join/android/app/common/http/g;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    :try_start_0
    invoke-static {v9}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_c

    .line 159
    .line 160
    invoke-static {v9}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    if-eqz v9, :cond_b

    .line 169
    .line 170
    invoke-virtual {v9, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-eqz v10, :cond_b

    .line 175
    .line 176
    invoke-virtual {v9, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    const/16 v10, 0xc8

    .line 185
    .line 186
    if-ne v3, v10, :cond_b

    .line 187
    .line 188
    invoke-virtual {v9, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_9

    .line 193
    .line 194
    invoke-virtual {v9, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-lez v3, :cond_8

    .line 207
    .line 208
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_e

    .line 221
    .line 222
    const/4 v3, 0x1

    .line 223
    if-ne v1, v3, :cond_6

    .line 224
    .line 225
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iput-object v1, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->cloudVideoPath:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_5

    .line 240
    .line 241
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_5

    .line 246
    .line 247
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_5

    .line 256
    .line 257
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    iput-object v1, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->cloudVideoCoverPath:Ljava/lang/String;

    .line 266
    .line 267
    :cond_5
    const/4 v1, 0x1

    .line 268
    iput-boolean v1, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoUpFinish:Z

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_6
    const/4 v3, 0x2

    .line 272
    if-ne v1, v3, :cond_7

    .line 273
    .line 274
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    iput-object v1, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->cloudSlotPath:Ljava/lang/String;

    .line 283
    .line 284
    const/4 v1, 0x1

    .line 285
    iput-boolean v1, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpFinish:Z

    .line 286
    .line 287
    :cond_7
    :goto_3
    iput-boolean v8, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->isUploading:Z

    .line 288
    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUploadSuccess()V

    .line 290
    .line 291
    .line 292
    iget-boolean v1, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->videoUpFinish:Z

    .line 293
    .line 294
    if-eqz v1, :cond_e

    .line 295
    .line 296
    iget-boolean v1, v0, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->slotUpFinish:Z

    .line 297
    .line 298
    if-eqz v1, :cond_e

    .line 299
    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->commitCreateEndGame()V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_8
    invoke-direct {v0, v7}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUploadError(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_9
    invoke-virtual {v9, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_a

    .line 313
    .line 314
    invoke-virtual {v9, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-nez v1, :cond_a

    .line 323
    .line 324
    invoke-virtual {v9, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_a

    .line 337
    .line 338
    invoke-virtual {v9, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-direct {v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUploadError(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_a
    invoke-direct {v0, v7}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUploadError(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_b
    invoke-direct {v0, v7}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUploadError(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_c
    invoke-direct {v0, v7}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUploadError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .line 360
    .line 361
    goto :goto_4

    .line 362
    :catch_0
    invoke-direct {v0, v7}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUploadError(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_d
    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    .line 367
    .line 368
    invoke-direct {v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onUploadError(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :cond_e
    :goto_4
    return-void
.end method
