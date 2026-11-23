.class Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/JankStatisticsTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerfdogJankCounterHelper"
.end annotation


# instance fields
.field private mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

.field private mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

.field private mName:Ljava/lang/String;

.field private mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/utils/PerfdogJankReport;Ljava/lang/String;Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;Lorg/hmwebrtc/utils/PerfdogJankCounter;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "_jank"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "_bjank"

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "_JT"

    .line 68
    .line 69
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-virtual {p1, p2, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, "_fps"

    .line 93
    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 105
    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, "_lsJT"

    .line 117
    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 129
    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, "_lsJTms"

    .line 141
    .line 142
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 150
    .line 151
    .line 152
    if-eqz p4, :cond_0

    .line 153
    .line 154
    iput-object p4, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p3}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->isEnable()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_1

    .line 162
    .line 163
    new-instance p1, Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 164
    .line 165
    const-wide/16 v1, 0x0

    .line 166
    .line 167
    invoke-static {p3}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->access$000(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v3

    .line 171
    invoke-static {p3}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->access$100(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    iget-object v6, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 176
    .line 177
    move-object v0, p1

    .line 178
    invoke-direct/range {v0 .. v6}, Lorg/hmwebrtc/utils/PerfdogJankCounter;-><init>(JJZLjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iput-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 182
    .line 183
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->writeSummary()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;)Lorg/hmwebrtc/utils/PerfdogJankCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method private writeSummary()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 6
    .line 7
    const-string v1, "-----------------"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " \u4e91\u73a9\u65f6\u957f:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 30
    .line 31
    iget-wide v2, v2, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->duration:J

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, " \u5361\u987f\u65f6\u957f:"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 61
    .line 62
    iget-wide v2, v2, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankDuration:J

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, " \u5361\u987f\u7387:"

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 92
    .line 93
    iget v2, v2, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->stutter:F

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v2, " \u5c0f\u5361\u987f\u4e2a\u6570:"

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 123
    .line 124
    iget-wide v2, v2, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankCount:J

    .line 125
    .line 126
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, " \u5927\u5361\u987f\u4e2a\u6570:"

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 154
    .line 155
    iget-wide v2, v2, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->bigJankCount:J

    .line 156
    .line 157
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v2, " \u91c7\u6837\u4e2a\u6570:"

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 185
    .line 186
    iget-wide v2, v2, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->frameCount:J

    .line 187
    .line 188
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method update(JJ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-wide v7, p1

    .line 3
    iget-object v1, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->getJankInfo(Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;)Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v9

    .line 10
    iget-object v1, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, "_jank"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-wide v3, v9, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankCount:J

    .line 32
    .line 33
    iget-wide v5, v9, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->bigJankCount:J

    .line 34
    .line 35
    add-long/2addr v5, v3

    .line 36
    move-wide v3, p1

    .line 37
    invoke-virtual/range {v1 .. v6}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addAccumulativeValue(Ljava/lang/String;JJ)Z

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v3, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, "_bjank"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-wide v5, v9, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->bigJankCount:J

    .line 62
    .line 63
    move-wide v3, p1

    .line 64
    invoke-virtual/range {v1 .. v6}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addAccumulativeValue(Ljava/lang/String;JJ)Z

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v3, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, "_JT"

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget v3, v9, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->stutter:F

    .line 89
    .line 90
    invoke-virtual {v1, v2, v7, v8, v3}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 94
    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    iget-wide v2, v9, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->timestampMs:J

    .line 98
    .line 99
    iget-wide v4, v1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->timestampMs:J

    .line 100
    .line 101
    sub-long/2addr v2, v4

    .line 102
    iget-wide v4, v9, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankDuration:J

    .line 103
    .line 104
    iget-wide v10, v1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankDuration:J

    .line 105
    .line 106
    sub-long/2addr v4, v10

    .line 107
    iget-wide v10, v9, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->bigJankDuration:J

    .line 108
    .line 109
    add-long/2addr v4, v10

    .line 110
    iget-wide v10, v1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->bigJankDuration:J

    .line 111
    .line 112
    sub-long/2addr v4, v10

    .line 113
    const-wide/16 v10, 0x0

    .line 114
    .line 115
    cmp-long v1, v2, v10

    .line 116
    .line 117
    if-eqz v1, :cond_0

    .line 118
    .line 119
    iget-object v1, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 120
    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v10, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v10, "_fps"

    .line 132
    .line 133
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    iget-wide v10, v9, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->frameCount:J

    .line 141
    .line 142
    iget-object v12, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 143
    .line 144
    iget-wide v12, v12, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->frameCount:J

    .line 145
    .line 146
    sub-long/2addr v10, v12

    .line 147
    long-to-float v10, v10

    .line 148
    const/high16 v11, 0x447a0000    # 1000.0f

    .line 149
    .line 150
    mul-float v10, v10, v11

    .line 151
    .line 152
    long-to-float v2, v2

    .line 153
    div-float/2addr v10, v2

    .line 154
    invoke-virtual {v1, v6, v7, v8, v10}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 158
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    iget-object v6, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v6, "_lsJT"

    .line 170
    .line 171
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    long-to-float v4, v4

    .line 179
    div-float v2, v4, v2

    .line 180
    .line 181
    invoke-virtual {v1, v3, v7, v8, v2}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 185
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v3, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mName:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v3, "_lsJTms"

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v1, v2, v7, v8, v4}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 206
    .line 207
    .line 208
    :cond_0
    iput-object v9, v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 209
    .line 210
    return-void
.end method
