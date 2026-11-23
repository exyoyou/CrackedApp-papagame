.class public Lcom/tencent/cos/network/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cosRequest:Lcom/tencent/cos/model/COSRequest;

.field private requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/model/COSRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/cos/network/HttpRequest;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 3
    new-instance v0, Lcom/tencent/cos/network/HttpRequestHandler;

    invoke-direct {v0, p1}, Lcom/tencent/cos/network/HttpRequestHandler;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    iput-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/network/HttpRequestHandler;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getAppid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBodys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getBodys()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getBucket()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getContentType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCosPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getCosPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDataByte()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getDataByte()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDataFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getDataFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getDataStream()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getDownloadUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFileContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getFileContent()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getHeaders()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getHttpMethod()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getListener()Lcom/tencent/cos/task/listener/ITaskListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOperatorType()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getOperatorType()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPathForUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/exception/COSClientException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getPathForUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getQueryForUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/exception/COSClientException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getQueryForUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequest()Lcom/tencent/cos/model/COSRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestHandler()Lcom/tencent/cos/network/HttpRequestHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getSavePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getSign()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->getSrcPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isSliceUpload()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->isSliceUpload()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isUploadFlag()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequest;->requestHandler:Lcom/tencent/cos/network/HttpRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequestHandler;->isUploadFlag()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
