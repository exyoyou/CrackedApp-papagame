.class public Lorg/webrtc/haima/HmOperationDelayConfig;
.super Lorg/webrtc/haima/HMRTConfig;
.source "SourceFile"


# static fields
.field private static final DEBUG_LOG_KEY:Ljava/lang/String; = "debug_log"

.field private static final DEFAULT_CFG:Ljava/lang/String; = "enable:0"

.field private static final DEFAULT_DEBUG_LOG:Z = false

.field private static final DEFAULT_ENABLE:Z = false

.field private static final DEFAULT_INTERVAL_MS:I = 0x3e8

.field private static final DEFAULT_MAX_DELAY_MS:I = 0x12c

.field private static final DEFAULT_SALT_MS:I = 0x14

.field private static final HMRTC_KEY:Ljava/lang/String; = "rtc_operation_delay_sdk"

.field private static final INTERVAL_MS_KEY:Ljava/lang/String; = "interval_ms"

.field private static final MAX_DELAY_MS_KEY:Ljava/lang/String; = "max_delay_ms"

.field private static final SALT_KEY:Ljava/lang/String; = "cor"

.field private static final TAG:Ljava/lang/String; = "HmOperationDelayCloudConfig"


# instance fields
.field private isDebugLog:Z

.field private mIntervalMs:I

.field private mMaxDelayMs:I

.field private mSaltMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HMRTConfig;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/webrtc/haima/HmOperationDelayConfig;->reset()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 2
    .line 3
    const-string v0, "interval_ms"

    .line 4
    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mIntervalMs:I

    .line 12
    .line 13
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 14
    .line 15
    const-string v0, "max_delay_ms"

    .line 16
    .line 17
    const/16 v1, 0x12c

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mMaxDelayMs:I

    .line 24
    .line 25
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 26
    .line 27
    const-string v0, "cor"

    .line 28
    .line 29
    const/16 v1, 0x14

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mSaltMs:I

    .line 36
    .line 37
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 38
    .line 39
    const-string v0, "debug_log"

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput-boolean p1, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->isDebugLog:Z

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public getIntervalMs()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mIntervalMs:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxDelayMs()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mMaxDelayMs:I

    .line 2
    .line 3
    return v0
.end method

.method public getSaltMs()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mSaltMs:I

    .line 2
    .line 3
    return v0
.end method

.method public isDebugLog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->isDebugLog:Z

    .line 2
    .line 3
    return v0
.end method

.method public parseConfig(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "HmOperationDelayCloudConfig"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "rtc_operation_delay_sdk"

    .line 5
    .line 6
    const-string v3, "enable:0"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v2, v3, v1}, Lorg/webrtc/haima/HMRTConfig;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->getFieldParser()Lorg/hmwebrtc/utils/FiledStringParser;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmOperationDelayConfig;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "parseConfig, enable:%b, interval:%d, maxDelay:%d, salt:%d, debugLog:%b"

    .line 19
    .line 20
    const/4 v2, 0x5

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    iget-boolean v3, p0, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v2, v1

    .line 30
    .line 31
    iget v3, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mIntervalMs:I

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x1

    .line 38
    aput-object v3, v2, v4

    .line 39
    .line 40
    iget v3, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mMaxDelayMs:I

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x2

    .line 47
    aput-object v3, v2, v4

    .line 48
    .line 49
    iget v3, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mSaltMs:I

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x3

    .line 56
    aput-object v3, v2, v4

    .line 57
    .line 58
    iget-boolean v3, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->isDebugLog:Z

    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v4, 0x4

    .line 65
    aput-object v3, v2, v4

    .line 66
    .line 67
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    iput-boolean v1, p0, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "because of crashed:"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v1, "rtc_operation_delay_sdk: parse Exception:"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const/16 v0, 0x341b

    .line 124
    .line 125
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    .line 3
    .line 4
    const/16 v1, 0x3e8

    .line 5
    .line 6
    iput v1, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mIntervalMs:I

    .line 7
    .line 8
    const/16 v1, 0x12c

    .line 9
    .line 10
    iput v1, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mMaxDelayMs:I

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    iput v1, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->mSaltMs:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lorg/webrtc/haima/HmOperationDelayConfig;->isDebugLog:Z

    .line 17
    .line 18
    return-void
.end method
