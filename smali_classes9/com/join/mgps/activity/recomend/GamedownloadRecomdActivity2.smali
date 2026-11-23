.class public Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d02fc
.end annotation


# instance fields
.field protected activityCloseEnterAnimation:I

.field protected activityCloseExitAnimation:I

.field adapter:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

.field appbar:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

.field close2:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field downNumber:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field gameDowndatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field gameName:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gamedataJson:Ljava/lang/String;

.field gamedatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private gameid:Ljava/lang/String;

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mBarHideEnableObserver:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;

.field private mNavigationBarObserver:Landroid/database/ContentObserver;

.field main:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field seetext:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field speedLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->gamedatas:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->gameDowndatas:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$1;

    .line 19
    .line 20
    new-instance v1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$1;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;Landroid/os/Handler;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 29
    .line 30
    return-void
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "bool"

    .line 6
    .line 7
    const-string v1, "android"

    .line 8
    .line 9
    const-string v2, "config_showNavigationBar"

    .line 10
    .line 11
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "get"

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    new-array v4, v3, [Ljava/lang/Class;

    .line 34
    .line 35
    const-class v5, Ljava/lang/String;

    .line 36
    .line 37
    aput-object v5, v4, v1

    .line 38
    .line 39
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-array v4, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string v5, "qemu.hw.mainkeys"

    .line 46
    .line 47
    aput-object v5, v4, v1

    .line 48
    .line 49
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "1"

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-string v1, "0"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move v1, p0

    .line 75
    :goto_1
    move p0, v1

    .line 76
    :catch_0
    return p0
.end method

.method private getNavigationBarHeight()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dimen"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "navigation_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
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
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    return p0
.end method

.method private initData()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->registerContentResolver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->gamedataJson:Ljava/lang/String;

    .line 14
    .line 15
    const-class v2, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getGameid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->gameid:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "0"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getGameid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->context:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lcom/papa/sim/statistic/Event;->showGuessYouLike:Lcom/papa/sim/statistic/Event;

    .line 59
    .line 60
    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getCollectionList()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->gamedatas:Ljava/util/List;

    .line 68
    .line 69
    :try_start_1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->gameid:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->context:Landroid/content/Context;

    .line 86
    .line 87
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    int-to-long v0, v0

    .line 105
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v4, v0, v2

    .line 112
    .line 113
    if-gtz v4, :cond_3

    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_1

    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_3

    .line 144
    .line 145
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDisableShowSpeedUpPrompt()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_3

    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->context:Landroid/content/Context;

    .line 154
    .line 155
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->context:Landroid/content/Context;

    .line 168
    .line 169
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 170
    .line 171
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->Z3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Ljava/util/Random;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 177
    .line 178
    .line 179
    const/16 v1, 0xa

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    add-int/lit8 v0, v0, 0x55

    .line 186
    .line 187
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->cfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 188
    .line 189
    if-eqz v1, :cond_2

    .line 190
    .line 191
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->tip:Landroid/widget/TextView;

    .line 192
    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->cfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getTip_text()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v3, "<font color=#5286FA><big>"

    .line 208
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v0, "</big></font>%"

    .line 216
    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 229
    .line 230
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 231
    .line 232
    .line 233
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Ljava/lang/Integer;

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downNumber:Landroid/widget/TextView;

    .line 266
    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v4, "\u4eca\u65e5\u53ef\u52a0\u901f\uff1a <strong><font color=#6193FE>"

    .line 273
    .line 274
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    sub-int/2addr v0, v1

    .line 278
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v0, "</font></strong> \u6b21"

    .line 282
    .line 283
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 295
    .line 296
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 297
    .line 298
    .line 299
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    sget-object v1, Lcom/papa/sim/statistic/Event;->AccelerationPopup:Lcom/papa/sim/statistic/Event;

    .line 304
    .line 305
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 306
    .line 307
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 311
    .line 312
    .line 313
    goto :goto_1

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->speedLayout:Landroid/view/View;

    .line 315
    .line 316
    const/16 v1, 0x8

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->close2:Landroid/view/View;

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 327
    .line 328
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 329
    .line 330
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :catch_1
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    :goto_2
    return-void
.end method

.method private registerNavigationBarObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "navigationbar_is_min"

    .line 6
    .line 7
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private updateProgressPartly()V
    .locals 0

    return-void
.end method


# virtual methods
.method afterview()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->recomDataJson()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->gamedataJson:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->finish()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object p0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->context:Landroid/content/Context;

    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-class v2, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->cfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->seetext:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getBtn_text()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->initData()V

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const v1, 0x10100ae

    .line 80
    .line 81
    .line 82
    filled-new-array {v1}, [I

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const v3, 0x10100ba

    .line 103
    .line 104
    .line 105
    const v4, 0x10100bb

    .line 106
    .line 107
    .line 108
    filled-new-array {v3, v4}, [I

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    iput v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->activityCloseEnterAnimation:I

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iput v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->activityCloseExitAnimation:I

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_1
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :goto_1
    return-void
.end method

.method close2()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method downloadAcc()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa/sim/statistic/Event;->DownloadAcceleration:Lcom/papa/sim/statistic/Event;

    .line 6
    .line 7
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/join/mgps/event/o;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    const/16 v3, 0xe

    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/event/o;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-static {p0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "\u5df2\u63a5\u5165\u4e13\u5c5e\u901a\u9053\uff0c\u52a0\u901f\u6210\u529f\uff01"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->H4(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->H2(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->activityCloseEnterAnimation:I

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->activityCloseExitAnimation:I

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public isNavigationBarShow()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "navigationbar_hide_bar_enabled"

    .line 8
    .line 9
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-ne v2, v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    return v0

    .line 17
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/join/mgps/Util/v1;->e()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-static {p0}, Lcom/join/mgps/Util/v1;->a(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Lcom/join/mgps/Util/v1;->f(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 38
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/v1;->g()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "force_fsg_nav_bar"

    .line 49
    .line 50
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    return v1

    .line 57
    :catch_1
    move-exception v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Landroid/graphics/Point;

    .line 70
    .line 71
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v4, Landroid/graphics/Point;

    .line 75
    .line 76
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 83
    .line 84
    .line 85
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 86
    .line 87
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 88
    .line 89
    if-eq v2, v3, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/4 v0, 0x0

    .line 93
    :goto_1
    return v0
.end method

.method main()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->mBarHideEnableObserver:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
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
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->recomDataJson()Lorg/androidannotations/api/sharedpreferences/p;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->gamedataJson:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->initData()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method registerContentResolver()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->mBarHideEnableObserver:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "navigationbar_hide_bar_enabled"

    .line 18
    .line 19
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->mBarHideEnableObserver:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->registerNavigationBarObserver()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x50

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    const p1, 0xffffff

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/p2;->r(Landroid/app/Activity;IZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
