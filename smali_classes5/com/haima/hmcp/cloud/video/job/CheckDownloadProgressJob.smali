.class public Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckDownloadProgressJob"


# instance fields
.field private cancel:Z

.field private mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

.field private mCheckedProgress:J

.field private mFreezeCountMax:I

.field private mProgressFreezeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->cancel:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, p1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressFreezeCounts:I

    .line 12
    .line 13
    iput p1, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mFreezeCountMax:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 p1, 0xa

    .line 17
    .line 18
    iput p1, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mFreezeCountMax:I

    .line 19
    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: file download progress checker canceled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->cancel:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mProgressFreezeCount:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 16
    .line 17
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->cancel:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onProgressCheck()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "download-file: file download progress checker error: progress == -1"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->cancel()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-wide v2, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mCheckedProgress:J

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    cmp-long v5, v0, v2

    .line 35
    .line 36
    if-lez v5, :cond_2

    .line 37
    .line 38
    iput v4, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mProgressFreezeCount:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget v2, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mProgressFreezeCount:I

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    iput v2, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mProgressFreezeCount:I

    .line 46
    .line 47
    :goto_0
    sget-object v2, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v5, "download-file: file download progress checker: lastProgress="

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v5, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mCheckedProgress:J

    .line 60
    .line 61
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v5, ", currentProgress="

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v5, ", progressFreezeCount="

    .line 73
    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v5, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mProgressFreezeCount:I

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput-wide v0, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mCheckedProgress:J

    .line 90
    .line 91
    iget v0, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mProgressFreezeCount:I

    .line 92
    .line 93
    iget v1, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mFreezeCountMax:I

    .line 94
    .line 95
    if-ne v0, v1, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onProgressFreeze()V

    .line 102
    .line 103
    .line 104
    :cond_3
    iput v4, p0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->mProgressFreezeCount:I

    .line 105
    .line 106
    :cond_4
    return-void

    .line 107
    :cond_5
    :goto_1
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    const-string v1, "download-file: file download progress checker is canceled when running"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method
