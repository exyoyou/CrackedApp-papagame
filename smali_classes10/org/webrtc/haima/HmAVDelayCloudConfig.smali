.class public Lorg/webrtc/haima/HmAVDelayCloudConfig;
.super Lorg/webrtc/haima/HMRTConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;,
        Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;
    }
.end annotation


# static fields
.field private static final AUDIO_CAPTURE:Ljava/lang/String; = "a_cap"

.field private static final AUDIO_DECODE:Ljava/lang/String; = "a_dec"

.field private static final AUDIO_ENCODE:Ljava/lang/String; = "a_enc"

.field private static final AUDIO_PLAY:Ljava/lang/String; = "a_play"

.field private static final DEBUG_LOG:Ljava/lang/String; = "debug_log"

.field private static final DEFAULT_CFG:Ljava/lang/String; = "enable:0"

.field private static final DEFAULT_ENABLE:Ljava/lang/Boolean;

.field private static final HMRTC_KEY:Ljava/lang/String; = "hm_rtc_av_delay_sdk"

.field private static final NET_JITTER:Ljava/lang/String; = "n_jitter"

.field private static final NET_LOSS:Ljava/lang/String; = "n_loss"

.field private static final TAG:Ljava/lang/String; = "HmAVDelayCloudConfig"

.field private static final VIDEO_CAPTURE:Ljava/lang/String; = "v_cap"

.field private static final VIDEO_CAP_TO_DECODED:Ljava/lang/String; = "n_cap_to_decoded"

.field private static final VIDEO_DECODE:Ljava/lang/String; = "v_dec"

.field private static final VIDEO_ENCODE:Ljava/lang/String; = "v_enc"

.field private static final VIDEO_PLAY:Ljava/lang/String; = "v_play"


# instance fields
.field private hasCountLyRecorded:Z

.field private mAudioCapture:Ljava/lang/String;

.field private mAudioDecode:Ljava/lang/String;

.field private mAudioEncode:Ljava/lang/String;

.field private mAudioPlay:Ljava/lang/String;

.field private mCapToDecoded:Ljava/lang/String;

.field private mDebugLog:Ljava/lang/String;

.field private mNetJitter:Ljava/lang/String;

.field private mNetLoss:Ljava/lang/String;

.field private mVideoCapture:Ljava/lang/String;

.field private mVideoDecode:Ljava/lang/String;

.field private mVideoEncode:Ljava/lang/String;

