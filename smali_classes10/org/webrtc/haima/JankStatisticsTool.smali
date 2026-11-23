.class Lorg/webrtc/haima/JankStatisticsTool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;,
        Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;,
        Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;,
        Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;,
        Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;,
        Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;
    }
.end annotation


# static fields
.field private static final CLOUD_JANK_EGLDRAW_KEY:Ljava/lang/String; = "HMRTC_VideoJank_EglDraw_V1"

.field private static final CLOUD_JANK_EGLRECV_KEY:Ljava/lang/String; = "HMRTC_VideoJank_EglRecv_V1"

.field private static final CLOUD_JANK_NATIVE_KEY:Ljava/lang/String; = "HMRTC_VideoJank_V1"

.field private static final CLOUD_JANK_PERFCAT_KEY:Ljava/lang/String; = "HMRTC_VideoJank_Perfcat_V1"

.field private static final CLOUD_JANK_REPORT_KEY:Ljava/lang/String; = "HMRTC_VideoJank_Report_V1"

.field private static TAG:Ljava/lang/String; = "JankStatisticsTool"


# instance fields
.field private mConfig:Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;

.field private mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

.field private mNativeJankCounter:Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;

.field private mPerfCat:Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;

.field private mRecvJankCounter:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

.field private mRenderCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

.field private mRenderJankCounter:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

.field private mStartTimems:J

.field private mUseNativeOpt:Z

