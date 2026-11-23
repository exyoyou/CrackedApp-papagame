.class public Lcom/join/mgps/activity/GameTransferActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameTransferActivity$e;,
        Lcom/join/mgps/activity/GameTransferActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0066
.end annotation


# static fields
.field public static final EXTERNALSTORAGEDIR_PATH:Ljava/lang/String;

.field public static final PATH_ANDROID_DATA:Ljava/lang/String;

.field public static final PATH_ANDROID_OBB:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GameTransferActivity"


# instance fields
.field Flag:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field final LEFT_BAR:I

.field final RIGHT_BAR:I

.field accept_game_array:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;"
        }
    .end annotation
.end field

.field apClientFuture:Ljava/util/concurrent/Future;

.field apClientRunable:Lcom/join/mgps/task/d;

.field apWifiConnectedReceiver:Lcom/join/mgps/receiver/ApWifiConnectedReceiver;

.field cacheRoot:Ljava/io/File;

.field can_choose_count:I

.field client:Lcom/join/mgps/socket/client/a;

.field connection:Landroid/content/ServiceConnection;

.field currentAcceptId:Ljava/lang/String;

.field currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field fileRunable:Lcom/join/mgps/task/b;

.field gameAndPlugTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field gameDownloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field gameListAdapter:Lcom/join/mgps/adapter/x2;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field game_array:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;"
        }
    .end annotation
.end field

.field game_transfer_historyList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a073a
    .end annotation
.end field

.field game_transfer_list:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0745
    .end annotation
.end field

.field histroyGameListAdapter:Lcom/join/mgps/adapter/v2;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field histroy_hint_rl:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a073b
    .end annotation
.end field

.field is_select_all:Z

.field iteratorDownloadTask:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field lastReceiverTime:J

.field left_nagivation_bar_txt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0737
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDialog:Lcom/join/mgps/customview/t;

.field mExecutor:Ljava/util/concurrent/ExecutorService;

.field mFuture:Ljava/util/concurrent/Future;

.field mRunable:Lcom/join/mgps/activity/GameTransferActivity$e;

.field mSocket:Ljava/net/Socket;

.field netWorkConnectedReceiver:Lcom/join/mgps/receiver/NetWorkConnectedReceiver;

.field other_phone_modle_txt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0747
    .end annotation
.end field

.field plugDownloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field plugTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field powerManager:Landroid/os/PowerManager;
    .annotation build Lorg/androidannotations/annotations/SystemService;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field receiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field recevedDownloadTask:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field right_nagivation_bar_txt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0738
    .end annotation
.end field

.field scManager:Lcom/join/mgps/socket/b;

.field select_all_txt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0741
    .end annotation
.end field

.field select_num_txt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0748
    .end annotation
.end field

.field sendGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;"
        }
    .end annotation
.end field

.field sending:Z

.field socketService:Lcom/join/mgps/socket/server/a;

.field tansfer_ok_btn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0746
    .end annotation
.end field

.field titleTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0749
    .end annotation
.end field

.field transferGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field wakeLock:Landroid/os/PowerManager$WakeLock;

