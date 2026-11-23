.class public Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ignoreResponse:Z

.field private index:I

.field private intervals:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;->index:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;->ignoreResponse:Z

    .line 8
    .line 9
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveRetryStrategy:[Ljava/lang/Long;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;->intervals:[Ljava/lang/Long;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getInterval()J
    .locals 3

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;->index:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;->intervals:[Ljava/lang/Long;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    add-int/lit8 v2, v0, 0x1

    .line 9
    .line 10
    iput v2, p0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;->index:I

    .line 11
    .line 12
    aget-object v0, v1, v0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    :goto_0
    return-wide v0
.end method

.method public ignoreResponse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "KeepAliveRetryStrategy{INTERVALS="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;->intervals:[Ljava/lang/Long;

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", index="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;->index:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", ignoreResponse="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x7d

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
