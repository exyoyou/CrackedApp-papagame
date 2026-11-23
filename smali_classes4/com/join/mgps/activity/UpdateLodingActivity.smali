.class public Lcom/join/mgps/activity/UpdateLodingActivity;
.super Lcom/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/service/UpdateLodingService$d;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d088a
.end annotation


# instance fields
.field private activityHasDestroy:Z

.field private conn:Landroid/content/ServiceConnection;

.field context:Landroid/content/Context;

.field private countService:Lcom/join/mgps/service/UpdateLodingService;

.field private downloadType:I

.field emuApkTable:Lcom/join/mgps/db/tables/EMUApkTable;

.field isFight:Z

.field lodingBackImage:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lodingMessage:Lcom/join/mgps/service/UpdateLodingService$d;

.field matchOrLocal:I

.field private peizhiMustUpdate:Z

.field peizhiNewUpdate:Z

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field progressmessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field romeMustUpdate:Z

.field romeNewUpdate:Z

.field private serviceBinder:Lcom/join/mgps/service/UpdateLodingService$c;

.field simpleDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private sourceMustUpdate:Z

.field sourceNewUpdate:Z

.field uZIPLoading:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->activityHasDestroy:Z

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/activity/UpdateLodingActivity$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UpdateLodingActivity$a;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->conn:Landroid/content/ServiceConnection;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->serviceBinder:Lcom/join/mgps/service/UpdateLodingService$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService$c;)Lcom/join/mgps/service/UpdateLodingService$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->serviceBinder:Lcom/join/mgps/service/UpdateLodingService$c;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->countService:Lcom/join/mgps/service/UpdateLodingService;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->countService:Lcom/join/mgps/service/UpdateLodingService;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/UpdateLodingActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->downloadType:I

    .line 2
    .line 3
    return p1
.end method

