.class public Lcom/tencent/cos/network/HttpResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.network.HttpResponseHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 2

    .line 1
    if-eqz p0, :cond_a

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_9

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x4

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseDeleteObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x3

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseGetObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x2

    .line 49
    if-ne v0, v1, :cond_3

    .line 50
    .line 51
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseUpdateObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x5

    .line 61
    if-ne v0, v1, :cond_4

    .line 62
    .line 63
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseGetObjectMetadata(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/16 v1, 0x9

    .line 73
    .line 74
    if-ne v0, v1, :cond_5

    .line 75
    .line 76
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseCreateDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v1, 0x8

    .line 86
    .line 87
    if-ne v0, v1, :cond_6

    .line 88
    .line 89
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseListDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/16 v1, 0xd

    .line 99
    .line 100
    if-ne v0, v1, :cond_7

    .line 101
    .line 102
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseHeadBucket(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/4 v1, 0x6

    .line 112
    if-ne v0, v1, :cond_8

    .line 113
    .line 114
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseRemoveEmptyDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    sget-object v1, Lcom/tencent/cos/network/HttpResponseHandler;->TAG:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, " \uff1a\u672a\u77e5\u7684\u64cd\u4f5c\u7c7b\u578b"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_9
    :goto_0
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parsePutObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    const-string v0, "\u7f51\u7edc\u8fd4\u56de\u5185\u5bb9\u4e3a\u7a7a"

    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0
.end method

.method protected static parseCreateDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/CreateDirResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/cos/model/CreateDirResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/CreateDirResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method protected static parseDeleteObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/DeleteObjectResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/cos/model/DeleteObjectResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/DeleteObjectResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method protected static parseGetObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/GetObjectResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/GetObjectResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method protected static parseGetObjectMetadata(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/GetObjectMetadataResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/cos/model/GetObjectMetadataResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/GetObjectMetadataResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method protected static parseHeadBucket(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/HeadBucketResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/cos/model/HeadBucketResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/HeadBucketResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method protected static parseListDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/ListDirResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/cos/model/ListDirResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/ListDirResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method protected static parsePutObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/PutObjectResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/cos/model/PutObjectResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/PutObjectResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method protected static parseRemoveEmptyDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/RemoveEmptyDirResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/cos/model/RemoveEmptyDirResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/RemoveEmptyDirResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method protected static parseUpdateObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/UpdateObjectResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/cos/model/UpdateObjectResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/UpdateObjectResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
