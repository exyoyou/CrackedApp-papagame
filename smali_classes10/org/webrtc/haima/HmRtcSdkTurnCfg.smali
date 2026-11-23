.class public Lorg/webrtc/haima/HmRtcSdkTurnCfg;
.super Lorg/webrtc/haima/HMRTConfig;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CFG:Ljava/lang/String; = "enable:0"

.field private static final DEFAULT_ENABLE:Ljava/lang/Boolean;

.field private static final FIELD_PASSWORD:Ljava/lang/String; = "password"

.field private static final FIELD_USER:Ljava/lang/String; = "user"

.field private static final HMRTC_KEY:Ljava/lang/String; = "HMRTC-TurnCfg-V1"

.field private static final TAG:Ljava/lang/String; = "HmRtcSdkTurnCfg"


# instance fields
.field private mPassword:Ljava/lang/String;

.field private mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->DEFAULT_ENABLE:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->DEFAULT_ENABLE:Ljava/lang/Boolean;

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
    const-string v2, "HMRTC-TurnCfg-V1"

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
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

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
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->ToString()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->ToString()Ljava/lang/String;

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
    const-string v0, "user"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->mUser:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 14
    .line 15
    const-string v0, "password"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->mPassword:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public static getHMRTCCfgName()Ljava/lang/String;
    .locals 1

    const-string v0, "HMRTC-TurnCfg-V1"

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
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->mUser:Ljava/lang/String;

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
    const-string v0, ",user:"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->mUser:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->mPassword:Ljava/lang/String;

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
    const-string v0, ",password:"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->mPassword:Ljava/lang/String;

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

.method public getAuthInfo()Ljava/lang/String;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "@"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->mUser:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ":"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->mPassword:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_0
    const-string v0, ""

    .line 38
    .line 39
    return-object v0
.end method
