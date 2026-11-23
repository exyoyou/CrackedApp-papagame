.class public Lcom/join/mgps/activity/MiniGameLoadingActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MiniGameLoadingActivity$f;,
        Lcom/join/mgps/activity/MiniGameLoadingActivity$ModReceiver;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0081
.end annotation


# static fields
.field public static final KEY_MOD_INFO:Ljava/lang/String; = "_mod_info"

.field private static factory:Lcom/github/snowdream/android/app/downloader/b; = null

.field static listener:Lcom/github/snowdream/android/app/downloader/b$b; = null

.field public static retryCount:I = 0x0

.field public static final retryTotalCount:I = 0x2

.field private static tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allTaskInQueue:Z

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private executor:Ljava/util/concurrent/Executor;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isCopyFinish:Z

.field isLaunchAfterDown:Z

.field isLaunchApp:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isLaunching:Z

.field ll_back:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field modCode:I

.field modPath:Ljava/lang/String;

.field modReceiver:Lcom/join/mgps/activity/MiniGameLoadingActivity$ModReceiver;

.field modType:I

.field modVersion:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field pb_progress:Lcom/join/mgps/customview/PictureHProgress;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

.field private sModInfo:Ljava/lang/String;

.field sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field soCopyFinishTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field soCopyStartTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private totalObbLength:J

