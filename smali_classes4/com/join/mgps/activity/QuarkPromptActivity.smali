.class public Lcom/join/mgps/activity/QuarkPromptActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/QuarkPromptActivity$e;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d009c
.end annotation


# instance fields
.field args:Lcom/join/mgps/dto/DownloadArgs;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field cfg:Lcom/join/mgps/dto/WebDiskCfg;

.field container:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private downTipAdapter:Lcom/join/mgps/activity/QuarkPromptActivity$e;

.field firstShowInstall:Z

.field firstSpeedDownQkExp:Z

.field fromDetail:Z

.field gameDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

.field handler:Landroid/os/Handler;

.field isEmu:Z

.field isOm:Z

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field quarkInstalled:Z

.field quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field rv_tip_list:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field todayLeftTimes:I

.field tvDownloadNormal:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvDownloadQuark:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_count_desc:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_count_down:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_count_pre:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_file_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_file_time:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field webDiskInfo:Lcom/join/mgps/dto/WebDiskInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->firstShowInstall:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->firstSpeedDownQkExp:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->fromDetail:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkInstalled:Z

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    iput v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->todayLeftTimes:I

    .line 17
    .line 18
    new-instance v1, Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v2, Lcom/join/mgps/activity/QuarkPromptActivity$a;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/QuarkPromptActivity$a;-><init>(Lcom/join/mgps/activity/QuarkPromptActivity;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->handler:Landroid/os/Handler;

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->isEmu:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->isOm:Z

    .line 33
    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/QuarkPromptActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->formatTime()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/QuarkPromptActivity;)Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    return-object p0
.end method