.field private mVideoPlay:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->DEFAULT_ENABLE:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->DEFAULT_ENABLE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HMRTConfig;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static calculateParameters(ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I
    .locals 2

    .line 1
    iget v0, p1, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->maxThreshold:I

    .line 2
    .line 3
    if-ltz v0, :cond_2

    .line 4
    .line 5
    iget p1, p1, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->saltValue:I

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-gt p0, v0, :cond_1

    .line 11
    .line 12
    return p0

    .line 13
    :cond_1
    sub-int/2addr p0, v0

    .line 14
    int-to-float p0, p0

    .line 15
    int-to-float p1, p1

    .line 16
    const/high16 v1, 0x42c80000    # 100.0f

    .line 17
    .line 18
    div-float/2addr p1, v1

    .line 19
    mul-float p0, p0, p1

    .line 20
    .line 21
    float-to-int p0, p0

    .line 22
    add-int/2addr v0, p0

    .line 23
    return v0

    .line 24
    :cond_2
    :goto_0
    return p0
.end method

.method private extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 2
    .line 3
    const-string v0, "a_cap"

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
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioCapture:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 14
    .line 15
    const-string v0, "a_enc"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioEncode:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 24
    .line 25
    const-string v0, "a_dec"

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioDecode:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 34
    .line 35
    const-string v0, "a_play"

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioPlay:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 44
    .line 45
    const-string v0, "v_cap"

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoCapture:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 54
    .line 55
    const-string v0, "v_enc"

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoEncode:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 64
    .line 65
    const-string v0, "v_dec"

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoDecode:Ljava/lang/String;

    .line 72
    .line 73
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 74
    .line 75
    const-string v0, "v_play"

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoPlay:Ljava/lang/String;

    .line 82
    .line 83
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 84
    .line 85
    const-string v0, "n_loss"

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mNetLoss:Ljava/lang/String;

    .line 92
    .line 93
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 94
    .line 95
    const-string v0, "n_jitter"

    .line 96
    .line 97
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mNetJitter:Ljava/lang/String;

    .line 102
    .line 103
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 104
    .line 105
    const-string v0, "debug_log"

    .line 106
    .line 107
    const-string v1, "0"

    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mDebugLog:Ljava/lang/String;

    .line 114
    .line 115
    iget-object p1, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 116
    .line 117
    const-string v0, "n_cap_to_decoded"

    .line 118
    .line 119
    const-string v1, "5"

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iput-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mCapToDecoded:Ljava/lang/String;

    .line 126
    .line 127
    return-void
.end method

.method public static getHMRTCName()Ljava/lang/String;
    .locals 1

    const-string v0, "hm_rtc_av_delay_sdk"

    return-object v0
.end method


# virtual methods
.method GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    const-string v0, "HmAVDelayCloudConfig"

    .line 8
    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_6

    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    const-string v1, "-"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "pos:"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x341b

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    if-gez v1, :cond_2

    .line 52
    .line 53
    const-string p3, "can not find Separator between maxThreshold and saltValue"

    .line 54
    .line 55
    invoke-static {v0, p3}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4}, Lorg/webrtc/haima/HMRTConfig;->setEnable(Z)V

    .line 59
    .line 60
    .line 61
    iget-boolean p3, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->hasCountLyRecorded:Z

    .line 62
    .line 63
    if-nez p3, :cond_1

    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v0, "hm_rtc_av_delay_sdk: can not find Separator between maxThreshold and saltValue:name:"

    .line 71
    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ",value:"

    .line 79
    .line 80
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v3, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-boolean v2, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->hasCountLyRecorded:Z

    .line 94
    .line 95
    :cond_1
    return-void

    .line 96
    :cond_2
    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    add-int/2addr v1, v2

    .line 101
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const-string v5, " is not a non-negative integer"

    .line 110
    .line 111
    const-string v6, ") of "

    .line 112
    .line 113
    if-gez v1, :cond_4

    .line 114
    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string p3, "maxThreshold("

    .line 121
    .line 122
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {v0, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v4}, Lorg/webrtc/haima/HMRTConfig;->setEnable(Z)V

    .line 145
    .line 146
    .line 147
    iget-boolean p2, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->hasCountLyRecorded:Z

    .line 148
    .line 149
    if-nez p2, :cond_3

    .line 150
    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string p3, "hm_rtc_av_delay_sdk:maxThreshold("

    .line 157
    .line 158
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {v3, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iput-boolean v2, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->hasCountLyRecorded:Z

    .line 181
    .line 182
    :cond_3
    return-void

    .line 183
    :cond_4
    iput v1, p3, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->maxThreshold:I

    .line 184
    .line 185
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-gez p2, :cond_5

    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v7, "saltValue("

    .line 197
    .line 198
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v4}, Lorg/webrtc/haima/HMRTConfig;->setEnable(Z)V

    .line 221
    .line 222
    .line 223
    iget-boolean v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->hasCountLyRecorded:Z

    .line 224
    .line 225
    if-nez v0, :cond_5

    .line 226
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v1, "hm_rtc_av_delay_sdk:saltValue("

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {v3, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iput-boolean v2, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->hasCountLyRecorded:Z

    .line 257
    .line 258
    :cond_5
    iput p2, p3, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->saltValue:I

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_6
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string p1, ": input is null or empty"

    .line 270
    .line 271
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_7
    :goto_1
    return-void
.end method

.method public ToString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/webrtc/haima/HMRTConfig;->ToString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioCapture:Ljava/lang/String;

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
    const-string v0, ",a_cap:"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioCapture:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioEncode:Ljava/lang/String;

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
    const-string v0, ",a_enc:"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioEncode:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioDecode:Ljava/lang/String;

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
    const-string v0, ",a_dec:"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioDecode:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioPlay:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_3

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, ",a_play:"

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioPlay:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :cond_3
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoCapture:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v0, ",v_cap:"

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoCapture:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :cond_4
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoEncode:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_5

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, ",v_enc:"

    .line 172
    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoEncode:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    :cond_5
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoDecode:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_6

    .line 192
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v0, ",v_dec:"

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoDecode:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    :cond_6
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoPlay:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_7

    .line 222
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v0, ",v_play:"

    .line 232
    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoPlay:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    :cond_7
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mNetLoss:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_8

    .line 252
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v0, ",n_loss:"

    .line 262
    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mNetLoss:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    :cond_8
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mNetJitter:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-nez v1, :cond_9

    .line 282
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v0, ",n_jitter:"

    .line 292
    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mNetJitter:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    :cond_9
    return-object v0
.end method

.method public parseAVDelayCloudConfig(Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;)V
    .locals 4

    .line 1
    const-string v0, "HmAVDelayCloudConfig"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const-string p1, "AVDelayParameters is null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "hm_rtc_av_delay_sdk"

    .line 12
    .line 13
    const-string v2, "enable:0"

    .line 14
    .line 15
    sget-object v3, Lorg/webrtc/haima/HmAVDelayCloudConfig;->DEFAULT_ENABLE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/webrtc/haima/HMRTConfig;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->getFieldParser()Lorg/hmwebrtc/utils/FiledStringParser;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const-string p1, "a_cap"

    .line 38
    .line 39
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioCapture:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 42
    .line 43
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 44
    .line 45
    .line 46
    const-string p1, "a_enc"

    .line 47
    .line 48
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioEncode:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 51
    .line 52
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "a_dec"

    .line 56
    .line 57
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioDecode:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 60
    .line 61
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "a_play"

    .line 65
    .line 66
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mAudioPlay:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 69
    .line 70
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 71
    .line 72
    .line 73
    const-string p1, "v_cap"

    .line 74
    .line 75
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoCapture:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 78
    .line 79
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "v_enc"

    .line 83
    .line 84
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoEncode:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 87
    .line 88
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 89
    .line 90
    .line 91
    const-string p1, "v_dec"

    .line 92
    .line 93
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoDecode:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 96
    .line 97
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 98
    .line 99
    .line 100
    const-string p1, "v_play"

    .line 101
    .line 102
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mVideoPlay:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 105
    .line 106
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 107
    .line 108
    .line 109
    const-string p1, "n_loss"

    .line 110
    .line 111
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mNetLoss:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mNetLossParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 114
    .line 115
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 116
    .line 117
    .line 118
    const-string p1, "n_jitter"

    .line 119
    .line 120
    iget-object v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mNetJitter:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mNetJitterParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 123
    .line 124
    invoke-virtual {p0, p1, v1, v2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->GetParameters(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)V

    .line 125
    .line 126
    .line 127
    :cond_1
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iput-boolean p1, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->enable:Z

    .line 132
    .line 133
    iget-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mDebugLog:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz p1, :cond_2

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_2

    .line 142
    .line 143
    iget-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mDebugLog:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    const/4 v1, 0x1

    .line 150
    if-ne p1, v1, :cond_2

    .line 151
    .line 152
    iput-boolean v1, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->isDebugLog:Z

    .line 153
    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v1, "isDebugLog parseAVDelayCloudConfig:"

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-boolean v1, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->isDebugLog:Z

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mCapToDecoded:Ljava/lang/String;

    .line 177
    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_3

    .line 185
    .line 186
    iget-object p1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig;->mCapToDecoded:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput p1, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->videoFromCapToDecodedThreshold:I

    .line 193
    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v1, "videoFromCapToDecodedThreshold parseAVDelayCloudConfig:"

    .line 200
    .line 201
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget v1, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->videoFromCapToDecodedThreshold:I

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v1, "hm_rtc_av_delay_sdk is:"

    .line 222
    .line 223
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-boolean p2, p2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->enable:Z

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .line 237
    .line 238
    goto :goto_0

    .line 239
    :catch_0
    move-exception p1

    .line 240
    const/4 p2, 0x0

    .line 241
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/HMRTConfig;->setEnable(Z)V

    .line 242
    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v1, "because of crashed:"

    .line 250
    .line 251
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-static {v0, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v0, "hm_rtc_av_delay_sdk: parse Exception:"

    .line 274
    .line 275
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    const/16 p2, 0x341b

    .line 290
    .line 291
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :goto_0
    return-void
.end method
