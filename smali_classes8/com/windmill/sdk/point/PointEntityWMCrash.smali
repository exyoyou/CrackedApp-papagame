.class public Lcom/windmill/sdk/point/PointEntityWMCrash;
.super Lcom/czhj/sdk/common/mta/PointEntityCrash;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/czhj/sdk/common/mta/PointEntityCrash;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static NDKCrash(Ljava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMCrash;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crash"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/windmill/sdk/point/PointEntityWMCrash;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/point/PointEntityWMCrash;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "670"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "crash"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/czhj/sdk/common/mta/PointEntityCrash;->setCrashTime(J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityCrash;->setCrashMessage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static WindCrash(Ljava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMCrash;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crash"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/windmill/sdk/point/PointEntityWMCrash;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/point/PointEntityWMCrash;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "402"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "crash"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/czhj/sdk/common/mta/PointEntityCrash;->setCrashTime(J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityCrash;->setCrashMessage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public appId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;
    .locals 1

    .line 1
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSdkversion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.8.7"

    return-object v0
.end method

.method public isAcTypeBlock()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/windmill/sdk/common/c;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getLogBlackList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getAc_type()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "block ac type "

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getAc_type()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    return v0
.end method