.method private downloadQuark()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->isEmu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/join/mgps/Util/d2;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/d2;->s()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "action"

    .line 19
    .line 20
    const-string v3, "downloadQuark"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/join/mgps/service/CommonService_$n0;

    .line 27
    .line 28
    const-string v2, "isOm"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f1203a7

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickInstallQkButton:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameId:Ljava/lang/String;

    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->fromDetail:Z

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const-string v2, "detail"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string v2, "list"

    .line 61
    .line 62
    :goto_1
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/d2;->u(Landroid/content/Context;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private formatTime()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->todayLeftTimes:I

    .line 2
    .line 3
    div-int/lit16 v1, v0, 0xe10

    .line 4
    .line 5
    mul-int/lit16 v2, v1, 0xe10

    .line 6
    .line 7
    sub-int v2, v0, v2

    .line 8
    .line 9
    div-int/lit8 v2, v2, 0x3c

    .line 10
    .line 11
    rem-int/lit8 v0, v0, 0x3c

    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_down:Landroid/widget/TextView;

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v5, "0"

    .line 21
    .line 22
    const/16 v6, 0xa

    .line 23
    .line 24
    if-ge v1, v6, :cond_0

    .line 25
    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ":"

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    if-ge v2, v6, :cond_1

    .line 55
    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    if-ge v0, v6, :cond_2

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public static getRemainSecondsOneDay(Ljava/util/Date;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentDate"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0xb

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0xd

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0xe

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    sub-long/2addr v0, v2

    .line 47
    const-wide/16 v2, 0x3e8

    .line 48
    .line 49
    div-long/2addr v0, v2

    .line 50
    long-to-int p0, v0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->getContentView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    float-to-int v2, v2

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    float-to-int p2, p2

    .line 19
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    new-instance v3, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 33
    .line 34
    .line 35
    neg-int p1, p1

    .line 36
    if-lt v2, p1, :cond_2

    .line 37
    .line 38
    if-lt p2, p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v3, v2, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method afterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->web_disk_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->web_disk_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    const-class v2, Lcom/join/mgps/dto/WebDiskCfg;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/join/mgps/dto/WebDiskCfg;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->args:Lcom/join/mgps/dto/DownloadArgs;

    .line 49
    .line 50
    const/16 v1, 0x65

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadArgs;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameId:Ljava/lang/String;

    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->args:Lcom/join/mgps/dto/DownloadArgs;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadArgs;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->args:Lcom/join/mgps/dto/DownloadArgs;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadArgs;->getFrom()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ne v0, v1, :cond_2

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 87
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->fromDetail:Z

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->webDiskInfo:Lcom/join/mgps/dto/WebDiskInfo;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 106
    .line 107
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->w2(I)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const/4 v0, 0x0

    .line 128
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->isEmu:Z

    .line 129
    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    invoke-static {}, Lcom/join/mgps/Util/d2;->p()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->S()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    const/4 v0, 0x1

    .line 149
    goto :goto_2

    .line 150
    :cond_5
    const/4 v0, 0x0

    .line 151
    :goto_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->isOm:Z

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    invoke-static {}, Lcom/join/mgps/Util/d2;->s()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->S()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_3

    .line 172
    :cond_7
    const/4 v0, 0x0

    .line 173
    :goto_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->isOm:Z

    .line 174
    .line 175
    :goto_4
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v4, "com.quark.browser"

    .line 180
    .line 181
    invoke-virtual {v0, p0, v4}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkInstalled:Z

    .line 186
    .line 187
    if-eqz v0, :cond_8

    .line 188
    .line 189
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v4, "2057111073"

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_8
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->isOm:Z

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const-string v4, "3875871586"

    .line 211
    .line 212
    invoke-virtual {v0, v4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 217
    .line 218
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->args:Lcom/join/mgps/dto/DownloadArgs;

    .line 219
    .line 220
    if-eqz v0, :cond_c

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadArgs;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_a

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameId:Ljava/lang/String;

    .line 233
    .line 234
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->args:Lcom/join/mgps/dto/DownloadArgs;

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadArgs;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 241
    .line 242
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->args:Lcom/join/mgps/dto/DownloadArgs;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadArgs;->getFrom()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-ne v0, v1, :cond_b

    .line 249
    .line 250
    const/4 v0, 0x1

    .line 251
    goto :goto_6

    .line 252
    :cond_b
    const/4 v0, 0x0

    .line 253
    :goto_6
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->fromDetail:Z

    .line 254
    .line 255
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 256
    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->webDiskInfo:Lcom/join/mgps/dto/WebDiskInfo;

    .line 264
    .line 265
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_file_name:Landroid/widget/TextView;

    .line 274
    .line 275
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameInfo:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getAppSize()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 291
    .line 292
    .line 293
    move-result-wide v0

    .line 294
    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    .line 295
    .line 296
    mul-double v0, v0, v4

    .line 297
    .line 298
    double-to-long v0, v0

    .line 299
    iget-object v4, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_file_time:Landroid/widget/TextView;

    .line 300
    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string v6, "2023-03-21 15:30 "

    .line 307
    .line 308
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->Z2(J)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :catch_0
    move-exception v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 328
    .line 329
    .line 330
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->updateDownloadBtn()V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_down:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_desc:Landroid/widget/TextView;

    .line 339
    .line 340
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->handler:Landroid/os/Handler;

    .line 344
    .line 345
    const-wide/16 v4, 0x3e8

    .line 346
    .line 347
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 348
    .line 349
    .line 350
    new-instance v0, Lcom/join/mgps/activity/QuarkPromptActivity$e;

    .line 351
    .line 352
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/QuarkPromptActivity$e;-><init>(Lcom/join/mgps/activity/QuarkPromptActivity;)V

    .line 353
    .line 354
    .line 355
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->downTipAdapter:Lcom/join/mgps/activity/QuarkPromptActivity$e;

    .line 356
    .line 357
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->rv_tip_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 358
    .line 359
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 360
    .line 361
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->rv_tip_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 368
    .line 369
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->downTipAdapter:Lcom/join/mgps/activity/QuarkPromptActivity$e;

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->rv_tip_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 375
    .line 376
    new-instance v1, Lcom/join/mgps/activity/QuarkPromptActivity$b;

    .line 377
    .line 378
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/QuarkPromptActivity$b;-><init>(Lcom/join/mgps/activity/QuarkPromptActivity;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 385
    .line 386
    if-eqz v0, :cond_f

    .line 387
    .line 388
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskCfg;->getTitle()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_e

    .line 397
    .line 398
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 399
    .line 400
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskCfg;->getTitle()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const-string v1, "<time>"

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_d

    .line 411
    .line 412
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskCfg;->getTitle()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_pre:Landroid/widget/TextView;

    .line 423
    .line 424
    aget-object v4, v0, v3

    .line 425
    .line 426
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    .line 428
    .line 429
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_desc:Landroid/widget/TextView;

    .line 430
    .line 431
    aget-object v0, v0, v2

    .line 432
    .line 433
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    .line 435
    .line 436
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_down:Landroid/widget/TextView;

    .line 437
    .line 438
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_desc:Landroid/widget/TextView;

    .line 442
    .line 443
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 444
    .line 445
    .line 446
    new-instance v0, Ljava/util/Date;

    .line 447
    .line 448
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-static {v0}, Lcom/join/mgps/activity/QuarkPromptActivity;->getRemainSecondsOneDay(Ljava/util/Date;)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    add-int/lit16 v0, v0, 0x3840

    .line 460
    .line 461
    iput v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->todayLeftTimes:I

    .line 462
    .line 463
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->formatTime()V

    .line 464
    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_pre:Landroid/widget/TextView;

    .line 468
    .line 469
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 470
    .line 471
    invoke-virtual {v1}, Lcom/join/mgps/dto/WebDiskCfg;->getTitle()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    .line 477
    .line 478
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_down:Landroid/widget/TextView;

    .line 479
    .line 480
    const/16 v1, 0x8

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 483
    .line 484
    .line 485
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_desc:Landroid/widget/TextView;

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    :cond_e
    :goto_8
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 491
    .line 492
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskCfg;->getSub_title()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    if-eqz v0, :cond_f

    .line 501
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .line 506
    .line 507
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 508
    .line 509
    invoke-virtual {v1}, Lcom/join/mgps/dto/WebDiskCfg;->getSub_title()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v1, "\n<font color=\'#2251FF\'>"

    .line 517
    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 522
    .line 523
    invoke-virtual {v1}, Lcom/join/mgps/dto/WebDiskCfg;->getSub_title_v2()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v1, "</font>"

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    const-string v1, "<br/>"

    .line 540
    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->downTipAdapter:Lcom/join/mgps/activity/QuarkPromptActivity$e;

    .line 546
    .line 547
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 552
    .line 553
    .line 554
    :cond_f
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->quark_click_count()Lorg/androidannotations/api/sharedpreferences/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/WebDiskCfg;->getClick_count()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    if-lt v0, v1, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isQuarkEnable()Lorg/androidannotations/api/sharedpreferences/d;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->quark_display_count()Lorg/androidannotations/api/sharedpreferences/i;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/join/mgps/dto/WebDiskCfg;->getDisplay_count()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    if-lt v0, v1, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->quark_click_count()Lorg/androidannotations/api/sharedpreferences/i;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-gtz v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isQuarkEnable()Lorg/androidannotations/api/sharedpreferences/d;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->handler:Landroid/os/Handler;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "com.quark.browser"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->updateDownloadBtn()V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->updateDownloadBtn()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p0, p1}, Lcom/join/mgps/activity/QuarkPromptActivity;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->finish()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/QuarkPromptActivity;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x4

    .line 20
    if-ne p1, p2, :cond_2

    .line 21
    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->getContentView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    return v2

    .line 34
    :cond_3
    return v1
.end method

.method tvDownloadNormal()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/QuarkPromptActivity$d;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/QuarkPromptActivity$d;-><init>(Lcom/join/mgps/activity/QuarkPromptActivity;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0xc8

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method updateDownloadBtn()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tvDownloadNormal:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskCfg;->getDown_btn_txt()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskCfg;->getDown_btn_txt()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const v0, 0x7f120103

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    iget-boolean v2, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->firstSpeedDownQkExp:Z

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    sget-object v2, Lcom/papa/sim/statistic/Event;->speedDownQkExp:Lcom/papa/sim/statistic/Event;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameId:Ljava/lang/String;

    .line 42
    .line 43
    iget-boolean v4, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->fromDetail:Z

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    const-string v4, "detail"

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string v4, "list"

    .line 51
    .line 52
    :goto_1
    invoke-static {p0, v2, v3, v4}, Lcom/join/mgps/Util/d2;->u(Landroid/content/Context;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->firstSpeedDownQkExp:Z

    .line 56
    .line 57
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->tvDownloadQuark:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method v_quark_down()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->isOm:Z

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "com.quark.browser"

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkInstalled:Z

    .line 16
    .line 17
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "2057111073"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkInstalled:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    const-string v0, "\u5938\u514b\u6b63\u5728\u4e0b\u8f7d"

    .line 45
    .line 46
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isQuarkSilentDownload()Lorg/androidannotations/api/sharedpreferences/d;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->downloadQuark()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-string v2, "detail"

    .line 74
    .line 75
    const-string v3, "list"

    .line 76
    .line 77
    if-nez v0, :cond_9

    .line 78
    .line 79
    iget-object v4, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 80
    .line 81
    const/4 v5, 0x6

    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    const/16 v4, 0xb

    .line 85
    .line 86
    if-eq v1, v4, :cond_5

    .line 87
    .line 88
    :cond_4
    if-ne v1, v5, :cond_9

    .line 89
    .line 90
    :cond_5
    new-instance v0, Ljava/io/File;

    .line 91
    .line 92
    iget-object v4, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->isQuarkSilentDownload()Lorg/androidannotations/api/sharedpreferences/d;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v4, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    if-ne v1, v5, :cond_6

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickInstallQkButton:Lcom/papa/sim/statistic/Event;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameId:Ljava/lang/String;

    .line 137
    .line 138
    iget-boolean v4, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->fromDetail:Z

    .line 139
    .line 140
    if-eqz v4, :cond_7

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_7
    move-object v2, v3

    .line 144
    :goto_1
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/d2;->u(Landroid/content/Context;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_8
    :goto_2
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 155
    .line 156
    .line 157
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkPromptActivity;->downloadQuark()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_9
    if-nez v0, :cond_b

    .line 162
    .line 163
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 164
    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    const/4 v4, 0x5

    .line 168
    if-eq v1, v4, :cond_b

    .line 169
    .line 170
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isQuarkSilentDownload()Lorg/androidannotations/api/sharedpreferences/d;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickInstallQkButton:Lcom/papa/sim/statistic/Event;

    .line 185
    .line 186
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameId:Ljava/lang/String;

    .line 187
    .line 188
    iget-boolean v4, p0, Lcom/join/mgps/activity/QuarkPromptActivity;->fromDetail:Z

    .line 189
    .line 190
    if-eqz v4, :cond_a

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_a
    move-object v2, v3

    .line 194
    :goto_3
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/d2;->u(Landroid/content/Context;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_b
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    .line 199
    .line 200
    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 201
    .line 202
    .line 203
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 204
    .line 205
    filled-new-array {v1}, [Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-instance v1, Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 214
    .line 215
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/QuarkPromptActivity$c;-><init>(Lcom/join/mgps/activity/QuarkPromptActivity;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 219
    .line 220
    .line 221
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 222
    .line 223
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->c4(Landroid/app/Activity;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method
