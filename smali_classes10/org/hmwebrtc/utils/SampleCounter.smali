.class public Lorg/hmwebrtc/utils/SampleCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_MAX_INTERVAL_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "TimeDiff"


# instance fields
.field private mCount:I

.field private mLastLogoutTimeMs:J

.field private mSampleCount:I

.field private mStringList:Ljava/lang/String;

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/hmwebrtc/utils/SampleCounter;->mStringList:Ljava/lang/String;

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
    iput-object p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mTagName:Ljava/lang/String;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mSampleCount:I

    .line 39
    .line 40
    iput p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mCount:I

    .line 41
    .line 42
    return-void
.end method

.method private ToString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mTagName:Ljava/lang/String;

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
    iget-wide v1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mLastLogoutTimeMs:J

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
    iget v1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mSampleCount:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget-object v1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mStringList:Ljava/lang/String;

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
    iput-object v1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mStringList:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    iput v1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mSampleCount:I

    .line 56
    .line 57
    iput v1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mCount:I

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    iput-wide v1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mLastLogoutTimeMs:J

    .line 64
    .line 65
    return-object v0
.end method

.method private log(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/utils/SampleCounter;->ToString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mLastLogoutTimeMs:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/utils/SampleCounter;->mSampleCount:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Lorg/hmwebrtc/utils/SampleCounter;->set(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public set(I)V
    .locals 6

    .line 1
    iput p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mSampleCount:I

    .line 2
    .line 3
    iget p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mCount:I

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mCount:I

    .line 8
    .line 9
    iget-object p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mStringList:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/hmwebrtc/utils/SampleCounter;->mStringList:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lorg/hmwebrtc/utils/SampleCounter;->mSampleCount:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mStringList:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/hmwebrtc/utils/SampleCounter;->mStringList:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ","

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lorg/hmwebrtc/utils/SampleCounter;->mSampleCount:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lorg/hmwebrtc/utils/SampleCounter;->mStringList:Ljava/lang/String;

    .line 64
    .line 65
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    iget-wide v2, p0, Lorg/hmwebrtc/utils/SampleCounter;->mLastLogoutTimeMs:J

    .line 70
    .line 71
    const-wide/16 v4, 0x0

    .line 72
    .line 73
    cmp-long p1, v2, v4

    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    iput-wide v0, p0, Lorg/hmwebrtc/utils/SampleCounter;->mLastLogoutTimeMs:J

    .line 78
    .line 79
    :cond_1
    iget-wide v2, p0, Lorg/hmwebrtc/utils/SampleCounter;->mLastLogoutTimeMs:J

    .line 80
    .line 81
    sub-long v2, v0, v2

    .line 82
    .line 83
    const-wide/16 v4, 0x2710

    .line 84
    .line 85
    cmp-long p1, v2, v4

    .line 86
    .line 87
    if-lez p1, :cond_2

    .line 88
    .line 89
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/utils/SampleCounter;->log(J)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method
