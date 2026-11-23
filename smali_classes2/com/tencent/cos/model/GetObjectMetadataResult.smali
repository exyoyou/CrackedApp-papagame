.class public Lcom/tencent/cos/model/GetObjectMetadataResult;
.super Lcom/tencent/cos/model/COSResult;
.source "SourceFile"


# instance fields
.field public access_url:Ljava/lang/String;

.field public authority:Ljava/lang/String;

.field public biz_attr:Ljava/lang/String;

.field public ctime:J

.field public custom_headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filelen:I

.field public filesize:I

.field public mtime:J

.field public name:Ljava/lang/String;

.field public sha:Ljava/lang/String;

.field private source_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->biz_attr:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->filelen:I

    .line 11
    .line 12
    iput v1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->filesize:I

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->sha:Ljava/lang/String;

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->ctime:J

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->mtime:J

    .line 21
    .line 22
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->access_url:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->authority:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->source_url:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->custom_headers:Ljava/util/Map;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getResponse(Lcom/tencent/cos/network/HttpResponse;)V
    .locals 2

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
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->name:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getBizattr()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->biz_attr:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getFileSize()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->filesize:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getFileLen()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->filelen:I

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSha()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->sha:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->mtime:J

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCtime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iput-wide v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->ctime:J

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAccessUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->access_url:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAuthority()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->authority:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCustomHeaders()Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->custom_headers:Ljava/util/Map;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourceUrl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->source_url:Ljava/lang/String;

    .line 78
    .line 79
    return-void
.end method
