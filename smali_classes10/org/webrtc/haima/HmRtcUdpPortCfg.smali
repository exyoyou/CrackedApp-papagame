.class public Lorg/webrtc/haima/HmRtcUdpPortCfg;
.super Lorg/webrtc/haima/HMRTConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;
    }
.end annotation


# static fields
.field private static final DEFAULT_CFG:Ljava/lang/String; = "enable:0"

.field private static final DEFAULT_ENABLE:Ljava/lang/Boolean;

.field private static final FIELD_PORTRANGE:Ljava/lang/String; = "port_range"

.field private static final FIELD_SWITCH_RTMP:Ljava/lang/String; = "switch_rtmp"

.field private static final HMRTC_KEY:Ljava/lang/String; = "HMRTC-UdpPort-V1"

.field private static final TAG:Ljava/lang/String; = "HmRtcUdpPortCfg"


# instance fields
.field private mPortRange:Ljava/lang/String;

.field private mSwitchRtmp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->DEFAULT_ENABLE:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->DEFAULT_ENABLE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {p0, v1}, Lorg/webrtc/haima/HMRTConfig;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    const-string v1, "enable:0"

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v2, "HMRTC-UdpPort-V1"

    .line 17
    .line 18
    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/webrtc/haima/HMRTConfig;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->getFieldParser()Lorg/hmwebrtc/utils/FiledStringParser;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcUdpPortCfg;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v0, "HMConf enable the config! "

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcUdpPortCfg;->ToString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HMRTConfig;->setEnable(Z)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "HMConf disable the config! "

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcUdpPortCfg;->ToString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method private extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 2
    .line 3
    const-string v0, "port_range"

    .line 4
    .line 5
    const-string v1, "0-0"

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->mPortRange:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 14
    .line 15
    const-string v0, "switch_rtmp"

    .line 16
    .line 17
    const-string v1, "0"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->mSwitchRtmp:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public static getHMRTCCfgName()Ljava/lang/String;
    .locals 1

    const-string v0, "HMRTC-UdpPort-V1"

    return-object v0
.end method


# virtual methods
.method public ToString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/webrtc/haima/HMRTConfig;->ToString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->mPortRange:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ",port_range:"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->mPortRange:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->mSwitchRtmp:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ",switch_rtmp:"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->mSwitchRtmp:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_1
    return-object v0
.end method

.method public getPortRange()Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;
    .locals 5

    .line 1
    new-instance v0, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->mPortRange:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "-"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    array-length v2, v1

    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v2, v3, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    :try_start_0
    aget-object v3, v1, v2

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iput v3, v0, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;->udpMinPort:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    aget-object v1, v1, v3

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, v0, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;->udpMaxPort:I

    .line 41
    .line 42
    iget v3, v0, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;->udpMinPort:I

    .line 43
    .line 44
    const v4, 0xffff

    .line 45
    .line 46
    .line 47
    if-ltz v3, :cond_0

    .line 48
    .line 49
    if-le v3, v4, :cond_1

    .line 50
    .line 51
    :cond_0
    iput v2, v0, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;->udpMinPort:I

    .line 52
    .line 53
    :cond_1
    if-ltz v1, :cond_2

    .line 54
    .line 55
    if-le v1, v4, :cond_3

    .line 56
    .line 57
    :cond_2
    iput v2, v0, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;->udpMaxPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    iput v2, v0, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;->udpMinPort:I

    .line 62
    .line 63
    iput v2, v0, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;->udpMaxPort:I

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    return-object v0
.end method

.method public isEnableSwitchRtmp()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "1"

    .line 8
    .line 9
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcUdpPortCfg;->mSwitchRtmp:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method
