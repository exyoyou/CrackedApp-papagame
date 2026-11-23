.class public Lorg/hmwebrtc/utils/TimeDiff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_MAX_INTERVAL_MS:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "TimeDiff"


# instance fields
.field private mDiffStringList:Ljava/lang/String;

.field private mLastLogoutTimeMs:J

.field private mPushTimeMs:J

.field private mSampleCount:J

.field private final mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/hmwebrtc/utils/TimeDiff;->mDiffStringList:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "TimeDiff"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_0
    iput-object p1, p0, Lorg/hmwebrtc/utils/TimeDiff;->mTagName:Ljava/lang/String;

    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    iput-wide v0, p0, Lorg/hmwebrtc/utils/TimeDiff;->mPushTimeMs:J

    .line 40
    .line 41
    iput-wide v0, p0, Lorg/hmwebrtc/utils/TimeDiff;->mSampleCount:J

    .line 42
    .line 43
    return-void
.end method

.method private log(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/hmwebrtc/utils/TimeDiff;->ToString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/hmwebrtc/utils/TimeDiff;->mLastLogoutTimeMs:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ToString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/utils/TimeDiff;->mTagName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " startTime:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lorg/hmwebrtc/utils/TimeDiff;->mLastLogoutTimeMs:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ",count:"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Lorg/hmwebrtc/utils/TimeDiff;->mSampleCount:J

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ",values:["

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/hmwebrtc/utils/TimeDiff;->mDiffStringList:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "]"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, ""

    .line 51
    .line 52
    iput-object v1, p0, Lorg/hmwebrtc/utils/TimeDiff;->mDiffStringList:Ljava/lang/String;

    .line 53
    .line 54
    const-wide/16 v1, 0x0

    .line 55
    .line 56
    iput-wide v1, p0, Lorg/hmwebrtc/utils/TimeDiff;->mSampleCount:J

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    iput-wide v1, p0, Lorg/hmwebrtc/utils/TimeDiff;->mLastLogoutTimeMs:J

    .line 63
    .line 64
    return-object v0
.end method

.method public add()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/hmwebrtc/utils/TimeDiff;->pop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/hmwebrtc/utils/TimeDiff;->push()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public pop()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/utils/TimeDiff;->mPushTimeMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v4, p0, Lorg/hmwebrtc/utils/TimeDiff;->mLastLogoutTimeMs:J

    .line 15
    .line 16
    cmp-long v6, v4, v2

    .line 17
    .line 18
    if-nez v6, :cond_1

    .line 19
    .line 20
    iput-wide v0, p0, Lorg/hmwebrtc/utils/TimeDiff;->mLastLogoutTimeMs:J

    .line 21
    .line 22
    :cond_1
    iget-object v2, p0, Lorg/hmwebrtc/utils/TimeDiff;->mDiffStringList:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lorg/hmwebrtc/utils/TimeDiff;->mDiffStringList:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-wide v3, p0, Lorg/hmwebrtc/utils/TimeDiff;->mPushTimeMs:J

    .line 41
    .line 42
    sub-long v3, v0, v3

    .line 43
    .line 44
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, p0, Lorg/hmwebrtc/utils/TimeDiff;->mDiffStringList:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lorg/hmwebrtc/utils/TimeDiff;->mDiffStringList:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, ","

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-wide v3, p0, Lorg/hmwebrtc/utils/TimeDiff;->mPushTimeMs:J

    .line 70
    .line 71
    sub-long v3, v0, v3

    .line 72
    .line 73
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iput-object v2, p0, Lorg/hmwebrtc/utils/TimeDiff;->mDiffStringList:Ljava/lang/String;

    .line 81
    .line 82
    :goto_0
    iget-wide v2, p0, Lorg/hmwebrtc/utils/TimeDiff;->mSampleCount:J

    .line 83
    .line 84
    const-wide/16 v4, 0x1

    .line 85
    .line 86
    add-long/2addr v2, v4

    .line 87
    iput-wide v2, p0, Lorg/hmwebrtc/utils/TimeDiff;->mSampleCount:J

    .line 88
    .line 89
    iget-wide v2, p0, Lorg/hmwebrtc/utils/TimeDiff;->mLastLogoutTimeMs:J

    .line 90
    .line 91
    sub-long v2, v0, v2

    .line 92
    .line 93
    const-wide/16 v4, 0x4e20

    .line 94
    .line 95
    cmp-long v6, v2, v4

    .line 96
    .line 97
    if-lez v6, :cond_3

    .line 98
    .line 99
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/utils/TimeDiff;->log(J)V

    .line 100
    .line 101
    .line 102
    iput-wide v0, p0, Lorg/hmwebrtc/utils/TimeDiff;->mPushTimeMs:J

    .line 103
    .line 104
    :cond_3
    return-void
.end method

.method public push()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lorg/hmwebrtc/utils/TimeDiff;->mPushTimeMs:J

    .line 6
    .line 7
    return-void
.end method
