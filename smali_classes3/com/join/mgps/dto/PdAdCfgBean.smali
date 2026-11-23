.class public Lcom/join/mgps/dto/PdAdCfgBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private download_limit:I

.field private download_show_times:I

.field private lastUpdateConfigTime:J

.field private simulator_startup_popup_limit:I

.field private simulator_startup_show_times:I

.field private single_show_times:I

.field private single_startup_limit:I

.field private startup_limit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static convertStr2Bean(Ljava/lang/String;)Lcom/join/mgps/dto/PdAdCfgBean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonStr"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

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
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v2, Lcom/join/mgps/dto/PdAdCfgBean;

    .line 14
    .line 15
    invoke-virtual {v0, p0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/join/mgps/dto/PdAdCfgBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v1
.end method


# virtual methods
.method public canShowDownload()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->download_show_times:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->download_limit:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public canShowSimulatorPopup()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->simulator_startup_show_times:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->simulator_startup_popup_limit:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public canShowSingleStartUp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->single_show_times:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->single_startup_limit:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public canShowStartUp(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->startup_limit:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public getDownload_limit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->download_limit:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_show_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->download_show_times:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastUpdateConfigTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->lastUpdateConfigTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSimulator_startup_popup_limit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->simulator_startup_popup_limit:I

    .line 2
    .line 3
    return v0
.end method

.method public getSimulator_startup_show_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->simulator_startup_show_times:I

    .line 2
    .line 3
    return v0
.end method

.method public getSingle_show_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->single_show_times:I

    .line 2
    .line 3
    return v0
.end method

.method public getSingle_startup_limit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->single_startup_limit:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartup_limit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->startup_limit:I

    .line 2
    .line 3
    return v0
.end method

.method public setDownload_limit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_limit"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->download_limit:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_show_times(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_show_times"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->download_show_times:I

    .line 2
    .line 3
    return-void
.end method

.method public setLastUpdateConfigTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastUpdateConfigTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->lastUpdateConfigTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setSimulator_startup_popup_limit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simulator_startup_popup_limit"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->simulator_startup_popup_limit:I

    .line 2
    .line 3
    return-void
.end method

.method public setSimulator_startup_show_times(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simulator_startup_show_times"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->simulator_startup_show_times:I

    .line 2
    .line 3
    return-void
.end method

.method public setSingle_show_times(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "single_show_times"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->single_show_times:I

    .line 2
    .line 3
    return-void
.end method

.method public setSingle_startup_limit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "single_startup_limit"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->single_startup_limit:I

    .line 2
    .line 3
    return-void
.end method

.method public setStartup_limit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startup_limit"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PdAdCfgBean;->startup_limit:I

    .line 2
    .line 3
    return-void
.end method

.method public updateDownloadShowTimes()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->download_show_times:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->download_show_times:I

    .line 6
    .line 7
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public updateSimulatorPopupShowTimes()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->simulator_startup_show_times:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->simulator_startup_show_times:I

    .line 6
    .line 7
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public updateSingleShowTimes()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->single_show_times:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/dto/PdAdCfgBean;->single_show_times:I

    .line 6
    .line 7
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