.field private mUseTextureRender:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;ZLorg/hmwebrtc/utils/PerfdogJankCounter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mConfig:Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/webrtc/haima/JankStatisticsTool;->mUseTextureRender:Z

    .line 7
    .line 8
    iput-object p3, p0, Lorg/webrtc/haima/JankStatisticsTool;->mRenderCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/JankStatisticsTool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static createEglRenderJankCounter()Lorg/hmwebrtc/utils/PerfdogJankCounter;
    .locals 9

    .line 1
    new-instance v0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;

    .line 2
    .line 3
    const-string v1, "HMRTC_VideoJank_EglDraw_V1"

    .line 4
    .line 5
    const-string v2, "enable:0,frame_time_corrected_ms:8,stat:0"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHMRTCValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->isEnable()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    invoke-static {v0}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->access$000(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    invoke-static {v0}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->access$100(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const-string v8, "GLDraw"

    .line 33
    .line 34
    move-object v2, v1

    .line 35
    invoke-direct/range {v2 .. v8}, Lorg/hmwebrtc/utils/PerfdogJankCounter;-><init>(JJZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public static createJankTool(ZLorg/hmwebrtc/utils/PerfdogJankCounter;)Lorg/webrtc/haima/JankStatisticsTool;
    .locals 3

    .line 1
    new-instance v0, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;

    .line 2
    .line 3
    const-string v1, "HMRTC_VideoJank_Report_V1"

    .line 4
    .line 5
    const-string v2, "enable:0"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHMRTCValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->isEnable()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lorg/webrtc/haima/JankStatisticsTool;

    .line 21
    .line 22
    invoke-direct {v1, v0, p0, p1}, Lorg/webrtc/haima/JankStatisticsTool;-><init>(Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;ZLorg/hmwebrtc/utils/PerfdogJankCounter;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private writeSummary()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mNativeJankCounter:Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->access$300(Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mRecvJankCounter:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->access$400(Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mRenderJankCounter:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {v0}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->access$400(Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mConfig:Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->isEnable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p0, Lorg/webrtc/haima/JankStatisticsTool;->mStartTimems:J

    .line 19
    .line 20
    new-instance v0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;

    .line 21
    .line 22
    const-string v2, "HMRTC_VideoJank_V1"

    .line 23
    .line 24
    const-string v3, "enable:1"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHMRTCValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v0, v2}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->isEnable()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput-boolean v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mUseNativeOpt:Z

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool;->mConfig:Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;

    .line 45
    .line 46
    invoke-virtual {v2}, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->getReportDir()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "jankreport_"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-boolean p1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mUseTextureRender:Z

    .line 74
    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    const-string p1, "_T_"

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string p1, "_S_"

    .line 81
    .line 82
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-boolean p1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mUseNativeOpt:Z

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, ".html"

    .line 115
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
    new-instance v0, Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 124
    .line 125
    invoke-direct {v0, p1}, Lorg/hmwebrtc/utils/PerfdogJankReport;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 129
    .line 130
    const-string p1, "play_duration"

    .line 131
    .line 132
    invoke-virtual {v0, p1, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 133
    .line 134
    .line 135
    new-instance p1, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;

    .line 136
    .line 137
    const-string v0, "HMRTC_VideoJank_EglRecv_V1"

    .line 138
    .line 139
    const-string v1, "enable:0"

    .line 140
    .line 141
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHMRTCValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-direct {p1, v0}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->isEnable()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    new-instance v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 155
    .line 156
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool;->mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 157
    .line 158
    const-string v4, "GLRcv"

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    invoke-direct {v0, v2, v4, p1, v5}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;-><init>(Lorg/hmwebrtc/utils/PerfdogJankReport;Ljava/lang/String;Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;Lorg/hmwebrtc/utils/PerfdogJankCounter;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mRecvJankCounter:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 165
    .line 166
    :cond_2
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mRenderCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 167
    .line 168
    if-eqz v0, :cond_3

    .line 169
    .line 170
    new-instance v2, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 171
    .line 172
    iget-object v4, p0, Lorg/webrtc/haima/JankStatisticsTool;->mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 173
    .line 174
    const-string v5, "GLDraw"

    .line 175
    .line 176
    invoke-direct {v2, v4, v5, p1, v0}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;-><init>(Lorg/hmwebrtc/utils/PerfdogJankReport;Ljava/lang/String;Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;Lorg/hmwebrtc/utils/PerfdogJankCounter;)V

    .line 177
    .line 178
    .line 179
    iput-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool;->mRenderJankCounter:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 180
    .line 181
    :cond_3
    const-string p1, "HMRTC_VideoJank_Perfcat_V1"

    .line 182
    .line 183
    invoke-static {p1, v1}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHMRTCValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_4

    .line 192
    .line 193
    new-instance p1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;

    .line 194
    .line 195
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 196
    .line 197
    invoke-direct {p1, v0}, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;-><init>(Lorg/hmwebrtc/utils/PerfdogJankReport;)V

    .line 198
    .line 199
    .line 200
    iput-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mPerfCat:Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;

    .line 201
    .line 202
    :cond_4
    new-instance p1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;

    .line 203
    .line 204
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 205
    .line 206
    const-string v1, "c"

    .line 207
    .line 208
    invoke-direct {p1, v0, v1}, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;-><init>(Lorg/hmwebrtc/utils/PerfdogJankReport;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iput-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mNativeJankCounter:Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;

    .line 212
    .line 213
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 214
    .line 215
    invoke-virtual {p1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->start()Z

    .line 216
    .line 217
    .line 218
    const/4 p1, 0x1

    .line 219
    return p1

    .line 220
    :cond_5
    :goto_1
    return v1
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/webrtc/haima/JankStatisticsTool;->writeSummary()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mPerfCat:Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-wide v1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mStartTimems:J

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->dump(J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->stop()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public getRecvJankCounter()Lorg/hmwebrtc/utils/PerfdogJankCounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mRecvJankCounter:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->access$500(Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;)Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public update(Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mConfig:Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->isEnable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v7

    .line 16
    iget-wide v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mStartTimems:J

    .line 17
    .line 18
    sub-long v9, v7, v0

    .line 19
    .line 20
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool;->mJankreport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 21
    .line 22
    const-string v1, "play_duration"

    .line 23
    .line 24
    long-to-float v2, v9

    .line 25
    invoke-virtual {v0, v1, v7, v8, v2}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mNativeJankCounter:Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move-wide v2, v7

    .line 33
    move-wide v4, v9

    .line 34
    move-object v6, p1

    .line 35
    invoke-static/range {v1 .. v6}, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->access$200(Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;JJLorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mRecvJankCounter:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, v7, v8, v9, v10}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->update(JJ)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool;->mRenderJankCounter:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v7, v8, v9, v10}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->update(JJ)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method
