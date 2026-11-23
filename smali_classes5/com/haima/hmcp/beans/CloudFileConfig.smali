.class public Lcom/haima/hmcp/beans/CloudFileConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ackTimeout:J

.field public bid:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field private fileCacheSize:I

.field private fileSegmentCoefficient:I

.field private fileSegmentCount:I

.field private stokenValidTime:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->fileCacheSize:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->fileSegmentCount:I

    .line 9
    .line 10
    iput v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->fileSegmentCoefficient:I

    .line 11
    .line 12
    const-wide/32 v0, 0x1d4c0

    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->stokenValidTime:J

    .line 16
    .line 17
    const-wide/16 v0, 0xbb8

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->ackTimeout:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public getAckTimeout()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->ackTimeout:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0xbb8

    .line 10
    .line 11
    :cond_0
    return-wide v0
.end method

.method public getFileCacheSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->fileCacheSize:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v1, 0x2

    .line 8
    if-le v0, v1, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    return v0
.end method

.method public getFileSegmentCoefficient()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->fileSegmentCoefficient:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    :cond_0
    return v0
.end method

.method public getFileSegmentCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->fileSegmentCount:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    return v0

    .line 7
    :cond_0
    const/16 v1, 0x80

    .line 8
    .line 9
    if-lt v0, v1, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    return v0
.end method

.method public getStokenValidTime()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->stokenValidTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    const-wide/32 v0, 0x1d4c0

    .line 10
    .line 11
    .line 12
    :cond_0
    return-wide v0
.end method

.method public setAckTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->ackTimeout:J

    .line 2
    .line 3
    return-void
.end method

.method public setFileCacheSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->fileCacheSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setFileSegmentCoefficient(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->fileSegmentCoefficient:I

    .line 2
    .line 3
    return-void
.end method

.method public setFileSegmentCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->fileSegmentCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setStokenValidTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/CloudFileConfig;->stokenValidTime:J

    .line 2
    .line 3
    return-void
.end method