.method private startGameAndFinishActivity()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UpdateLodingActivity;->finishUpdateActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->romeMustUpdate:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->peizhiMustUpdate:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->sourceMustUpdate:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "\u9700\u8981\u66f4\u65b0\u5b8c\u624d\u80fd\u8fdb\u5165\u6e38\u620f\u3002"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->simpleDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isRomeNewUpdate()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->romeNewUpdate:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isPeizhiNewUpdate()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->peizhiNewUpdate:Z

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isSourceNewUpdate()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->sourceNewUpdate:Z

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getEmuApkTable()Lcom/join/mgps/db/tables/EMUApkTable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->emuApkTable:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isFight()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->isFight:Z

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isRomeMustUpdate()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->romeMustUpdate:Z

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isPeizhiMustUpdate()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->peizhiMustUpdate:Z

    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isSourceMustUpdate()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->sourceMustUpdate:Z

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->simpleDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_path()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, "/platform_pic_loading.jpg"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v1, Ljava/io/File;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_2

    .line 129
    .line 130
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 131
    .line 132
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    .line 134
    .line 135
    const/4 v2, 0x2

    .line 136
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 137
    .line 138
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->lodingBackImage:Landroid/widget/ImageView;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->lodingBackImage:Landroid/widget/ImageView;

    .line 149
    .line 150
    const v1, 0x7f081328

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    .line 155
    .line 156
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 157
    .line 158
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 159
    .line 160
    const-class v2, Lcom/join/mgps/service/UpdateLodingService;

    .line 161
    .line 162
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->conn:Landroid/content/ServiceConnection;

    .line 166
    .line 167
    const/4 v2, 0x1

    .line 168
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method finishUpdateActivity()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->activityHasDestroy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->isFight:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->simpleDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->simpleDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, ""

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->u(Landroid/content/Context;)Lcom/join/mgps/dialog/t0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 14
    .line 15
    .line 16
    const-string v1, "\u505c\u6b62\u66f4\u65b0\uff1f"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->j(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "\u9000\u51fa\u540e\u9700\u91cd\u65b0\u66f4\u65b0\u6e38\u620f\u3002"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "\u7ee7\u7eed\u66f4\u65b0"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->i(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "\u9000\u51fa"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/join/mgps/activity/UpdateLodingActivity$h;

    .line 37
    .line 38
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/UpdateLodingActivity$h;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/t0;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->d(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/join/mgps/activity/UpdateLodingActivity$i;

    .line 45
    .line 46
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/UpdateLodingActivity$i;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/t0;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->h(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->activityHasDestroy:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->conn:Landroid/content/ServiceConnection;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 10
    .line 11
    .line 12
    return-void
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

.method public update(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgWhat",
            "messageObj"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_d

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_a

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_5

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    iget p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->downloadType:I

    .line 19
    .line 20
    const-string v0, "\u9000\u51fa"

    .line 21
    .line 22
    const-string v3, "\u7f51\u7edc\u8bbe\u7f6e"

    .line 23
    .line 24
    const-string v4, "\u66f4\u65b0\u5931\u8d25"

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-boolean v5, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->romeMustUpdate:Z

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/g0;->u(Landroid/content/Context;)Lcom/join/mgps/dialog/t0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v4}, Lcom/join/mgps/dialog/t0;->j(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/t0;->f(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Lcom/join/mgps/dialog/t0;->i(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/t0;->e(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$b;

    .line 64
    .line 65
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$b;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/t0;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/t0;->d(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$c;

    .line 72
    .line 73
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$c;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/t0;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/t0;->h(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_1
    if-ne p1, v1, :cond_2

    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->peizhiMustUpdate:Z

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/g0;->u(Landroid/content/Context;)Lcom/join/mgps/dialog/t0;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v4}, Lcom/join/mgps/dialog/t0;->j(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/t0;->f(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v3}, Lcom/join/mgps/dialog/t0;->i(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/t0;->e(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$d;

    .line 119
    .line 120
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$d;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/t0;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/t0;->d(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$e;

    .line 127
    .line 128
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$e;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/t0;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/t0;->h(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_2
    if-ne p1, v2, :cond_3

    .line 137
    .line 138
    iget-boolean p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->sourceMustUpdate:Z

    .line 139
    .line 140
    if-eqz p1, :cond_3

    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/g0;->u(Landroid/content/Context;)Lcom/join/mgps/dialog/t0;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v4}, Lcom/join/mgps/dialog/t0;->j(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/t0;->f(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v3}, Lcom/join/mgps/dialog/t0;->i(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/t0;->e(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$f;

    .line 174
    .line 175
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$f;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/t0;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/t0;->d(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$g;

    .line 182
    .line 183
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$g;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/t0;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/t0;->h(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/UpdateLodingActivity;->startGameAndFinishActivity()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_4
    check-cast p2, Landroid/os/Bundle;

    .line 197
    .line 198
    const-string p1, "percent"

    .line 199
    .line 200
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    const-string v0, "totalSize"

    .line 205
    .line 206
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v0

    .line 210
    const-string v2, "completeSize"

    .line 211
    .line 212
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 213
    .line 214
    .line 215
    move-result-wide v2

    .line 216
    iget-object p2, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 217
    .line 218
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 219
    .line 220
    .line 221
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->progressmessage:Landroid/widget/TextView;

    .line 222
    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v4, "\u6b63\u5728\u66f4\u65b0\u6e38\u620f\u8d44\u6e90("

    .line 229
    .line 230
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v2, "/"

    .line 241
    .line 242
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v0, ")"

    .line 253
    .line 254
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :catch_0
    move-exception p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 273
    .line 274
    const/16 p2, 0x64

    .line 275
    .line 276
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 277
    .line 278
    .line 279
    iget p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->downloadType:I

    .line 280
    .line 281
    const-string p2, "\u66f4\u65b0\u5b8c\u6210"

    .line 282
    .line 283
    if-eqz p1, :cond_9

    .line 284
    .line 285
    if-eq p1, v1, :cond_7

    .line 286
    .line 287
    if-eq p1, v2, :cond_6

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 291
    .line 292
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_0

    .line 300
    :cond_7
    iget-boolean p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->sourceNewUpdate:Z

    .line 301
    .line 302
    if-eqz p1, :cond_8

    .line 303
    .line 304
    iput v2, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->downloadType:I

    .line 305
    .line 306
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->serviceBinder:Lcom/join/mgps/service/UpdateLodingService$c;

    .line 307
    .line 308
    iget-object p2, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->simpleDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 309
    .line 310
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-virtual {p1, p2, v2}, Lcom/join/mgps/service/UpdateLodingService$c;->setDownData(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    goto :goto_1

    .line 318
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 319
    .line 320
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_0

    .line 328
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 329
    .line 330
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :goto_0
    const/4 v0, 0x1

    .line 338
    :goto_1
    if-eqz v0, :cond_e

    .line 339
    .line 340
    invoke-direct {p0}, Lcom/join/mgps/activity/UpdateLodingActivity;->startGameAndFinishActivity()V

    .line 341
    .line 342
    .line 343
    goto :goto_2

    .line 344
    :cond_a
    check-cast p2, Landroid/os/Bundle;

    .line 345
    .line 346
    const-string p1, "startOrEnd"

    .line 347
    .line 348
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    const-string v2, "message"

    .line 353
    .line 354
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    if-eqz p1, :cond_c

    .line 359
    .line 360
    if-eq p1, v1, :cond_b

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->uZIPLoading:Landroid/widget/ProgressBar;

    .line 364
    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 366
    .line 367
    .line 368
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->progressmessage:Landroid/widget/TextView;

    .line 369
    .line 370
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    goto :goto_2

    .line 374
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->uZIPLoading:Landroid/widget/ProgressBar;

    .line 375
    .line 376
    const/16 v0, 0x8

    .line 377
    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 379
    .line 380
    .line 381
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->progressmessage:Landroid/widget/TextView;

    .line 382
    .line 383
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    goto :goto_2

    .line 387
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 388
    .line 389
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 398
    .line 399
    .line 400
    :cond_e
    :goto_2
    return-void
.end method