.field zClientNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/join/mgps/activity/GameTransferActivity;->EXTERNALSTORAGEDIR_PATH:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "/Android/obb"

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
    move-result-object v1

    .line 28
    sput-object v1, Lcom/join/mgps/activity/GameTransferActivity;->PATH_ANDROID_OBB:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "/Android/data"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/join/mgps/activity/GameTransferActivity;->PATH_ANDROID_DATA:Ljava/lang/String;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->LEFT_BAR:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->RIGHT_BAR:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->is_select_all:Z

    .line 12
    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mRunable:Lcom/join/mgps/activity/GameTransferActivity$e;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->fileRunable:Lcom/join/mgps/task/b;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mFuture:Ljava/util/concurrent/Future;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->apClientRunable:Lcom/join/mgps/task/d;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->apClientFuture:Ljava/util/concurrent/Future;

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 31
    .line 32
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentAcceptId:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mSocket:Ljava/net/Socket;

    .line 39
    .line 40
    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->zClientNum:I

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->receiverList:Ljava/util/List;

    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity$a;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity$a;-><init>(Lcom/join/mgps/activity/GameTransferActivity;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->connection:Landroid/content/ServiceConnection;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 57
    .line 58
    return-void
.end method

.method private acceptFileSuccess(Lcom/join/mgps/dto/GameTransferBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->recevedDownloadTask:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getFilePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x7

    .line 35
    const/16 v3, 0xb

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v1, v4, p1}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lt p1, v1, :cond_0

    .line 68
    .line 69
    new-instance p1, Ljava/io/File;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    const/4 p1, 0x1

    .line 105
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_2

    .line 123
    .line 124
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->unZipDpk(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_2
    sget-object p1, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->unZipDpk(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_3
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, v0}, Lq5/f;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->i3(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_4
    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_6

    .line 199
    .line 200
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    if-eqz p1, :cond_5

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_5
    const/16 p1, 0xc

    .line 223
    .line 224
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1, v0}, Lq5/f;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 232
    .line 233
    .line 234
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->unZipRom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 235
    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_6
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_8

    .line 249
    .line 250
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    if-eqz p1, :cond_7

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 279
    .line 280
    .line 281
    :cond_7
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1, v0}, Lq5/f;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugDownloadTasks:Ljava/util/List;

    .line 289
    .line 290
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->i3(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 294
    .line 295
    .line 296
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :cond_8
    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/GameTransferActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/GameTransferActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameTransferActivity;->dialogDismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkStorage(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->cacheRoot:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-wide v5, v3

    .line 29
    :goto_0
    cmp-long v2, v5, v3

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 42
    .line 43
    mul-float p1, p1, v2

    .line 44
    .line 45
    mul-float p1, p1, v2

    .line 46
    .line 47
    float-to-long v5, p1

    .line 48
    :cond_1
    cmp-long p1, v5, v0

    .line 49
    .line 50
    if-lez p1, :cond_2

    .line 51
    .line 52
    const-string p1, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\u4f20\u8f93\u5931\u8d25"

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->toast(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    return p1

    .line 59
    :cond_2
    const/4 p1, 0x1

    .line 60
    return p1
.end method

.method private checkStorageAccept(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->cacheRoot:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-wide v5, v3

    .line 29
    :goto_0
    cmp-long v2, v5, v3

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 42
    .line 43
    mul-float v2, v2, v3

    .line 44
    .line 45
    mul-float v2, v2, v3

    .line 46
    .line 47
    float-to-long v5, v2

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const-wide/16 v7, 0x2

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    sget-object v2, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    sget-object p1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    :goto_1
    mul-long v5, v5, v7

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    sget-object p1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    :goto_2
    cmp-long p1, v5, v0

    .line 146
    .line 147
    if-lez p1, :cond_7

    .line 148
    .line 149
    const-string p1, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\u4f20\u8f93\u5931\u8d25"

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->toast(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const/4 p1, 0x0

    .line 155
    return p1

    .line 156
    :cond_7
    const/4 p1, 0x1

    .line 157
    return p1
.end method

.method private copyRomArchives(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/Util/o3;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/RomArchived;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    new-instance v3, Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v5, Ljava/io/File;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v2, v3}, Lcom/join/mgps/Util/o0;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_0

    .line 99
    .line 100
    new-instance v2, Ljava/io/File;

    .line 101
    .line 102
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_0

    .line 110
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v4, Ljava/io/File;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Lcom/join/mgps/Util/o0;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_2
    return-void
.end method

.method private dialogDismiss()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v1, ""

    .line 23
    .line 24
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1, v0}, Lcom/papa/sim/statistic/t;->n0(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method private getDownloadTaskFromAlreadyDownloadedTask(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v0, v2, :cond_2

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 40
    .line 41
    .line 42
    move-object v1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    return-object v1
.end method

.method private getDownloadTaskFromAlreadyDownloadedTaskByIndex(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    return-object p1
.end method

.method private transferFile(Ljava/io/File;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/mgps/socket/entity/d;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "."

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/join/mgps/Util/o0;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/entity/d;->f(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/entity/d;->g(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/socket/entity/d;->h(J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/entity/d;->i(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/join/mgps/activity/GameTransferActivity;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "transferFile: \u6587\u4ef6\u540d\u79f0"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/socket/entity/d;->a()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    invoke-virtual {p2, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/b;->j(Lcom/join/mgps/socket/entity/d;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, p2, p1}, Lcom/papa/sim/statistic/t;->q0(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method private unZipDpk(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x6

    .line 12
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0xc

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Lq5/f;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->i3(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/join/mgps/task/e;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v0, p1, v1, v2}, Lcom/join/mgps/task/e;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private unZipRom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x6

    .line 12
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/join/mgps/Util/z;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "/roms"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->i3(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/join/mgps/task/h;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-direct {v1, p1, v2, v0}, Lcom/join/mgps/task/h;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private zipAndroidData(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/activity/GameTransferActivity;->PATH_ANDROID_DATA:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/GameTransferActivity;->zipDpk(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method private zipAndroidOBB(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/activity/GameTransferActivity;->PATH_ANDROID_OBB:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/GameTransferActivity;->zipDpk(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method private zipDpk(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "pathData"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x5

    .line 12
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0xb

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 67
    .line 68
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/io/File;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->cacheRoot:Ljava/io/File;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v3, ".zip"

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_1

    .line 127
    .line 128
    new-instance v1, Ljava/io/File;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 138
    .line 139
    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_2

    .line 145
    .line 146
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_1
    move-exception v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_3

    .line 163
    .line 164
    :try_start_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 165
    .line 166
    .line 167
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 169
    .line 170
    mul-float v1, v1, v3

    .line 171
    .line 172
    mul-float v1, v1, v3

    .line 173
    .line 174
    float-to-long v3, v1

    .line 175
    goto :goto_2

    .line 176
    :catch_2
    move-exception v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :cond_3
    const-wide/16 v3, 0x0

    .line 181
    .line 182
    :goto_2
    move-wide v6, v3

    .line 183
    new-instance v1, Lcom/join/mgps/activity/GameTransferActivity$d;

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    move-object v3, v1

    .line 190
    move-object v4, p0

    .line 191
    move-object v5, v0

    .line 192
    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/activity/GameTransferActivity$d;-><init>(Lcom/join/mgps/activity/GameTransferActivity;Ljava/io/File;JLjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 196
    .line 197
    .line 198
    invoke-static {p2, v0}, Lcom/join/mgps/Util/s3;->k(Ljava/util/Collection;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    return-object p1

    .line 209
    :catchall_0
    move-exception p1

    .line 210
    goto :goto_3

    .line 211
    :catch_3
    move-exception p2

    .line 212
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    new-instance v3, Lcom/join/mgps/event/e0;

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const/16 v4, 0x8

    .line 226
    .line 227
    invoke-direct {v3, v4, p1}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 234
    .line 235
    .line 236
    const-string p1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 239
    .line 240
    .line 241
    return-object p1

    .line 242
    :goto_3
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 243
    .line 244
    .line 245
    throw p1
.end method

.method private zipRom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x5

    .line 12
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v7, Ljava/io/File;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->cacheRoot:Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, ".zip"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    new-instance v1, Ljava/io/File;

    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_1

    .line 94
    .line 95
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 114
    .line 115
    .line 116
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 118
    .line 119
    mul-float v1, v1, v2

    .line 120
    .line 121
    mul-float v1, v1, v2

    .line 122
    .line 123
    float-to-long v1, v1

    .line 124
    goto :goto_1

    .line 125
    :catch_1
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :cond_2
    const-wide/16 v1, 0x0

    .line 130
    .line 131
    :goto_1
    move-wide v4, v1

    .line 132
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->copyRomArchives(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 133
    .line 134
    .line 135
    new-instance v8, Lcom/join/mgps/activity/GameTransferActivity$d;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    move-object v1, v8

    .line 142
    move-object v2, p0

    .line 143
    move-object v3, v7

    .line 144
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/GameTransferActivity$d;-><init>(Lcom/join/mgps/activity/GameTransferActivity;Ljava/io/File;JLjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v7}, Lcom/join/mgps/Util/s3;->i(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v1}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    return-object p1

    .line 162
    :catchall_0
    move-exception p1

    .line 163
    goto :goto_2

    .line 164
    :catch_2
    move-exception v0

    .line 165
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v2, Lcom/join/mgps/event/e0;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const/16 v3, 0x8

    .line 179
    .line 180
    invoke-direct {v2, v3, p1}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v7}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 187
    .line 188
    .line 189
    const-string p1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    .line 191
    invoke-virtual {v8, v1}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 192
    .line 193
    .line 194
    return-object p1

    .line 195
    :goto_2
    invoke-virtual {v8, v1}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 196
    .line 197
    .line 198
    throw p1
.end method


# virtual methods
.method public addAll(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 19
    .line 20
    add-int v4, v0, v1

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/join/mgps/dto/GameTransferBean;

    .line 27
    .line 28
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method backAchivedData(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {v0, v1, p1}, Lcom/join/mgps/Util/o3;->h(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method bindService()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v1, Lcom/join/mgps/service/SocketServerService;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v1, Lcom/join/mgps/service/SocketClientService;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->connection:Landroid/content/ServiceConnection;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public canApClientConnect(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clients"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/event/h;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->zClientNum:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    add-int/2addr p1, v0

    .line 14
    iput p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->zClientNum:I

    .line 15
    .line 16
    if-le p1, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->zClientNum:I

    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method checkeVersion(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    const-string v0, ":"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    aget-object v0, p1, v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentAcceptId:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aget-object v1, p1, v1

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    aget-object p1, p1, v2

    .line 32
    .line 33
    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentAcceptId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameTransferActivity;->getPlugTaskListIndex(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentAcceptId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameTransferActivity;->getDownloadTaskListIndex(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->recevedDownloadTask:Ljava/util/Map;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentAcceptId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/GameTransferActivity;->checkStorageAccept(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->updateReceiverSdCardSizeLimite(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/b;->e(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    const/4 v0, -0x1

    .line 84
    if-ne v3, v0, :cond_8

    .line 85
    .line 86
    sget-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    if-eqz v4, :cond_6

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v0, v2, p1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v4}, Lq5/f;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentAcceptId:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/4 v2, 0x5

    .line 136
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->i3(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {v0, v2, p1}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-le v0, p1, :cond_4

    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->h()V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_9

    .line 200
    .line 201
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameTransferActivity;->getPlugVersionCode(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    goto :goto_1

    .line 206
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentAcceptId:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->getGameVersionCodeById(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-le v0, p1, :cond_a

    .line 221
    .line 222
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->h()V

    .line 231
    .line 232
    .line 233
    :cond_b
    :goto_2
    return-void
.end method

.method public chooseSendFileEvent(Lcom/join/mgps/dto/GameTransferBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->isSelectedTransfer()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->getDownloadTaskFromAlreadyDownloadedTask(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->can_choose_count:I

    .line 34
    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->is_select_all:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->select_all_txt:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->removeDownloadTaskFromTransferList(Lcom/join/mgps/dto/GameTransferBean;)V

    .line 47
    .line 48
    .line 49
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->is_select_all:Z

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->is_select_all:Z

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->select_all_txt:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->setChooseGameNum(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->refreshEnableSendState()V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    return-void
.end method

.method combinSendTask(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contnt"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-class v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    aput-object v3, v1, v2

    .line 14
    .line 15
    const-class v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->receiverList:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public connectedEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectedStr"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "dis"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public deletFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->cacheRoot:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/task/b;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/join/mgps/task/b;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->fileRunable:Lcom/join/mgps/task/b;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mFuture:Ljava/util/concurrent/Future;

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public dialogEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "ok"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method doSomeAcceptFile(Lcom/join/mgps/socket/entity/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/socket/entity/c;->x:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->getHistoryGameTransferListIndex(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/join/mgps/dto/GameTransferBean;

    .line 21
    .line 22
    iget v2, p1, Lcom/join/mgps/socket/entity/c;->v:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameTransferBean;->setFilePath(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v2, p1, Lcom/join/mgps/socket/entity/c;->v:I

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-eq v2, v3, :cond_3

    .line 36
    .line 37
    const/4 p1, 0x3

    .line 38
    if-eq v2, p1, :cond_2

    .line 39
    .line 40
    const/4 p1, 0x4

    .line 41
    if-eq v2, p1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->acceptFileSuccess(Lcom/join/mgps/dto/GameTransferBean;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget p1, p1, Lcom/join/mgps/socket/entity/c;->u:I

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/GameTransferBean;->setProgerss(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method doSomeAfterSendFile(Lcom/join/mgps/socket/entity/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/socket/entity/c;->x:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->getGameTransferListIndex(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x3

    .line 12
    if-gez v0, :cond_3

    .line 13
    .line 14
    iget p1, p1, Lcom/join/mgps/socket/entity/c;->v:I

    .line 15
    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    if-ne p1, v2, :cond_2

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->startSend()V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void

    .line 24
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/join/mgps/dto/GameTransferBean;

    .line 35
    .line 36
    iget v5, p1, Lcom/join/mgps/socket/entity/c;->v:I

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget v3, p1, Lcom/join/mgps/socket/entity/c;->v:I

    .line 45
    .line 46
    const/4 v5, 0x2

    .line 47
    if-eq v3, v5, :cond_6

    .line 48
    .line 49
    const-string v5, ":::\u540d\u79f0::::"

    .line 50
    .line 51
    if-eq v3, v2, :cond_5

    .line 52
    .line 53
    if-eq v3, v1, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "SendFile:;;;;Failed index"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getGameName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->deletFile(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->startSend()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "SendFile:;;;;Success index"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getGameName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3, v2, v1}, Lcom/papa/sim/statistic/t;->r0(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->deletFile(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->startSend()V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_6
    iget p1, p1, Lcom/join/mgps/socket/entity/c;->u:I

    .line 150
    .line 151
    invoke-virtual {v4, p1}, Lcom/join/mgps/dto/GameTransferBean;->setProgerss(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 157
    .line 158
    .line 159
    :goto_0
    return-void
.end method

.method doSomeAfterView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->init()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->initData()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->initView()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method downloadTask2GameTransferBean(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)Lcom/join/mgps/dto/GameTransferBean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "status"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/GameTransferBean;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/dto/GameTransferBean;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTransferBean;->setId(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTransferBean;->setGameName(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTransferBean;->setFileType(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/GameTransferBean;->setFilePath(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/GameTransferBean;->setSize(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameTransferBean;->setIconUrl(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method findGamePlug()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugDownloadTasks:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    :goto_1
    if-eqz v2, :cond_1

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugTasks:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    :goto_2
    return-void
.end method

.method getDownloadTaskList()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->recevedDownloadTask:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->receiverList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->recevedDownloadTask:Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->receiverList:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x1

    .line 47
    if-ge v1, v2, :cond_1

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "getDownloadTask: \u540d\u79f0"

    .line 55
    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->receiverList:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->receiverList:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/GameTransferActivity;->downloadTask2GameTransferBean(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)Lcom/join/mgps/dto/GameTransferBean;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/o6;->a(Landroid/util/SparseArray;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lcom/join/mgps/adapter/x2;->m(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->receiverList:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v1, "getDownloadTask: \u4f20\u8f93\u8bb0\u5f55"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method getDownloadTaskListIndex(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    move v0, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    return v0
.end method

.method getGameTransferListIndex(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/join/mgps/dto/GameTransferBean;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    move v0, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    return v0
.end method

.method getGameVersionCode(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method getGameVersionCodeById(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->getDownloadTaskFromAlreadyDownloadedTask(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, ""

    .line 13
    .line 14
    :goto_0
    return-object p1
.end method

.method getHistoryGameTransferListIndex(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/join/mgps/dto/GameTransferBean;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, -0x1

    .line 37
    :goto_1
    return v1
.end method

.method getPlugTaskListIndex(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugDownloadTasks:Ljava/util/List;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugDownloadTasks:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v5, "getPlugTaskListIndex: \u662f\u5426\u5b58\u5728"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    move v0, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    return v0
.end method

.method getPlugVersionCode(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugDownloadTasks:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugDownloadTasks:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/socket/b;->d()Lcom/join/mgps/socket/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/f2;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->cacheRoot:Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->cacheRoot:Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->powerManager:Landroid/os/PowerManager;

    .line 38
    .line 39
    const v1, 0x1000001a

    .line 40
    .line 41
    .line 42
    const-string v2, "wf:lock"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->bindService()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method initData()V
    .locals 2

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lq5/f;->T(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lq5/f;->O()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugDownloadTasks:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugTasks:Ljava/util/List;

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameAndPlugTasks:Ljava/util/List;

    .line 42
    .line 43
    new-instance v0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->recevedDownloadTask:Ljava/util/Map;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->sendGameList:Ljava/util/List;

    .line 56
    .line 57
    new-instance v0, Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->initGameTransferList()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->can_choose_count:I

    .line 74
    .line 75
    new-instance v0, Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->accept_game_array:Landroid/util/SparseArray;

    .line 81
    .line 82
    return-void
.end method

.method initGameTransferList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameDownloadTasks:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/GameTransferActivity;->downloadTask2GameTransferBean(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)Lcom/join/mgps/dto/GameTransferBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method initRecyclerView()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/customview/DrawableDividerItemDecoration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const v3, 0x7f080fb0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-direct {v1, v2, v4, v5}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    invoke-virtual {v0, v6}, Landroid/view/View;->setOverScrollMode(I)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/customview/PaPaLinearLayoutManager;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/PaPaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 52
    .line 53
    .line 54
    iget-object v7, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 60
    .line 61
    iget-object v7, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {v0, v7}, Lcom/join/mgps/adapter/o6;->i(Landroid/util/SparseArray;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    iget-object v7, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 69
    .line 70
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_historyList:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    new-instance v7, Lcom/join/mgps/customview/DrawableDividerItemDecoration;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-direct {v7, v3, v4, v5}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_historyList:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_historyList:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_historyList:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    invoke-virtual {v0, v6}, Landroid/view/View;->setOverScrollMode(I)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/join/mgps/customview/PaPaLinearLayoutManager;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/PaPaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_historyList:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->accept_game_array:Landroid/util/SparseArray;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/o6;->i(Landroid/util/SparseArray;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_historyList:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method initServerAndClient()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/socket/server/a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->mSocket:Ljava/net/Socket;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/socket/server/a;-><init>(Landroid/content/Context;Ljava/net/Socket;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->socketService:Lcom/join/mgps/socket/server/a;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/socket/client/a;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->mSocket:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/socket/client/a;-><init>(Landroid/content/Context;Ljava/net/Socket;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->client:Lcom/join/mgps/socket/client/a;

    .line 36
    .line 37
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->lastReceiverTime:J

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->listenerSocketStatus()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->initRecyclerView()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->nagivationBarTextSelectedStatusChange(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->registApWifiStatus()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->listApClients()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->nagivationBarTextSelectedStatusChange(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->registWifiConnected()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->f()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method listApClients()V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/task/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-wide/16 v3, 0x7d0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/join/mgps/task/d;-><init>(Landroid/content/Context;ZJ)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->apClientRunable:Lcom/join/mgps/task/d;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->apClientFuture:Ljava/util/concurrent/Future;

    .line 20
    .line 21
    return-void
.end method

.method listenerSocketStatus()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity$e;-><init>(Lcom/join/mgps/activity/GameTransferActivity;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mRunable:Lcom/join/mgps/activity/GameTransferActivity$e;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mFuture:Ljava/util/concurrent/Future;

    .line 15
    .line 16
    return-void
.end method

.method nagivationBarTextSelectedStatusChange(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "which"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->left_nagivation_bar_txt:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->left_nagivation_bar_txt:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->right_nagivation_bar_txt:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_historyList:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->select_all_txt:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->select_num_txt:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroy_hint_rl:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v3, 0x2

    .line 57
    if-ne p1, v3, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->right_nagivation_bar_txt:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->right_nagivation_bar_txt:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->left_nagivation_bar_txt:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_transfer_historyList:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->select_all_txt:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->select_num_txt:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->showHistroyHint()Lorg/androidannotations/api/sharedpreferences/d;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_1

    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroy_hint_rl:Landroid/widget/RelativeLayout;

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    :cond_1
    :goto_0
    return-void
.end method

.method onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0737,
            0x7f0a0738,
            0x7f0a0746,
            0x7f0a0742,
            0x7f0a0741,
            0x7f0a0734
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "onClick: +\u65f6\u5019\u53ef\u7528"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 36
    .line 37
    if-ne p1, v1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->client:Lcom/join/mgps/socket/client/a;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/socket/client/a;->f()V

    .line 44
    .line 45
    .line 46
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->updateGameFileStatu2Waiting()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string p1, "\u8bf7\u7b49\u5f85\u5f53\u524d\u4f20\u8f93\u5b8c\u6210"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->toast(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :sswitch_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->edit()Lcom/join/mgps/pref/PrefDef_$a;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_$a;->L3()Lorg/androidannotations/api/sharedpreferences/c;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/c;->b(Z)Lorg/androidannotations/api/sharedpreferences/e;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/join/mgps/pref/PrefDef_$a;

    .line 78
    .line 79
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/e;->a()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroy_hint_rl:Landroid/widget/RelativeLayout;

    .line 83
    .line 84
    const/16 v0, 0x8

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :sswitch_2
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 91
    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->is_select_all:Z

    .line 95
    .line 96
    xor-int/2addr p1, v1

    .line 97
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->is_select_all:Z

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->select_all_txt:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 102
    .line 103
    .line 104
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->is_select_all:Z

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->updateGameListCheckStatus(Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :sswitch_3
    const/4 p1, 0x2

    .line 111
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->nagivationBarTextSelectedStatusChange(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :sswitch_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->nagivationBarTextSelectedStatusChange(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :sswitch_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->showExitDialog()V

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_0
    return-void

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x7f0a0734 -> :sswitch_5
        0x7f0a0737 -> :sswitch_4
        0x7f0a0738 -> :sswitch_3
        0x7f0a0741 -> :sswitch_2
        0x7f0a0742 -> :sswitch_1
        0x7f0a0746 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->socketService:Lcom/join/mgps/socket/server/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/socket/server/a;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->client:Lcom/join/mgps/socket/client/a;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/socket/client/a;->b()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->stopService()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->b()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/k;->i(Landroid/content/Context;)Lcom/join/mgps/Util/k;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/Util/k;->f()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->stopListenerSocketStatus()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->stopListenerApClients()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->unRegistReceiver()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 102
    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 106
    .line 107
    :cond_5
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x5

    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
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
    const/4 p2, 0x4

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->showExitDialog()V

    .line 5
    .line 6
    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public onSocketReceiverEvent(Lcom/join/mgps/socket/entity/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->lastReceiverTime:J

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "onSocketReceiverEvent: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->lastReceiverTime:J

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    instance-of v0, p1, Lcom/join/mgps/socket/entity/c;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    check-cast p1, Lcom/join/mgps/socket/entity/c;

    .line 31
    .line 32
    iget v0, p1, Lcom/join/mgps/socket/entity/c;->w:I

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->doSomeAfterSendFile(Lcom/join/mgps/socket/entity/c;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_1
    if-ne v0, v1, :cond_11

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->doSomeAcceptFile(Lcom/join/mgps/socket/entity/c;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_2
    instance-of v0, p1, Lcom/join/mgps/socket/entity/g;

    .line 49
    .line 50
    if-eqz v0, :cond_11

    .line 51
    .line 52
    check-cast p1, Lcom/join/mgps/socket/entity/g;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/join/mgps/socket/entity/g;->s:Ljava/lang/String;

    .line 55
    .line 56
    const-string v0, "$HB$"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v2, 0x2

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 66
    .line 67
    if-ne p1, v2, :cond_11

    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->k()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_3
    const-string v0, "$DMH$"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v3, 0x5

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->other_phone_modle_txt:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 95
    .line 96
    if-ne p1, v2, :cond_4

    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->f()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_4
    if-ne p1, v1, :cond_11

    .line 106
    .line 107
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->client:Lcom/join/mgps/socket/client/a;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/join/mgps/socket/client/a;->e()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :cond_5
    const-string v0, "$TLH$"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/4 v2, 0x0

    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 124
    .line 125
    if-ne v0, v1, :cond_6

    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->client:Lcom/join/mgps/socket/client/a;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/join/mgps/socket/client/a;->f()V

    .line 130
    .line 131
    .line 132
    :cond_6
    const-string v0, ":"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    add-int/2addr v0, v1

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->combinSendTask(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->receiverList:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-ne p1, v3, :cond_7

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->getDownloadTaskList()V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->g()V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->a()V

    .line 174
    .line 175
    .line 176
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 179
    .line 180
    .line 181
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 182
    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v0, "onSocketReceiverEvent: \u662f\u5426\u53ef\u7528"

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_8
    const-string v0, "$TLO$"

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_9

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->startSend()V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :cond_9
    const-string v0, "$SSSSLH$"

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    const/16 v4, 0x8

    .line 224
    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->updateReceiverSdCardSizeLimite(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_a
    const-string v0, "$SRSSLH$"

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_b

    .line 242
    .line 243
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->updateSendSdCardSizeLimite(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_b
    const-string v0, "$STH$"

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->checkeVersion(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_c
    const-string v0, "$STY$"

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_d

    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->sendGame()V

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_d
    const-string v0, "$STN$"

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_e

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->updateNoSenderItem()V

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_e
    const-string v0, "$SNSUUO$"

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-eqz v0, :cond_f

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->updateNoAccepterItem()V

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_f
    const-string v0, "$SSSF$"

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_11

    .line 310
    .line 311
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 312
    .line 313
    if-ne p1, v1, :cond_10

    .line 314
    .line 315
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->client:Lcom/join/mgps/socket/client/a;

    .line 316
    .line 317
    if-eqz p1, :cond_10

    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/join/mgps/socket/client/a;->e()V

    .line 320
    .line 321
    .line 322
    :cond_10
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 323
    .line 324
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 325
    .line 326
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 327
    .line 328
    .line 329
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 330
    .line 331
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 332
    .line 333
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/x2;->m(Z)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 337
    .line 338
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 339
    .line 340
    .line 341
    :cond_11
    :goto_1
    return-void
.end method

.method refreshEnableSendState()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method registApWifiStatus()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/receiver/ApWifiConnectedReceiver;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/join/mgps/receiver/ApWifiConnectedReceiver;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->apWifiConnectedReceiver:Lcom/join/mgps/receiver/ApWifiConnectedReceiver;

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method registWifiConnected()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/receiver/NetWorkConnectedReceiver;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/join/mgps/receiver/NetWorkConnectedReceiver;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->netWorkConnectedReceiver:Lcom/join/mgps/receiver/NetWorkConnectedReceiver;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public removeDownloadTaskFromTransferList(Lcom/join/mgps/dto/GameTransferBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {v1, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public removeFromMiddleItem(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-le p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    if-ge p1, v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 37
    .line 38
    add-int/lit8 v2, p1, 0x1

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/join/mgps/dto/GameTransferBean;

    .line 45
    .line 46
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move p1, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method sendGame()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    sget-object v0, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->zipAndroidData(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/io/File;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_8

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    sget-object v0, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 78
    .line 79
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->zipAndroidOBB(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Ljava/io/File;

    .line 84
    .line 85
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/16 v1, 0xb

    .line 102
    .line 103
    if-ne v0, v1, :cond_3

    .line 104
    .line 105
    new-instance v1, Ljava/io/File;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 162
    .line 163
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->zipRom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_5

    .line 172
    .line 173
    return-void

    .line 174
    :cond_5
    new-instance v1, Ljava/io/File;

    .line 175
    .line 176
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 209
    .line 210
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :catch_1
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    .line 217
    .line 218
    :cond_7
    :goto_0
    const/4 v1, 0x0

    .line 219
    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_9

    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 228
    .line 229
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/activity/GameTransferActivity;->transferFile(Ljava/io/File;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_9
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 238
    .line 239
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    const/16 v3, 0x8

    .line 246
    .line 247
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :goto_2
    return-void
.end method

.method sendTaskList()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->findGamePlug()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameAndPlugTasks:Ljava/util/List;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameAndPlugTasks:Ljava/util/List;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugTasks:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameAndPlugTasks:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/b;->n(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->plugTasks:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameAndPlugTasks:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->iteratorDownloadTask:Ljava/util/Iterator;

    .line 42
    .line 43
    return-void
.end method

.method setChooseGameNum(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    aput-object p1, v1, v2

    .line 14
    .line 15
    const p1, 0x7f1200a6

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->select_num_txt:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method showDialog()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 10
    .line 11
    const v1, 0x7f0d00fc

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 18
    .line 19
    const v1, 0x7f0a04b1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/Button;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 29
    .line 30
    const v2, 0x7f0a04b8

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/Button;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 40
    .line 41
    const v3, 0x7f0a1762

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/widget/TextView;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 51
    .line 52
    const v4, 0x7f0a04bb

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/widget/TextView;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 62
    .line 63
    const v5, 0x7f0a04bd

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroid/widget/TextView;

    .line 71
    .line 72
    const-string v5, "\u63d0\u793a"

    .line 73
    .line 74
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "\u9000\u51fa\u4f1a\u4e2d\u65ad\u8fde\u63a5\u53ca\u6b63\u5728\u8fdb\u884c\u7684\u4f20\u8f93\uff0c\u786e\u8ba4\u9000\u51fa\u5417\uff1f"

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    const/16 v2, 0x8

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    const-string v2, "\u786e\u8ba4"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    const-string v2, "\u53d6\u6d88"

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lcom/join/mgps/activity/GameTransferActivity$b;

    .line 98
    .line 99
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameTransferActivity$b;-><init>(Lcom/join/mgps/activity/GameTransferActivity;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity$c;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity$c;-><init>(Lcom/join/mgps/activity/GameTransferActivity;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 114
    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    .line 123
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 127
    .line 128
    .line 129
    :cond_1
    return-void
.end method

.method showExitDialog()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->showDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method sortState()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/join/mgps/dto/GameTransferBean;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x3

    .line 32
    if-ne v4, v5, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/GameTransferActivity;->removeFromMiddleItem(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->addAll(Landroid/util/SparseArray;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method startSend()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->iteratorDownloadTask:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->iteratorDownloadTask:Ljava/util/Iterator;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    invoke-direct {p0, v3}, Lcom/join/mgps/activity/GameTransferActivity;->checkStorage(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ":"

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/b;->m(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/b;->l(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->updateSendSdCardSizeLimite(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    if-ne v0, v1, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->client:Lcom/join/mgps/socket/client/a;

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/socket/client/a;->e()V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->o()V

    .line 99
    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 103
    .line 104
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/x2;->m(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameAndPlugTasks:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->updateTransferProgress()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method stopListenerApClients()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->apClientRunable:Lcom/join/mgps/task/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->apClientFuture:Ljava/util/concurrent/Future;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->apClientRunable:Lcom/join/mgps/task/d;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/task/d;->d(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->apClientFuture:Ljava/util/concurrent/Future;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method stopListenerSocketStatus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mRunable:Lcom/join/mgps/activity/GameTransferActivity$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->mFuture:Ljava/util/concurrent/Future;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameTransferActivity$e;->a(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mFuture:Ljava/util/concurrent/Future;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method stopService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->connection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->Flag:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v1, Lcom/join/mgps/service/SocketServerService;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    const-class v1, Lcom/join/mgps/service/SocketClientService;

    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->mContext:Landroid/content/Context;

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

.method unRegistReceiver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->netWorkConnectedReceiver:Lcom/join/mgps/receiver/NetWorkConnectedReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->apWifiConnectedReceiver:Lcom/join/mgps/receiver/ApWifiConnectedReceiver;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method updateGameFileStatu2Waiting()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->game_array:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "updateGameFileStatu2Waiting: size"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    const/4 v4, 0x1

    .line 38
    if-ge v3, v1, :cond_1

    .line 39
    .line 40
    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/GameTransferActivity;->getGameTransferListIndex(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Lcom/join/mgps/dto/GameTransferBean;

    .line 61
    .line 62
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v2}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->sendGameList:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Lcom/join/mgps/adapter/x2;->m(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->sendTaskList()V

    .line 90
    .line 91
    .line 92
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->can_choose_count:I

    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    sub-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->can_choose_count:I

    .line 102
    .line 103
    :cond_2
    :goto_1
    return-void
.end method

.method updateGameListCheckStatus(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "check"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v1, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/join/mgps/dto/GameTransferBean;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->sendGameList:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v6, "updateGameListCheckStatus: index:::"

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v6, ":::checked:::"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p1}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/GameTransferActivity;->getDownloadTaskFromAlreadyDownloadedTask(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_2

    .line 76
    .line 77
    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameTransferActivity;->removeDownloadTaskFromTransferList(Lcom/join/mgps/dto/GameTransferBean;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->transferGames:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->setChooseGameNum(I)V

    .line 109
    .line 110
    .line 111
    if-lez p1, :cond_4

    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    .line 124
    .line 125
    :cond_5
    :goto_2
    return-void
.end method

.method updateGameListFileStatu(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "status"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/join/mgps/dto/GameTransferBean;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3, p2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    return-void
.end method

.method updateHistoryGameListStatu(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "status"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/join/mgps/dto/GameTransferBean;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3, p2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    return-void
.end method

.method updateNoAccepterItem()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentAcceptId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentAcceptId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->getHistoryGameTransferListIndex(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v0, v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/join/mgps/dto/GameTransferBean;

    .line 38
    .line 39
    const/16 v3, 0x64

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setProgerss(I)V

    .line 42
    .line 43
    .line 44
    const/16 v3, 0x9

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 47
    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method updateNoSenderItem()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->currentSendTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->getGameTransferListIndex(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v0, v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/join/mgps/dto/GameTransferBean;

    .line 38
    .line 39
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/t;->r0(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/16 v3, 0x64

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setProgerss(I)V

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x3

    .line 64
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->q()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->startSend()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->q()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->startSend()V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    return-void
.end method

.method updateReceiverSdCardSizeLimite(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->getHistoryGameTransferListIndex(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/dto/GameTransferBean;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->histroyGameListAdapter:Lcom/join/mgps/adapter/v2;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method updateSendSdCardSizeLimite(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->getGameTransferListIndex(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-gez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->startSend()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/join/mgps/dto/GameTransferBean;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->startSend()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method declared-synchronized updateTransferProgress()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->gameListAdapter:Lcom/join/mgps/adapter/x2;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o6;->c()Landroid/util/SparseArray;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->sending:Z

    .line 9
    .line 10
    const v2, 0x7f120158

    .line 11
    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->sendGameList:Ljava/util/List;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_1
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-ge v4, v6, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lcom/join/mgps/dto/GameTransferBean;

    .line 41
    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/4 v7, 0x3

    .line 49
    if-ne v6, v7, :cond_1

    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-string v0, "\u5df2\u5b8c\u6210 %s/%s"

    .line 57
    .line 58
    if-lez v1, :cond_3

    .line 59
    .line 60
    if-ge v5, v1, :cond_3

    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 63
    .line 64
    const/4 v4, 0x2

    .line 65
    new-array v4, v4, [Ljava/lang/Object;

    .line 66
    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, ""

    .line 76
    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    aput-object v5, v4, v3

    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ""

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const/4 v3, 0x1

    .line 104
    aput-object v1, v4, v3

    .line 105
    .line 106
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->refreshEnableSendState()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->tansfer_ok_btn:Landroid/widget/Button;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->sortState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    monitor-exit p0

    .line 132
    return-void

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    monitor-exit p0

    .line 135
    throw v0
.end method

.method public zipEvent(Lcom/join/mgps/event/e0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/event/e0;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->lastReceiverTime:J

    .line 11
    .line 12
    iget p1, p1, Lcom/join/mgps/event/e0;->a:I

    .line 13
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    const/16 p1, 0x9

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->updateHistoryGameListStatu(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->recevedDownloadTask:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->backAchivedData(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->deletFile(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    const/16 p1, 0x8

    .line 43
    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->updateHistoryGameListStatu(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_2
    const/4 p1, 0x7

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->updateHistoryGameListStatu(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_3
    const/4 p1, 0x6

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->updateHistoryGameListStatu(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_4
    const/4 p1, 0x5

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->updateGameListFileStatu(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->scManager:Lcom/join/mgps/socket/b;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->p()V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
