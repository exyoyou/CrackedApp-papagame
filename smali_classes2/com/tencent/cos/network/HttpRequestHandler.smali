.class public Lcom/tencent/cos/network/HttpRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cosRequest:Lcom/tencent/cos/model/COSRequest;

.field private operatorType:B


# direct methods
.method public constructor <init>(Lcom/tencent/cos/model/COSRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput-byte v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 6
    .line 7
    iput-object p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/tencent/cos/network/HttpRequestHandler;->setOperatorType(Lcom/tencent/cos/model/COSRequest;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getAppid()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getBodys()Ljava/util/Map;

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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getBucket()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getContentType()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getCosPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDataByte()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getDataByte()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getDataFile()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getDataFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getDataStream()Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getDownloadUrl()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "filecontent"

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getHeaders()Ljava/util/Map;

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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getHttpMethod()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getFilesize()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public getListener()Lcom/tencent/cos/task/listener/ITaskListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

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
    iget-byte v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getPathForUrl()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getQueryForUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getDownloadPath()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getSign()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getSrcPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public isSliceUpload()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->isSliceFlag()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isUploadFlag()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/tencent/cos/model/PutObjectRequest;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public setOperatorType(Lcom/tencent/cos/model/COSRequest;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/tencent/cos/model/CreateDirRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x9

    .line 6
    .line 7
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/tencent/cos/model/DeleteObjectRequest;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    instance-of v0, p1, Lcom/tencent/cos/model/GetObjectMetadataRequest;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x5

    .line 23
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    instance-of v0, p1, Lcom/tencent/cos/model/GetObjectRequest;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const/4 p1, 0x3

    .line 31
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    instance-of v0, p1, Lcom/tencent/cos/model/HeadBucketRequest;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    const/16 p1, 0xd

    .line 39
    .line 40
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 41
    .line 42
    return-void

    .line 43
    :cond_4
    instance-of v0, p1, Lcom/tencent/cos/model/ListDirRequest;

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    const/16 p1, 0x8

    .line 48
    .line 49
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 50
    .line 51
    return-void

    .line 52
    :cond_5
    instance-of v0, p1, Lcom/tencent/cos/model/PutObjectRequest;

    .line 53
    .line 54
    if-eqz v0, :cond_7

    .line 55
    .line 56
    check-cast p1, Lcom/tencent/cos/model/PutObjectRequest;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->isSliceFlag()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    const/16 p1, 0xb

    .line 65
    .line 66
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_6
    const/4 p1, 0x1

    .line 70
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :cond_7
    instance-of v0, p1, Lcom/tencent/cos/model/RemoveEmptyDirRequest;

    .line 74
    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    const/4 p1, 0x6

    .line 78
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 79
    .line 80
    return-void

    .line 81
    :cond_8
    instance-of p1, p1, Lcom/tencent/cos/model/UpdateObjectRequest;

    .line 82
    .line 83
    if-eqz p1, :cond_9

    .line 84
    .line 85
    const/4 p1, 0x2

    .line 86
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 87
    .line 88
    :cond_9
    return-void
.end method
