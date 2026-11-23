.class public Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d01b9
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Lcom/join/mgps/db/tables/EMUApkTable;

.field F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field b:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field d:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field f:Lcom/join/mgps/rpc/e;

.field g:Lcom/join/mgps/dto/DetailResultBean;

.field h:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field z:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->A:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->B:I

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->C:I

    .line 12
    .line 13
    iput v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:I

    .line 14
    .line 15
    return-void
.end method

.method private j(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    return v1
.end method


# virtual methods
.method a()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1c

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "gameId"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "hasPlug"

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 52
    .line 53
    const-string v1, "hasRom"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 60
    .line 61
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->i()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method b()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->j(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->w2(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x2

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->f2(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ne v0, v1, :cond_2

    .line 62
    .line 63
    const-string v0, "SO_SIMULATOR"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string v0, "RAW_SIMULATOR"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string v0, ""

    .line 70
    .line 71
    :goto_1
    :try_start_0
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    .line 72
    .line 73
    invoke-direct {v2, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-class v4, Ljava/util/List;

    .line 97
    .line 98
    invoke-virtual {v3, v2, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/util/List;

    .line 103
    .line 104
    sget-object v3, Lcom/MApplication;->K:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    sget-object v3, Lcom/MApplication;->K:Ljava/lang/String;

    .line 113
    .line 114
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 125
    .line 126
    .line 127
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    return-void

    .line 131
    :catch_0
    nop

    .line 132
    :cond_4
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    .line 133
    .line 134
    invoke-direct {v2, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_5

    .line 152
    .line 153
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 154
    .line 155
    new-instance v3, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity$a;

    .line 156
    .line 157
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity$a;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p0, v1, v2, v0, v3}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c()V

    .line 165
    .line 166
    .line 167
    :goto_2
    return-void
.end method

.method c()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->A:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_14

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v2

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDisableShowSpeedUpPrompt(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    invoke-static {p0, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->p1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DownloadGameArgsBean;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    const-string v1, "1"

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_url()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_outside_url()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 86
    .line 87
    const/4 v3, 0x5

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-ne v1, v3, :cond_5

    .line 95
    .line 96
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->n1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->z:Landroid/widget/TextView;

    .line 101
    .line 102
    const-string v1, "\u70b9\u51fb\u5173\u95ed\u6309\u94ae\u540e\uff0c\u6e38\u620f\u4f1a\u5728\u540e\u53f0\n\u7ee7\u7eed\u4e0b\u8f7d\u54e6~"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    iget v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->B:I

    .line 108
    .line 109
    iput v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:I

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/Button;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const v4, 0x7f080248

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    .line 126
    .line 127
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 128
    .line 129
    if-nez v0, :cond_13

    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 140
    .line 141
    :cond_6
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 152
    .line 153
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_12

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v4, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    const/16 v4, 0xb

    .line 180
    .line 181
    const/4 v5, 0x2

    .line 182
    if-eqz v1, :cond_b

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVerCode()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    iget-object v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 189
    .line 190
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerCode()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-ne v1, v6, :cond_b

    .line 195
    .line 196
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-ne v1, v5, :cond_7

    .line 203
    .line 204
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 205
    .line 206
    const/4 v6, 0x0

    .line 207
    invoke-static {v1, v6}, Lcom/join/android/app/common/utils/o;->A(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_7

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    new-instance v1, Ljava/io/File;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_8
    move-object v1, v2

    .line 231
    :goto_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eq v5, v3, :cond_9

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-ne v5, v4, :cond_12

    .line 242
    .line 243
    :cond_9
    if-eqz v1, :cond_12

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_12

    .line 250
    .line 251
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/o;->H(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkArenaTable;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_a

    .line 256
    .line 257
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->i3(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_a
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_b
    :goto_2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-ne v1, v3, :cond_d

    .line 274
    .line 275
    const/16 v1, 0x9

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 278
    .line 279
    .line 280
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 281
    .line 282
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-ne v1, v5, :cond_c

    .line 287
    .line 288
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 289
    .line 290
    .line 291
    :cond_c
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1, v0}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_d
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 300
    .line 301
    invoke-static {v1}, Lcom/join/android/app/common/utils/o;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_11

    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-ne v1, v5, :cond_e

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-ne v1, v4, :cond_e

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_e
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    const/16 v2, 0x24

    .line 325
    .line 326
    if-eq v1, v2, :cond_10

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    const/16 v2, 0xc

    .line 333
    .line 334
    if-ne v1, v2, :cond_f

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_f
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 338
    .line 339
    .line 340
    invoke-static {v0}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 341
    .line 342
    .line 343
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v1, v0}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_10
    :goto_3
    return-void

    .line 352
    :cond_11
    :goto_4
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v1, p0, v0}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :cond_12
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->e()V

    .line 361
    .line 362
    .line 363
    :cond_13
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 364
    .line 365
    if-nez v0, :cond_15

    .line 366
    .line 367
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f()V

    .line 368
    .line 369
    .line 370
    goto :goto_6

    .line 371
    :cond_14
    iget v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->C:I

    .line 372
    .line 373
    if-ne v0, v1, :cond_15

    .line 374
    .line 375
    new-instance v0, Landroid/content/Intent;

    .line 376
    .line 377
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v1, "gameId"

    .line 381
    .line 382
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    .line 386
    .line 387
    const/4 v1, -0x1

    .line 388
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 392
    .line 393
    .line 394
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->e:Ljava/lang/String;

    .line 395
    .line 396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-nez v0, :cond_15

    .line 401
    .line 402
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->e:Ljava/lang/String;

    .line 403
    .line 404
    const-string v1, "MGMainActivity_10004"

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_15

    .line 411
    .line 412
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->O()V

    .line 417
    .line 418
    .line 419
    :cond_15
    :goto_6
    return-void
.end method

.method d(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p1, :cond_4

    .line 6
    .line 7
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x5

    .line 41
    if-ne v2, v3, :cond_3

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 44
    .line 45
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v2, p1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    new-array v2, v1, [Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p0, p1, v1, v2}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->D0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->I:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 108
    .line 109
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->I:Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 131
    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :cond_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g()V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :cond_4
    const/16 v2, 0x78

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iput-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->K:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iput-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->J:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iput-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->L:Ljava/lang/String;

    .line 166
    .line 167
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 168
    .line 169
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v2, p1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 182
    .line 183
    if-eqz p1, :cond_7

    .line 184
    .line 185
    new-array v2, v1, [Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {p0, p1, v1, v2}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_6

    .line 192
    .line 193
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 194
    .line 195
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->D0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_5

    .line 200
    .line 201
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 202
    .line 203
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    .line 210
    .line 211
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    .line 218
    .line 219
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->I:Ljava/lang/String;

    .line 226
    .line 227
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_5
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_6
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 240
    .line 241
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    .line 248
    .line 249
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    .line 256
    .line 257
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->I:Ljava/lang/String;

    .line 264
    .line 265
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 272
    .line 273
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o()V

    .line 274
    .line 275
    .line 276
    :goto_2
    return-void
.end method

.method e()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/join/mgps/Util/UtilsMy;->q1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method f()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x320L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDisableShowSpeedUpPrompt(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method g()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v4, ""

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v2, v3, v0, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/rpc/e;

    .line 53
    .line 54
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->I0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/join/mgps/dto/DetailResultBean;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/join/mgps/dto/DetailResultBean;

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_1
    return-void
.end method

.method h()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v5, v1, v3

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, ""

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method i()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->w:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->r:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->s:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method k()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method l()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method m()V
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

.method n()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->w:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->r:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->s:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method o()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

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
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->w:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->r:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->s:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "\u4f60\u9700\u8981\u4e0b\u8f7d\u6e38\u620f "

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 54
    .line 55
    const-string v4, "M"

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    const v6, 0x7f080e1b

    .line 59
    .line 60
    .line 61
    if-nez v3, :cond_5

    .line 62
    .line 63
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->y:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->J:Ljava/lang/String;

    .line 76
    .line 77
    if-nez v3, :cond_0

    .line 78
    .line 79
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 80
    .line 81
    invoke-static {p0, v6}, Lcom/join/android/app/common/utils/l;->G(Landroid/content/Context;I)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {p0}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-static {v3, v6, v7, v8}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    iget-object v7, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 98
    .line 99
    invoke-static {p0}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-static {v7, v6, v3, v8}, Lcom/join/android/app/common/utils/l;->w(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->i:Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    iget-object v7, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->K:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->l:Landroid/widget/TextView;

    .line 116
    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v8, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->L:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    if-eqz v0, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    const/4 v7, 0x5

    .line 146
    if-ne v3, v7, :cond_4

    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/ProgressBar;

    .line 149
    .line 150
    const/4 v3, 0x4

    .line 151
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->l:Landroid/widget/TextView;

    .line 157
    .line 158
    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_4
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/ProgressBar;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 167
    .line 168
    .line 169
    move-result-wide v7

    .line 170
    long-to-int v0, v7

    .line 171
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 175
    .line 176
    if-nez v0, :cond_a

    .line 177
    .line 178
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->x:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 184
    .line 185
    if-nez v0, :cond_6

    .line 186
    .line 187
    return-void

    .line 188
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    .line 193
    .line 194
    if-nez v2, :cond_7

    .line 195
    .line 196
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 197
    .line 198
    invoke-static {v0, v6}, Lcom/join/android/app/common/utils/l;->G(Landroid/content/Context;I)Landroid/net/Uri;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {p0}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-static {v2, v6, v0, v3}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 215
    .line 216
    invoke-static {p0}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-static {v0, v6, v2, v3}, Lcom/join/android/app/common/utils/l;->w(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 221
    .line 222
    .line 223
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n:Landroid/widget/TextView;

    .line 224
    .line 225
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/TextView;

    .line 231
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->I:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v2, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    if-eqz v0, :cond_a

    .line 273
    .line 274
    if-eqz v2, :cond_a

    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_a

    .line 289
    .line 290
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    const/16 v3, 0x30

    .line 295
    .line 296
    const/16 v4, 0x64

    .line 297
    .line 298
    if-ne v0, v3, :cond_8

    .line 299
    .line 300
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/Button;

    .line 301
    .line 302
    const-string v2, "\u5b89\u88c5\u4e2d"

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/ProgressBar;

    .line 308
    .line 309
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_8
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    const/16 v3, 0xb

    .line 318
    .line 319
    if-ne v0, v3, :cond_9

    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/Button;

    .line 322
    .line 323
    const-string v2, "\u5b89\u88c5"

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/ProgressBar;

    .line 329
    .line 330
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/ProgressBar;

    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 337
    .line 338
    .line 339
    move-result-wide v2

    .line 340
    long-to-int v3, v2

    .line 341
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 342
    .line 343
    .line 344
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->z:Landroid/widget/TextView;

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    sub-int/2addr v2, v5

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    .line 361
    .line 362
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->h()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
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
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 12
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
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x5

    .line 53
    const/4 v2, 0x1

    .line 54
    if-eq v0, v1, :cond_8

    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    if-eq v0, v1, :cond_1

    .line 59
    .line 60
    const/16 v1, 0xb

    .line 61
    .line 62
    if-eq v0, v1, :cond_8

    .line 63
    .line 64
    const/16 v1, 0x30

    .line 65
    .line 66
    if-eq v0, v1, :cond_8

    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    const-string v0, "/"

    .line 80
    .line 81
    const-string v1, ""

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 85
    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v7, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {p1, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-nez p1, :cond_3

    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    iget-object v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 117
    .line 118
    if-eqz v6, :cond_4

    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-nez v6, :cond_4

    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    iget-object v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/ProgressBar;

    .line 136
    .line 137
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/ProgressBar;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 143
    .line 144
    .line 145
    move-result-wide v7

    .line 146
    long-to-int v8, v7

    .line 147
    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 155
    .line 156
    .line 157
    move-result-wide v6

    .line 158
    mul-double v6, v6, v4

    .line 159
    .line 160
    mul-double v6, v6, v4

    .line 161
    .line 162
    double-to-long v6, v6

    .line 163
    iget-object v8, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/TextView;

    .line 164
    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 171
    .line 172
    .line 173
    move-result-wide v10

    .line 174
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    const/4 p1, 0x1

    .line 199
    goto :goto_0

    .line 200
    :cond_5
    const/4 p1, 0x0

    .line 201
    :goto_0
    iget-boolean v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 202
    .line 203
    if-nez v6, :cond_7

    .line 204
    .line 205
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object v7, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p1, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-nez p1, :cond_6

    .line 231
    .line 232
    return-void

    .line 233
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/ProgressBar;

    .line 234
    .line 235
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/ProgressBar;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 241
    .line 242
    .line 243
    move-result-wide v6

    .line 244
    long-to-int v3, v6

    .line 245
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 253
    .line 254
    .line 255
    move-result-wide v6

    .line 256
    mul-double v6, v6, v4

    .line 257
    .line 258
    mul-double v6, v6, v4

    .line 259
    .line 260
    double-to-long v3, v6

    .line 261
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->l:Landroid/widget/TextView;

    .line 262
    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 269
    .line 270
    .line 271
    move-result-wide v6

    .line 272
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_7
    move v2, p1

    .line 298
    :goto_1
    if-eqz v2, :cond_c

    .line 299
    .line 300
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->z:Landroid/widget/TextView;

    .line 301
    .line 302
    const-string v0, "\u70b9\u51fb\u5173\u95ed\u6309\u94ae\u540e\uff0c\u6e38\u620f\u4f1a\u5728\u540e\u53f0\n\u7ee7\u7eed\u4e0b\u8f7d\u54e6~"

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    iget p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->B:I

    .line 308
    .line 309
    iput p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:I

    .line 310
    .line 311
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/Button;

    .line 312
    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const v1, 0x7f080248

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    if-eqz p1, :cond_9

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-nez v0, :cond_9

    .line 345
    .line 346
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_9

    .line 361
    .line 362
    return-void

    .line 363
    :cond_9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    const/4 v1, 0x4

    .line 378
    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 379
    .line 380
    if-eqz v0, :cond_a

    .line 381
    .line 382
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 383
    .line 384
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/TextView;

    .line 385
    .line 386
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/ProgressBar;

    .line 390
    .line 391
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_a
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-eqz p1, :cond_b

    .line 410
    .line 411
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 412
    .line 413
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->l:Landroid/widget/TextView;

    .line 414
    .line 415
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/ProgressBar;

    .line 419
    .line 420
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p()V

    .line 424
    .line 425
    .line 426
    :cond_c
    :goto_3
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method p()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

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
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 59
    .line 60
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    new-array v3, v2, [Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p0, v1, v2, v3}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x5

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 75
    .line 76
    invoke-static {p0, v1}, Lcom/join/mgps/Util/UtilsMy;->D0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v0, v2, :cond_2

    .line 89
    .line 90
    iget v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->C:I

    .line 91
    .line 92
    iput v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:I

    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/Button;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const v2, 0x7f080242

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/Button;

    .line 111
    .line 112
    const-string v1, "\u8fdb\u5165\u623f\u95f4"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/Button;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const v2, 0x7f080248

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    if-eqz v0, :cond_4

    .line 136
    .line 137
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v1, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-ne v0, v2, :cond_4

    .line 154
    .line 155
    if-eqz v1, :cond_4

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    const/16 v2, 0xb

    .line 162
    .line 163
    if-ne v0, v2, :cond_4

    .line 164
    .line 165
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v2, "\u63d2\u4ef6\u6b63\u5728\u5b89\u88c5..."

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 182
    .line 183
    .line 184
    :cond_4
    :goto_0
    return-void
.end method
