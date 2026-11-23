.class public Lorg/webrtc/haima/HmDataChannelDeviceSwitch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmDataChannelDeviceSwitch$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmDataChannelDeviceSwitch"


# instance fields
.field private mCloudId:Ljava/lang/String;

.field private mIsEnabled:Z

.field private mPercent:J

.field private mPercentStr:Ljava/lang/String;

.field private port7681DataChannelPolicy:Lorg/webrtc/haima/enums/DataChannelPolicy;

.field private port7682DataChannelPolicy:Lorg/webrtc/haima/enums/DataChannelPolicy;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/webrtc/haima/enums/DataChannelPolicy;->START:Lorg/webrtc/haima/enums/DataChannelPolicy;

    iput-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->port7681DataChannelPolicy:Lorg/webrtc/haima/enums/DataChannelPolicy;

    .line 4
    iput-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->port7682DataChannelPolicy:Lorg/webrtc/haima/enums/DataChannelPolicy;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mIsEnabled:Z

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mCloudId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mPercent:J

    const-string v0, "0"

    .line 8
    iput-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mPercentStr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/haima/HmDataChannelDeviceSwitch$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;-><init>()V

    return-void
.end method

.method private calculateSwitch()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mCloudId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mPercentStr:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iput-wide v2, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mPercent:J

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v0, v2, v4

    .line 28
    .line 29
    if-gtz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mCloudId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x2

    .line 39
    if-gt v0, v2, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mCloudId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sub-int/2addr v3, v2

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    iget-wide v4, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mPercent:J

    .line 58
    .line 59
    cmp-long v0, v2, v4

    .line 60
    .line 61
    if-gez v0, :cond_3

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    :cond_3
    invoke-direct {p0, v1, v2, v3}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->logParamsForSwitch(ZJ)V

    .line 65
    .line 66
    .line 67
    :catch_0
    return v1

    .line 68
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mPercentStr:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "HmDataChannelDeviceSwitch"

    .line 71
    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    const-string v0, "is not enable: datachannel gray percent is null"

    .line 75
    .line 76
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "is not enable: datachannel gray percent is "

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-wide v3, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mPercent:J

    .line 91
    .line 92
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    return v1
.end method

.method public static getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch$SingletonHolder;->access$000()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private logParamsForSwitch(ZJ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mIsEnable:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "mPercent:"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-wide v1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mPercent:J

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, "mCloudId:"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mCloudId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "mCloudId.hashCode():"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mCloudId:Ljava/lang/String;

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    const-string p1, ""

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, "((Math.abs(mCloudId.hashCode()) % 100):"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, "HmDataChannelDeviceSwitch"

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public getPort7681DataChannelPolicy()Lorg/webrtc/haima/enums/DataChannelPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->port7681DataChannelPolicy:Lorg/webrtc/haima/enums/DataChannelPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPort7682DataChannelPolicy()Lorg/webrtc/haima/enums/DataChannelPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->port7682DataChannelPolicy:Lorg/webrtc/haima/enums/DataChannelPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDataChannelEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mIsEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCloudId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mCloudId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->calculateSwitch()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput-boolean p1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mIsEnabled:Z

    .line 8
    .line 9
    return-void
.end method

.method public setEnablePara(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mPercentStr:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mCloudId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->calculateSwitch()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->mIsEnabled:Z

    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public setPort7681DataChannelPolicy(Lorg/webrtc/haima/enums/DataChannelPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->port7681DataChannelPolicy:Lorg/webrtc/haima/enums/DataChannelPolicy;

    .line 2
    .line 3
    return-void
.end method

.method public setPort7682DataChannelPolicy(Lorg/webrtc/haima/enums/DataChannelPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->port7682DataChannelPolicy:Lorg/webrtc/haima/enums/DataChannelPolicy;

    .line 2
    .line 3
    return-void
.end method
