.class public Lcom/join/mgps/activity/UninstallWufunGameActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00b4
.end annotation


# instance fields
.field private SCROLLING:Z

.field private adapter:Lcom/join/mgps/adapter/k8;

.field private archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

.field cardDelete:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cardRecom:Landroidx/cardview/widget/CardView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field checkbox1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field checkbox2:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field checkbox3:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cldTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private context:Landroid/content/Context;

.field private firstVisiblePosition:I

.field flRecom:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field game1:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field game2:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field game3:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameDesc1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameIcon1:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameIcon2:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameIcon3:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameName1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameName2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameName3:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameStatus1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameStatus2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameStatus3:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field headview:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private installCloud:Z

.field private lastVisibleIndex:I

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private modGameId:Ljava/lang/String;

.field private recomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private retryCount:I

.field private rpcGameClient:Lcom/join/mgps/rpc/k;

.field rvRecom:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field toComment:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvDeleteAll:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvDeleteGameOnly:Landroid/widget/TextView;
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
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->lastVisibleIndex:I

    .line 13
    .line 14
    iput v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->firstVisiblePosition:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->SCROLLING:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->retryCount:I

    .line 19
    .line 20
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/UninstallWufunGameActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->lastVisibleIndex:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/UninstallWufunGameActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/UninstallWufunGameActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->SCROLLING:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/UninstallWufunGameActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/UninstallWufunGameActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/UninstallWufunGameActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->retryCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$508(Lcom/join/mgps/activity/UninstallWufunGameActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->retryCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->retryCount:I

    .line 6
    .line 7
    return v0
.end method

.method private getLocalModGameArchievePath()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;->getMainLocalPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;->getMainLocalPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/k;->k0()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "/data/data"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    const-string v3, "/data/user/0"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "/sdcard"

    .line 50
    .line 51
    const-string v3, ""

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    return-object v0
.end method

.method private getLocalSimulatorArchieveStorage(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->d2(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "papa91"

    .line 36
    .line 37
    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-string p1, "\\.\\d+$"

    .line 83
    .line 84
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v1, "\\.\\d+\\.png$"

    .line 89
    .line 90
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    array-length v3, v3

    .line 105
    if-lez v3, :cond_4

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    array-length v3, v2

    .line 112
    const/4 v4, 0x0

    .line 113
    :goto_0
    if-ge v4, v3, :cond_4

    .line 114
    .line 115
    aget-object v5, v2, v4

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {p1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-nez v6, :cond_2

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_3

    .line 144
    .line 145
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    :goto_1
    return-object v0
.end method

.method private initHeadCard()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudGame()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->cldTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x0

    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v4, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-class v5, Lcom/join/mgps/dto/ModInfoBean;

    .line 55
    .line 56
    invoke-virtual {v0, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/join/mgps/dto/ModInfoBean;

    .line 61
    .line 62
    if-eqz v0, :cond_8

    .line 63
    .line 64
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/4 v5, 0x2

    .line 69
    new-array v5, v5, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    aput-object v6, v5, v2

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    aput-object v0, v5, v1

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Lq5/f;->H([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 104
    .line 105
    sget-object v4, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iput-object v4, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v4, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 128
    .line 129
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v4, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameName1:Landroid/widget/TextView;

    .line 133
    .line 134
    const-string v5, "\u589e\u5f3a\u7248"

    .line 135
    .line 136
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameIcon1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/join/mgps/activity/UninstallWufunGameActivity$2;

    .line 149
    .line 150
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity$2;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->getModGameArchievePath(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iput-object v4, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v4, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 164
    .line 165
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    iget-object v4, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameName2:Landroid/widget/TextView;

    .line 169
    .line 170
    const-string v5, "\u6807\u51c6\u7248"

    .line 171
    .line 172
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object v4, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameIcon2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showCloudView()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_2

    .line 189
    .line 190
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSingleGame()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameName1:Landroid/widget/TextView;

    .line 212
    .line 213
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameDesc1:Landroid/widget/TextView;

    .line 223
    .line 224
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameIcon1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showCloudView()V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/join/mgps/Util/w0;->m(Ljava/util/List;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_7

    .line 254
    .line 255
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/join/mgps/Util/w0;->k(Ljava/util/List;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_6

    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 269
    .line 270
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 280
    .line 281
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 282
    .line 283
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 293
    .line 294
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameName2:Landroid/widget/TextView;

    .line 295
    .line 296
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 306
    .line 307
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 311
    .line 312
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 316
    .line 317
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameIcon2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 321
    .line 322
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 323
    .line 324
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showCloudView()V

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 336
    .line 337
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 341
    .line 342
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 346
    .line 347
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 351
    .line 352
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 356
    .line 357
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showCloudView()V

    .line 361
    .line 362
    .line 363
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus1:Landroid/widget/TextView;

    .line 364
    .line 365
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus2:Landroid/widget/TextView;

    .line 369
    .line 370
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .line 372
    .line 373
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    const-string v1, "#FFFFFF"

    .line 380
    .line 381
    const v4, 0x7f081065

    .line 382
    .line 383
    .line 384
    if-nez v0, :cond_9

    .line 385
    .line 386
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 387
    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-nez v0, :cond_9

    .line 393
    .line 394
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    .line 398
    .line 399
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 400
    .line 401
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    .line 403
    .line 404
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 405
    .line 406
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 407
    .line 408
    .line 409
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 410
    .line 411
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 415
    .line 416
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    .line 422
    .line 423
    iget-boolean v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 424
    .line 425
    if-eqz v0, :cond_13

    .line 426
    .line 427
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 428
    .line 429
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_5

    .line 433
    .line 434
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 435
    .line 436
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-nez v0, :cond_b

    .line 441
    .line 442
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 443
    .line 444
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-ne v0, v3, :cond_b

    .line 449
    .line 450
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 451
    .line 452
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 456
    .line 457
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 461
    .line 462
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 463
    .line 464
    .line 465
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 466
    .line 467
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    .line 473
    .line 474
    iget-boolean v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 475
    .line 476
    if-eqz v0, :cond_a

    .line 477
    .line 478
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 479
    .line 480
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    .line 482
    .line 483
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 484
    .line 485
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_5

    .line 489
    .line 490
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 491
    .line 492
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_5

    .line 496
    .line 497
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 498
    .line 499
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    const-string v5, "#929292"

    .line 504
    .line 505
    const v6, 0x7f0810db

    .line 506
    .line 507
    .line 508
    if-ne v0, v3, :cond_d

    .line 509
    .line 510
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 511
    .line 512
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-nez v0, :cond_d

    .line 517
    .line 518
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 519
    .line 520
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    .line 522
    .line 523
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 524
    .line 525
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 526
    .line 527
    .line 528
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 529
    .line 530
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 531
    .line 532
    .line 533
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 534
    .line 535
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    .line 541
    .line 542
    iget-boolean v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 543
    .line 544
    if-eqz v0, :cond_c

    .line 545
    .line 546
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 547
    .line 548
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    .line 550
    .line 551
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 552
    .line 553
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    .line 555
    .line 556
    goto :goto_3

    .line 557
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 558
    .line 559
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 560
    .line 561
    .line 562
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 563
    .line 564
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->getLocalSimulatorArchieveStorage(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/util/List;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-nez v0, :cond_13

    .line 573
    .line 574
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 575
    .line 576
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 577
    .line 578
    .line 579
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 580
    .line 581
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 582
    .line 583
    .line 584
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 585
    .line 586
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_5

    .line 594
    .line 595
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 596
    .line 597
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_10

    .line 602
    .line 603
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 604
    .line 605
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    .line 607
    .line 608
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 609
    .line 610
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 614
    .line 615
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 616
    .line 617
    .line 618
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 619
    .line 620
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    .line 626
    .line 627
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 628
    .line 629
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->getLocalSimulatorArchieveStorage(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/util/List;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-nez v0, :cond_e

    .line 638
    .line 639
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 640
    .line 641
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    .line 643
    .line 644
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 645
    .line 646
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 647
    .line 648
    .line 649
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 650
    .line 651
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    .line 657
    .line 658
    :cond_e
    iget-boolean v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 659
    .line 660
    if-eqz v0, :cond_f

    .line 661
    .line 662
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 663
    .line 664
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    .line 666
    .line 667
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 668
    .line 669
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    .line 671
    .line 672
    goto :goto_5

    .line 673
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 674
    .line 675
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    .line 677
    .line 678
    goto :goto_5

    .line 679
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 680
    .line 681
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 682
    .line 683
    .line 684
    move-result v0

    .line 685
    if-eqz v0, :cond_13

    .line 686
    .line 687
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 688
    .line 689
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    .line 691
    .line 692
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 693
    .line 694
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSingleGame()Z

    .line 695
    .line 696
    .line 697
    move-result v0

    .line 698
    if-eqz v0, :cond_11

    .line 699
    .line 700
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 701
    .line 702
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 703
    .line 704
    .line 705
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 706
    .line 707
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 708
    .line 709
    .line 710
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 711
    .line 712
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 717
    .line 718
    .line 719
    goto :goto_4

    .line 720
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 721
    .line 722
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 723
    .line 724
    .line 725
    :goto_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 726
    .line 727
    if-eqz v0, :cond_12

    .line 728
    .line 729
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 730
    .line 731
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    .line 733
    .line 734
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 735
    .line 736
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    .line 738
    .line 739
    goto :goto_5

    .line 740
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 741
    .line 742
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    .line 744
    .line 745
    :cond_13
    :goto_5
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private showCloudView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game3:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameName3:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v1, "\u4e91\u73a9\u7248"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameIcon3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->cldTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private updateDownStateList(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "status"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->adapter:Lcom/join/mgps/adapter/k8;

    invoke-virtual {p2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->adapter:Lcom/join/mgps/adapter/k8;

    invoke-virtual {p2, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 4
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    invoke-virtual {v0, p2}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateDownStateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SearchDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    if-ltz v0, :cond_4

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->lastVisibleIndex:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->adapter:Lcom/join/mgps/adapter/k8;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_4

    .line 14
    .line 15
    iget v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->firstVisiblePosition:I

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->lastVisibleIndex:I

    .line 18
    .line 19
    if-gt v0, v1, :cond_4

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->adapter:Lcom/join/mgps/adapter/k8;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq v2, v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/16 v3, 0xc

    .line 50
    .line 51
    if-ne v2, v3, :cond_3

    .line 52
    .line 53
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rvRecom:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    iget v3, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->firstVisiblePosition:I

    .line 56
    .line 57
    sub-int v3, v0, v3

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    iget-object v3, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rvRecom:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    instance-of v3, v2, Lcom/join/mgps/base/b;

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    check-cast v2, Lcom/join/mgps/base/b;

    .line 76
    .line 77
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v3, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    const v3, 0x7f0a054e

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lcom/join/mgps/customview/DownloadNormalView;

    .line 100
    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->initHeadCard()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/adapter/k8;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/k8;-><init>(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->adapter:Lcom/join/mgps/adapter/k8;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rvRecom:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rvRecom:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->adapter:Lcom/join/mgps/adapter/k8;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rvRecom:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    .line 82
    new-instance v1, Lcom/join/mgps/activity/UninstallWufunGameActivity$a;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity$a;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->getGuessLikeData()V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 94
    .line 95
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    sget-object v2, Lcom/papa/sim/statistic/Event;->goUninstallGamePage:Lcom/papa/sim/statistic/Event;

    .line 110
    .line 111
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method apkInstalRecver(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.apkinstal.action.broadcast"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->retryCount:I

    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity;Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v2, 0x3e8

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
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

.method deleteCloudGame(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus3:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus3:Landroid/widget/TextView;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 35
    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->O0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroid/os/Handler;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/activity/UninstallWufunGameActivity$c;

    .line 58
    .line 59
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity$c;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v2, 0x3e8

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method deleteGame(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus2:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus2:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 35
    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    :cond_3
    if-eqz v3, :cond_7

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v2, 0x5

    .line 94
    if-eq v1, v2, :cond_5

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/16 v3, 0x9

    .line 101
    .line 102
    if-eq v1, v3, :cond_5

    .line 103
    .line 104
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->L0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v3, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, ""

    .line 138
    .line 139
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->i3(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 154
    .line 155
    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v1, v2, v0}, Lcom/join/android/app/common/utils/APKUtils;->o0(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_6
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->O0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_7
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->O0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 180
    .line 181
    .line 182
    :goto_0
    new-instance v0, Landroid/os/Handler;

    .line 183
    .line 184
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v1, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;

    .line 188
    .line 189
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-wide/16 v2, 0x3e8

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method deleteModGame(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modGameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus1:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0x30

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    const-string p1, "\u6e38\u620f\u5b89\u88c5\u4e2d\u65e0\u6cd5\u5220\u9664"

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showToast(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x2

    .line 41
    if-ne v1, v2, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus1:Landroid/widget/TextView;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 50
    .line 51
    const/16 v3, 0x8

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Landroid/os/Handler;

    .line 67
    .line 68
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/join/mgps/activity/UninstallWufunGameActivity$d;

    .line 72
    .line 73
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity$d;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v2, 0x3e8

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method game1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus1:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    xor-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 v1, 0x8

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const v1, 0x7f0810db

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const v1, 0x7f081065

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    const-string v1, "#929292"

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    const-string v1, "#FFFFFF"

    .line 81
    .line 82
    :goto_2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method game2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus2:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    xor-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method game3()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus3:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    xor-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method getGuessLikeData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/join/mgps/dto/UninstallGuessLikeArgs;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/join/mgps/dto/UninstallGuessLikeArgs;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/UninstallGuessLikeArgs;->setUid(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-string v3, ""

    .line 46
    .line 47
    const-string v4, "cld_"

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_1
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/UninstallGuessLikeArgs;->setGameId(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->o0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/16 v2, 0xc8

    .line 87
    .line 88
    if-ne v1, v2, :cond_1

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/join/mgps/dto/UninstallGuessLikeBean;

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateData(Lcom/join/mgps/dto/UninstallGuessLikeBean;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showLodingFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showLodingFailed()V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showLodingFailed()V

    .line 119
    .line 120
    .line 121
    :goto_2
    return-void
.end method

.method getModGameArchievePath(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modGameIds"
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
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    .line 23
    .line 24
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/join/mgps/dto/ArchievePathMultiArgs;

    .line 28
    .line 29
    invoke-direct {v3}, Lcom/join/mgps/dto/ArchievePathMultiArgs;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ArchievePathMultiArgs;->setUid(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/ArchievePathMultiArgs;->setDownloadedGameIdList(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/k;->k(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/16 v2, 0xc8

    .line 69
    .line 70
    if-ne v1, v2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/join/mgps/dto/ArchievePathMultiBean;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchievePathMultiBean;->getCloud_archive_path_list()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/join/mgps/dto/ArchievePathMultiBean;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchievePathMultiBean;->getCloud_archive_path_list()Ljava/util/List;

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
    if-lez v1, :cond_1

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/join/mgps/dto/ArchievePathMultiBean;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchievePathMultiBean;->getCloud_archive_path_list()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->resetBtn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->setBtn(Z)V

    .line 133
    .line 134
    .line 135
    :cond_2
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->adapter:Lcom/join/mgps/adapter/k8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
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
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_6

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v1, v3, :cond_5

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq v1, v2, :cond_4

    .line 17
    .line 18
    const/4 v4, 0x6

    .line 19
    if-eq v1, v4, :cond_3

    .line 20
    .line 21
    const/4 v4, 0x7

    .line 22
    if-eq v1, v4, :cond_2

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    if-eq v1, v3, :cond_1

    .line 27
    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    packed-switch v1, :pswitch_data_1

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateDownStateList(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_1
    const/16 p1, 0x9

    .line 48
    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_3
    if-nez v0, :cond_0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->SCROLLING:Z

    .line 65
    .line 66
    if-nez p1, :cond_7

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateProgressPartly()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :pswitch_4
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 93
    .line 94
    .line 95
    :cond_7
    :goto_0
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->getGuessLikeData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method resetBtn()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->getLocalModGameArchievePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    const-string v0, "#FFFFFF"

    .line 15
    .line 16
    const v2, 0x7f081065

    .line 17
    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    const-wide/16 v6, 0x0

    .line 34
    .line 35
    cmp-long v1, v4, v6

    .line 36
    .line 37
    if-lez v1, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v4, 0x0

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    :cond_1
    iget-boolean v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 86
    .line 87
    const v1, 0x7f0810db

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 94
    .line 95
    const-string v1, "#929292"

    .line 96
    .line 97
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameDesc1:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 121
    .line 122
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameDesc1:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void
.end method

.method resetBtn2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus2:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus1:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus1:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus2:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    return-void
.end method

.method saveGameArchieve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "pkg"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "backup"

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Lcom/join/mgps/Util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method saveGameArchieveFiles(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paths",
            "pkg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "backup"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    new-instance v1, Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v1, "/"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Lcom/join/mgps/Util/o0;->f(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method setBtn(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const v1, 0x7f0810db

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const v1, 0x7f081065

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    const-string p1, "#929292"

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    const-string p1, "#FFFFFF"

    .line 34
    .line 35
    :goto_2
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
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

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->loding_layout:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->loding_faile:Landroid/view/View;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->flRecom:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->loding_layout:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->loding_faile:Landroid/view/View;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->flRecom:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method showMain()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->flRecom:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->loding_layout:Landroid/view/View;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->loding_faile:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
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
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

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

.method toComment()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-class v2, Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    invoke-virtual {v2, v1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->isShowComment(Z)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->extBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method tvDeleteAll()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v1, 0x0

    .line 39
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game3:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    :cond_4
    if-gtz v0, :cond_5

    .line 60
    .line 61
    if-le v1, v2, :cond_5

    .line 62
    .line 63
    const-string v0, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8981\u5220\u9664\u7684\u6e38\u620f"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showToast(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_7

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iget-boolean v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 94
    .line 95
    if-nez v0, :cond_7

    .line 96
    .line 97
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->deleteModGame(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_8

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_9

    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    iget-boolean v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->installCloud:Z

    .line 127
    .line 128
    if-nez v0, :cond_9

    .line 129
    .line 130
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->deleteGame(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_a

    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game3:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_b

    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_b

    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->deleteCloudGame(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_b
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 173
    .line 174
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 180
    .line 181
    .line 182
    const/4 v1, 0x2

    .line 183
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setClearStatus(I)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    sget-object v2, Lcom/papa/sim/statistic/Event;->uninstallGameSuccess:Lcom/papa/sim/statistic/Event;

    .line 193
    .line 194
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method tvDeleteGameOnly()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8981\u5220\u9664\u7684\u6e38\u620f"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showToast(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    :cond_1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;->getMainLocalPath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;->getMainLocalPath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sget-object v2, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/k;->k0()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v3, "/data/data"

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_2

    .line 104
    .line 105
    const-string v4, "/data/user/0"

    .line 106
    .line 107
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v3, "/sdcard"

    .line 112
    .line 113
    const-string v4, ""

    .line 114
    .line 115
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->saveGameArchieve(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->modGameId:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->deleteModGame(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_5

    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_7

    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 171
    .line 172
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->getLocalSimulatorArchieveStorage(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_6

    .line 181
    .line 182
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->saveGameArchieveFiles(Ljava/util/List;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->deleteGame(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_8

    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->deleteCloudGame(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_8
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 210
    .line 211
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 217
    .line 218
    .line 219
    const/4 v1, 0x1

    .line 220
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setClearStatus(I)V

    .line 221
    .line 222
    .line 223
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->context:Landroid/content/Context;

    .line 224
    .line 225
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    sget-object v2, Lcom/papa/sim/statistic/Event;->uninstallGameSuccess:Lcom/papa/sim/statistic/Event;

    .line 230
    .line 231
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method

.method updateData(Lcom/join/mgps/dto/UninstallGuessLikeBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/UninstallGuessLikeBean;->getGuessYouLikeInfo()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/UninstallGuessLikeBean;->getGuessYouLikeInfo()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showMain()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/UninstallGuessLikeBean;->getGuessYouLikeInfo()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 55
    .line 56
    const/16 v1, 0xa8

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->adapter:Lcom/join/mgps/adapter/k8;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->recomList:Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
