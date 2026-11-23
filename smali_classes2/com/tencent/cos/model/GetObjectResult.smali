.class public Lcom/tencent/cos/model/GetObjectResult;
.super Lcom/tencent/cos/model/COSResult;
.source "SourceFile"


# instance fields
.field public downloadUrl:Ljava/lang/String;

.field public localPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getResponse(Lcom/tencent/cos/network/HttpResponse;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getRet()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/tencent/cos/model/COSResult;->code:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMsg()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getDownloadUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getLocalPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method
