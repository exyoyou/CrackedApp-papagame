.class public Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cloudFile:Lcom/haima/hmcp/beans/CloudFile;

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public checkResponseValidity(JLcom/haima/hmcp/beans/CloudFile;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez p3, :cond_1

    .line 8
    .line 9
    return v1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p3}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p3}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    iget-wide v2, p0, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;->timeStamp:J

    .line 37
    .line 38
    cmp-long v4, v2, p1

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_2
    return v1
.end method

.method public setCloudFile(Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;->timeStamp:J

    .line 2
    .line 3
    return-void
.end method
