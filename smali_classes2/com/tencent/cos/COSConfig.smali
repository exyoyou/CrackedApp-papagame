.class public Lcom/tencent/cos/COSConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_COS_DOMAIN:Ljava/lang/String; = "gz.file.myqcloud.com"

.field private static final DEFAULT_HTTP_PROTOCOL:Ljava/lang/String; = "http://"

.field private static final DEFAULT_SERVER_FLAG:Ljava/lang/String; = "/files/v2"


# instance fields
.field private connectionTimeout:I

.field private cosDomain:Ljava/lang/String;

.field private endPoint:Lcom/tencent/cos/common/COSEndPoint;

.field private httpProtocol:Ljava/lang/String;

.field private maxConnectionsCount:I

.field private maxRetryCount:I

.field private serverFlag:Ljava/lang/String;

.field private socketTimeout:I

.field private threadPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "http://"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->httpProtocol:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "gz.file.myqcloud.com"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "/files/v2"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->serverFlag:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, 0x7530

    .line 17
    .line 18
    iput v0, p0, Lcom/tencent/cos/COSConfig;->connectionTimeout:I

    .line 19
    .line 20
    iput v0, p0, Lcom/tencent/cos/COSConfig;->socketTimeout:I

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lcom/tencent/cos/COSConfig;->maxConnectionsCount:I

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lcom/tencent/cos/COSConfig;->maxRetryCount:I

    .line 27
    .line 28
    iput v0, p0, Lcom/tencent/cos/COSConfig;->threadPoolSize:I

    .line 29
    .line 30
    sget-object v0, Lcom/tencent/cos/common/COSEndPoint;->COS_GZ:Lcom/tencent/cos/common/COSEndPoint;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->endPoint:Lcom/tencent/cos/common/COSEndPoint;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->connectionTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getCosDomain()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/cos/COSConfig$1;->$SwitchMap$com$tencent$cos$common$COSEndPoint:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/cos/COSConfig;->endPoint:Lcom/tencent/cos/common/COSEndPoint;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "tj.file.myqcloud.com"

    .line 22
    .line 23
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v0, "sh.file.myqcloud.com"

    .line 27
    .line 28
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v0, "gz.file.myqcloud.com"

    .line 32
    .line 33
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method public getEndPoint()Lcom/tencent/cos/common/COSEndPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSConfig;->endPoint:Lcom/tencent/cos/common/COSEndPoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHttpProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSConfig;->httpProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxConnectionsCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->maxConnectionsCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->maxRetryCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getServerFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSConfig;->serverFlag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->socketTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getThreadPoolSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->threadPoolSize:I

    .line 2
    .line 3
    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->connectionTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public setCosDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEndPoint(Lcom/tencent/cos/common/COSEndPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSConfig;->endPoint:Lcom/tencent/cos/common/COSEndPoint;

    .line 2
    .line 3
    return-void
.end method

.method public setHttpProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSConfig;->httpProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxConnectionsCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->maxConnectionsCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->maxRetryCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setServerFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSConfig;->serverFlag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->socketTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public setThreadPoolSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->threadPoolSize:I

    .line 2
    .line 3
    return-void
.end method