.field tv_cancel:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_loading_progress:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_speed:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tasks:Ljava/util/Map;

    .line 8
    .line 9
    sput v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->retryCount:I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->allTaskInQueue:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->soCopyStartTasks:Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->soCopyFinishTasks:Ljava/util/List;

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunching:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isCopyFinish:Z

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->sModInfo:Ljava/lang/String;

    .line 28
    .line 29
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->totalObbLength:J

    .line 32
    .line 33
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    const/4 v5, 0x2

    .line 37
    const-wide/16 v6, 0x0

    .line 38
    .line 39
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    .line 41
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    .line 43
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 44
    .line 45
    .line 46
    move-object v3, v1

    .line 47
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunchApp:Z

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunchAfterDown:Z

    .line 58
    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->prepare()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->copyExtFile()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/MiniGameLoadingActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->showProgress(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/MiniGameLoadingActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->showSpeedStatus(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tasks:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/MiniGameLoadingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->sModInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/MiniGameLoadingActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->totalObbLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$602(Lcom/join/mgps/activity/MiniGameLoadingActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->totalObbLength:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->calculateSize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/MiniGameLoadingActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isCopyFinish:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$802(Lcom/join/mgps/activity/MiniGameLoadingActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isCopyFinish:Z

    .line 2
    .line 3
    return p1
.end method

.method private calculateSize()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/MiniGameLoadingActivity$e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$e;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private declared-synchronized copyExtFile()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    .line 3
    .line 4
    new-instance v1, Lcom/join/mgps/activity/MiniGameLoadingActivity$d;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$d;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method private handleIntent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "isLaunchApp"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunchApp:Z

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "\u6e38\u620f\u6570\u636e\u83b7\u53d6\u9519\u8bef"

    .line 35
    .line 36
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v2, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_name:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunchApp:Z

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v2, "packageName"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, "modPath"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modPath:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v2, "modVersion"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modVersion:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v2, "modCode"

    .line 108
    .line 109
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iput v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modCode:I

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v2, "modType"

    .line 120
    .line 121
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modType:I

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v2, "userId"

    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->userId:I

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v2, "_mod_info"

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->sModInfo:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Lcom/join/mgps/activity/MiniGameLoadingActivity$ModReceiver;

    .line 178
    .line 179
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$ModReceiver;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 180
    .line 181
    .line 182
    iput-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modReceiver:Lcom/join/mgps/activity/MiniGameLoadingActivity$ModReceiver;

    .line 183
    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    .line 185
    .line 186
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyStart"

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFail"

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v2, "com.join.android.app.mgsim.wufun.loadMod"

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modReceiver:Lcom/join/mgps/activity/MiniGameLoadingActivity$ModReceiver;

    .line 210
    .line 211
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->checkModAndStart(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pullUpMessengerSrv()V

    .line 220
    .line 221
    .line 222
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->showSpeedStatus(Z)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_loading_progress:Landroid/widget/TextView;

    .line 226
    .line 227
    const-string v1, "\u542f\u52a8\u4e2d..."

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_3
    const/4 v0, 0x1

    .line 234
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->showProgress(Z)V

    .line 235
    .line 236
    .line 237
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->showSpeedStatus(Z)V

    .line 238
    .line 239
    .line 240
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunchApp:Z

    .line 241
    .line 242
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->switchStatus(Z)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->lambda$checkReady$2()V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/activity/MiniGameLoadingActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->lambda$checkReady$4(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$checkReady$2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$checkReady$3(Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/k;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/join/mgps/va/overmind/k;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/k;->f0()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    const/4 v2, 0x3

    .line 37
    if-ge v1, v2, :cond_0

    .line 38
    .line 39
    aget-object v2, v0, v1

    .line 40
    .line 41
    invoke-static {v2}, Lcom/join/mgps/Util/o0;->m(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/o7;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o7;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v1, 0x1388

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private synthetic lambda$checkReady$4(Landroid/os/Handler;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunching:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

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
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunching:Z

    .line 14
    .line 15
    new-instance v1, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "wf_app_mode"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "wf_mobile"

    .line 53
    .line 54
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v2, "wf_share_data"

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->userId:I

    .line 71
    .line 72
    iget-object v3, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/join/mgps/va/overmind/i;->f0(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Ljava/lang/Thread;

    .line 78
    .line 79
    new-instance v1, Lcom/join/mgps/activity/l7;

    .line 80
    .line 81
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/l7;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;Landroid/os/Handler;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->a(Z)V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 100
    .line 101
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$launchMiniGame$0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->startVmGameV2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1
.end method

.method private synthetic lambda$showToast$1(Ljava/lang/String;)V
    .locals 1

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

.method private launchMiniGame()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMiniGame()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSingleGame()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isH5VmGame()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    :cond_1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    new-instance v1, Lcom/join/mgps/activity/k7;

    .line 61
    .line 62
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/k7;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->h(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->startVmGameV2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 73
    .line 74
    .line 75
    :cond_4
    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/activity/MiniGameLoadingActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->lambda$launchMiniGame$0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/join/mgps/activity/MiniGameLoadingActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->lambda$checkReady$3(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic o(Lcom/join/mgps/activity/MiniGameLoadingActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->lambda$showToast$1(Ljava/lang/String;)V

    return-void
.end method

.method private prepare()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lma/g;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    iget v3, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->userId:I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v1, v2, v4, v3}, Lma/g;->f(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v3, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/va/overmind/i$a;->g()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v5, 0x1

    .line 39
    xor-int/2addr v3, v5

    .line 40
    iget-object v6, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modPath:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v6, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modPath:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v6}, Lcom/join/mgps/va/overmind/c;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    :goto_0
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v7, Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {v7, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    invoke-interface {v7, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-lez v6, :cond_10

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_4

    .line 94
    .line 95
    :goto_1
    const/4 v6, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const/4 v6, 0x0

    .line 98
    :goto_2
    invoke-interface {v7}, Ljava/util/Set;->size()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-lez v8, :cond_7

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-static {v7}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_6

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    invoke-static {v7}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-nez v6, :cond_6

    .line 118
    .line 119
    :goto_3
    const/4 v4, 0x1

    .line 120
    :cond_6
    move v6, v4

    .line 121
    :cond_7
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 122
    .line 123
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v6, :cond_9

    .line 126
    .line 127
    if-eqz v3, :cond_8

    .line 128
    .line 129
    invoke-static {v5, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    goto :goto_4

    .line 134
    :cond_8
    invoke-static {v4, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    goto :goto_4

    .line 139
    :cond_9
    if-eqz v3, :cond_a

    .line 140
    .line 141
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_a

    .line 146
    .line 147
    invoke-static {v4, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    goto :goto_4

    .line 152
    :cond_a
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_b

    .line 157
    .line 158
    invoke-static {v5, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    goto :goto_4

    .line 163
    :cond_b
    const/4 v2, 0x0

    .line 164
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_c

    .line 169
    .line 170
    return-void

    .line 171
    :cond_c
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->w()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_d

    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v1, "package:"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v3, "abiOverride:"

    .line 206
    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/va/overmind/i;->v0(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_d
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v3, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v0, v3}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_e

    .line 245
    .line 246
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    goto :goto_5

    .line 253
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    :goto_5
    invoke-static {}, Lcom/xinzhu/overmind/a;->f0()V

    .line 260
    .line 261
    .line 262
    new-instance v3, Ljava/io/File;

    .line 263
    .line 264
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 272
    .line 273
    if-eqz v0, :cond_f

    .line 274
    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_10

    .line 280
    .line 281
    :cond_f
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/va/overmind/i;->v0(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_10
    :goto_6
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const-string p1, "\u4e0b\u8f7d\u6587\u4ef6\u5df2\u5220\u9664"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_speed:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 24
    .line 25
    const/16 v0, 0x64

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private setStatusBar()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x4000000

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x500

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17
    .line 18
    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->statubar:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->statubar:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private showProgress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x4

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private showSpeedStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_speed:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x4

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private startVmGameV2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-class v3, Lcom/join/mgps/dto/ModInfoBean;

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/dto/ModInfoBean;

    .line 31
    .line 32
    new-instance v2, Lcom/join/mgps/mod/bean/ModMeta;

    .line 33
    .line 34
    invoke-direct {v2}, Lcom/join/mgps/mod/bean/ModMeta;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/join/mgps/mod/bean/ModMeta;->setPackageName(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Lcom/join/mgps/mod/bean/ModMeta;->setModPath(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, ""

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Lcom/join/mgps/mod/bean/ModMeta;->setModVersion(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {v2, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setModCode(I)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v2, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setGameId(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setModType(I)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget-object v3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Lcom/join/android/app/common/utils/q;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v2, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setAndroidId(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v0, "wufun"

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setPlatform(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setPackage_type(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setTypeId(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v0, v3}, Lcom/join/mgps/va/overmind/i;->h0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    :goto_0
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, p0, v2, p1}, Lcom/join/mgps/va/overmind/i;->c0(Landroid/content/Context;Lcom/join/mgps/mod/bean/ModMeta;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    const/4 v2, 0x1

    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    const/4 v6, 0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    .line 162
    const/4 v1, 0x2

    .line 163
    const/4 v6, 0x2

    .line 164
    goto :goto_1

    .line 165
    :cond_2
    const/4 v6, 0x0

    .line 166
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-virtual/range {v3 .. v9}, Lcom/papa/sim/statistic/t;->i1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_3

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->Q4(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->Q4(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :goto_2
    return v2

    .line 223
    :cond_4
    return v1
.end method

.method private switchStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLaunchApp"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_cancel:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->ll_back:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_cancel:Landroid/widget/TextView;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->ll_back:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0xc

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x5

    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunchApp:Z

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 51
    .line 52
    const/16 v1, 0x64

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_speed:Landroid/widget/TextView;

    .line 58
    .line 59
    const-string v1, ""

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    long-to-int v3, v2

    .line 100
    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_loading_progress:Landroid/widget/TextView;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v3, "\u6e38\u620f\u52a0\u8f7d\u4e2d "

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v3, "% \n\u4f53\u9a8c\u540e\u53ef\u5bf9\u6e38\u620f\u8fdb\u884c\u8bc4\u4ef7\u54e6"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_speed:Landroid/widget/TextView;

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v3, "\u5f53\u524d\u7f51\u901f "

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, "/s"

    .line 154
    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->setStatusBar()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "\u6e38\u620f\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->handleIntent()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0ed5
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method cancel()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1936
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method checkModAndStart(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "\u6e38\u620f\u4fe1\u606f[ID]\u7f3a\u5931"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->showToast(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->sModInfo:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/join/mgps/Util/o0;->D(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modNeedUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->startUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->startCopyFile()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method declared-synchronized checkReady()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->soCopyStartTasks:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->soCopyFinishTasks:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/join/mgps/activity/n7;

    .line 39
    .line 40
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/n7;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v2, 0x7d0

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_2
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0

    .line 52
    throw v0
.end method

.method public initPreDownloadFactory()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->listener:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 13
    .line 14
    sget-object v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method modNeedUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/16 v3, 0x9

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getStatus()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p1, v3, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_2
    :goto_0
    return v0

    .line 39
    :cond_3
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getStatus()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-ne p1, v3, :cond_5

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    :cond_5
    :goto_1
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunching:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modReceiver:Lcom/join/mgps/activity/MiniGameLoadingActivity$ModReceiver;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->a(Z)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 30
    .line 31
    :cond_1
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
    move-result p1

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p1, v2, :cond_6

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq p1, v3, :cond_5

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-eq p1, v2, :cond_4

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    if-eq p1, v1, :cond_3

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    const/16 v3, 0x8

    .line 26
    .line 27
    if-eq p1, v3, :cond_1

    .line 28
    .line 29
    const/16 v4, 0x30

    .line 30
    .line 31
    if-eq p1, v4, :cond_0

    .line 32
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_0
    const/16 p1, 0x9

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_2
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    if-eqz v0, :cond_7

    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->gameId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_7

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_loading_progress:Landroid/widget/TextView;

    .line 73
    .line 74
    const-string v0, "\u6e38\u620f\u5b89\u88c5\u4e2d...\n\u4f53\u9a8c\u540e\u53ef\u5bf9\u6e38\u620f\u8fdb\u884c\u8bc4\u4ef7\u54e6"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_speed:Landroid/widget/TextView;

    .line 80
    .line 81
    const/4 v0, 0x4

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_cancel:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateProgressPartly()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 109
    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunchAfterDown:Z

    .line 112
    .line 113
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->launchMiniGame()V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 122
    .line 123
    .line 124
    :cond_7
    :goto_0
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->handleIntent()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method pullUpMessengerSrv()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MiniGameLoadingActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$a;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
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

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m7;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method startCopyFile()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunchApp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->isLaunchAfterDown:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->showProgress(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->a(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 23
    .line 24
    :cond_0
    new-instance v1, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->a(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/MiniGameLoadingActivity$f;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v0, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method startUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->initPreDownloadFactory()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    move-object v3, v0

    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ", mod url null error, vm="

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->startCopyFile()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ".mod"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    sget-object v1, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, "mod/"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, "/"

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    new-instance p1, Lcom/github/snowdream/android/app/downloader/c;

    .line 117
    .line 118
    const-wide/16 v6, 0x0

    .line 119
    .line 120
    move-object v2, p1

    .line 121
    invoke-direct/range {v2 .. v7}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    sget-object v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tasks:Ljava/util/Map;

    .line 130
    .line 131
    if-nez v0, :cond_3

    .line 132
    .line 133
    return-void

    .line 134
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, ""

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget-object v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tasks:Ljava/util/Map;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    return-void

    .line 170
    :cond_5
    sget-object v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tasks:Ljava/util/Map;

    .line 171
    .line 172
    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v2, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tasks:Ljava/util/Map;

    .line 174
    .line 175
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw p1

    .line 183
    :cond_6
    :goto_1
    return-void
.end method

.method updateLaunchProgress(I)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 4
    .line 5
    .line 6
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
