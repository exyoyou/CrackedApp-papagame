.class public Lorg/webrtc/haima/HmRtcStunRequestResendCfg;
.super Lorg/webrtc/haima/HMRTConfig;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CFG:Ljava/lang/String; = "enable:0"

.field private static final DEFAULT_ENABLE:Ljava/lang/Boolean;

.field private static final FIELD_RESEND_COUNT:Ljava/lang/String; = "resend_count"

.field private static final FIELD_RESEND_RTO:Ljava/lang/String; = "resend_rto"

.field private static final FIELD_SWITCH_RTMP:Ljava/lang/String; = "switch_rtmp"

.field private static final HMRTC_KEY:Ljava/lang/String; = "HMRTC-StunRequestResend-V1"

.field private static final TAG:Ljava/lang/String; = "HmRtcStunRequestResendCfg"


# instance fields
.field private mResendCount:Ljava/lang/String;

.field private mResendRto:Ljava/lang/String;

.field private mSwitchRtmp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->DEFAULT_ENABLE:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->DEFAULT_ENABLE:Ljava/lang/Boolean;

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
    const-string v2, "HMRTC-StunRequestResend-V1"

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
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

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
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->ToString()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->ToString()Ljava/lang/String;

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
    const-string v0, "resend_rto"

    .line 4
    .line 5
    const-string v1, "-1"

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mResendRto:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 14
    .line 15
    const-string v0, "resend_count"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mResendCount:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 24
    .line 25
    const-string v0, "switch_rtmp"

    .line 26
    .line 27
    const-string v1, "0"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mSwitchRtmp:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method public static getHMRTCCfgName()Ljava/lang/String;
    .locals 1

    const-string v0, "HMRTC-StunRequestResend-V1"

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
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mResendRto:Ljava/lang/String;

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
    const-string v0, ",resend_rto:"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mResendRto:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mResendCount:Ljava/lang/String;

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
    const-string v0, ",resend_count:"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mResendCount:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mSwitchRtmp:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ",switch_rtmp:"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mSwitchRtmp:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_2
    return-object v0
.end method

.method public getResendCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mResendCount:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_0
    return v1
.end method

.method public getResendRto()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mResendRto:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_0
    return v1
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
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->mSwitchRtmp:Ljava/lang/String;

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
