.class public Lcom/tencent/cos/model/PutObjectResult;
.super Lcom/tencent/cos/model/COSResult;
.source "SourceFile"


# instance fields
.field public access_url:Ljava/lang/String;

.field public datalen:I

.field public offset:J

.field public preview_url:Ljava/lang/String;

.field public resource_path:Ljava/lang/String;

.field public serial_upload:I

.field public session:Ljava/lang/String;

.field public slice_size:I

.field public source_url:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->session:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/tencent/cos/model/PutObjectResult;->slice_size:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/tencent/cos/model/PutObjectResult;->serial_upload:I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->url:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->access_url:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->source_url:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->resource_path:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->preview_url:Ljava/lang/String;

    .line 22
    .line 23
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
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->url:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAccessUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->access_url:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourceUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->source_url:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourcePath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->resource_path:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getPreviewUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectResult;->preview_url:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v1, 0xb

    .line 56
    .line 57
    if-ne v0, v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSliceSize()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lcom/tencent/cos/model/PutObjectResult;->slice_size:I

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSerialUpload()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/tencent/cos/model/PutObjectResult;->serial_upload:I

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSession()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->session:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getOffSet()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    iput-wide v0, p0, Lcom/tencent/cos/model/PutObjectResult;->offset:J

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getDataLen()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Lcom/tencent/cos/model/PutObjectResult;->datalen:I

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getUrl()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->url:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAccessUrl()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->access_url:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourcePath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->resource_path:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourceUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->source_url:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getPreviewUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectResult;->preview_url:Ljava/lang/String;

    .line 118
    .line 119
    :cond_1
    :goto_0
    return-void
.end method
