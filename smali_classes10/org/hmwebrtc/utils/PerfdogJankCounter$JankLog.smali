.class Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/utils/PerfdogJankCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JankLog"
.end annotation


# instance fields
.field private mBigJankCount:I

.field private mBigJankList:Ljava/lang/String;

.field private mDurationMs:J

.field private mFirstFrameIndex:I

.field private mFrameTimeMsList:Ljava/lang/String;

.field private mJankCount:I

.field private mJankDurationMs:J

.field private mJankList:Ljava/lang/String;

.field public mLast1SecondFps:F

.field public mLast1SecondStutter:F

.field private mLastFrameIndex:I

.field final synthetic this$0:Lorg/hmwebrtc/utils/PerfdogJankCounter;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/utils/PerfdogJankCounter;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->this$0:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mDurationMs:J

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankDurationMs:J

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    iput-object p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFrameTimeMsList:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankList:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankList:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankCount:I

    .line 22
    .line 23
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankCount:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mLast1SecondFps:F

    .line 27
    .line 28
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mLast1SecondStutter:F

    .line 29
    .line 30
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->log()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private check()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mDurationMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mLastFrameIndex:I

    .line 10
    .line 11
    iget v3, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFirstFrameIndex:I

    .line 12
    .line 13
    sub-int/2addr v2, v3

    .line 14
    int-to-float v2, v2

    .line 15
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 16
    .line 17
    mul-float v2, v2, v3

    .line 18
    .line 19
    long-to-float v3, v0

    .line 20
    div-float/2addr v2, v3

    .line 21
    iput v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mLast1SecondFps:F

    .line 22
    .line 23
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankDurationMs:J

    .line 24
    .line 25
    long-to-float v2, v2

    .line 26
    long-to-float v0, v0

    .line 27
    div-float/2addr v2, v0

    .line 28
    iput v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mLast1SecondStutter:F

    .line 29
    .line 30
    invoke-direct {p0}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->log()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFirstFrameIndex:I

    .line 35
    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    iput-wide v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mDurationMs:J

    .line 39
    .line 40
    iput-wide v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankDurationMs:J

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    iput-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFrameTimeMsList:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankList:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankList:Ljava/lang/String;

    .line 49
    .line 50
    iput v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankCount:I

    .line 51
    .line 52
    iput v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankCount:I

    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private log()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PerfdogJankCounter-"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->this$0:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 12
    .line 13
    invoke-static {v1}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->access$100(Lorg/hmwebrtc/utils/PerfdogJankCounter;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Jank:"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankCount:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " bigJank:"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankCount:I

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " JankDurationMs:"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankDurationMs:J

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " DrationMs:"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mDurationMs:J

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " fps:"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mLast1SecondFps:F

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, " stutter:"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankDurationMs:J

    .line 85
    .line 86
    long-to-float v2, v2

    .line 87
    iget-wide v3, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mDurationMs:J

    .line 88
    .line 89
    long-to-float v3, v3

    .line 90
    div-float/2addr v2, v3

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, " indexRange : "

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFirstFrameIndex:I

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, " - "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mLastFrameIndex:I

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, " count:"

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mLastFrameIndex:I

    .line 120
    .line 121
    iget v3, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFirstFrameIndex:I

    .line 122
    .line 123
    sub-int/2addr v2, v3

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v2, "        frames: "

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFrameTimeMsList:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v2, "Jank    frames: "

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankList:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v2, "Bigjank frames: "

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankList:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method


# virtual methods
.method public onBigJank(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankList:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ","

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankList:Ljava/lang/String;

    .line 24
    .line 25
    iget p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankCount:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mBigJankCount:I

    .line 30
    .line 31
    iget-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankDurationMs:J

    .line 32
    .line 33
    add-long/2addr v0, p2

    .line 34
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankDurationMs:J

    .line 35
    .line 36
    return-void
.end method

.method public onJank(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankList:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ","

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankList:Ljava/lang/String;

    .line 24
    .line 25
    iget p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankCount:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankCount:I

    .line 30
    .line 31
    iget-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankDurationMs:J

    .line 32
    .line 33
    add-long/2addr v0, p2

    .line 34
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mJankDurationMs:J

    .line 35
    .line 36
    return-void
.end method

.method public onRenderFrame(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFrameTimeMsList:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFrameTimeMsList:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ","

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFrameTimeMsList:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFirstFrameIndex:I

    .line 32
    .line 33
    :goto_0
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mLastFrameIndex:I

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFrameTimeMsList:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mFrameTimeMsList:Ljava/lang/String;

    .line 53
    .line 54
    iget-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mDurationMs:J

    .line 55
    .line 56
    add-long/2addr v0, p2

    .line 57
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->mDurationMs:J

    .line 58
    .line 59
    invoke-direct {p0}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->check()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
