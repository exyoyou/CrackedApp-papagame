.class public Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/task/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SimpleUploadRequestBody"
.end annotation


# instance fields
.field private final SEGMENT_SIZE:I

.field private contentType:Ljava/lang/String;

.field private dataByte:[B

.field private dataFile:Ljava/io/File;

.field private dataStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/tencent/cos/task/UploadTask;

.field private totalLength:J


# direct methods
.method public constructor <init>(Lcom/tencent/cos/task/UploadTask;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const/16 p1, 0x800

    .line 2
    iput p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->SEGMENT_SIZE:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataStream:Ljava/io/InputStream;

    .line 4
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    const-string p1, "text/plain"

    .line 5
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataFile:Ljava/io/File;

    if-eqz p3, :cond_0

    .line 7
    iput-object p3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/task/UploadTask;Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const/16 p1, 0x800

    .line 18
    iput p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->SEGMENT_SIZE:I

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataFile:Ljava/io/File;

    .line 20
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    const-string p1, "text/plain"

    .line 21
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataStream:Ljava/io/InputStream;

    if-eqz p3, :cond_0

    .line 23
    iput-object p3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 24
    :cond_0
    iput-wide p4, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/task/UploadTask;[BLjava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const/16 p1, 0x800

    .line 10
    iput p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->SEGMENT_SIZE:I

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataFile:Ljava/io/File;

    .line 12
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataStream:Ljava/io/InputStream;

    const-string p1, "text/plain"

    .line 13
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    if-eqz p3, :cond_0

    .line 15
    iput-object p3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 16
    :cond_0
    array-length p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataStream:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataFile:Ljava/io/File;

    .line 28
    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    const-wide/16 v1, 0x0

    .line 36
    .line 37
    :cond_2
    :goto_1
    iget-wide v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    .line 38
    .line 39
    cmp-long v5, v1, v3

    .line 40
    .line 41
    if-gez v5, :cond_4

    .line 42
    .line 43
    sub-long/2addr v3, v1

    .line 44
    const-wide/16 v5, 0x800

    .line 45
    .line 46
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-interface {v0, v5, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    const-wide/16 v5, -0x1

    .line 59
    .line 60
    cmp-long v7, v3, v5

    .line 61
    .line 62
    if-nez v7, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    add-long/2addr v1, v3

    .line 66
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->isSliceUpload()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    .line 90
    .line 91
    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    move-object v8, v3

    .line 98
    check-cast v8, Lcom/tencent/cos/task/listener/IUploadTaskListener;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    .line 101
    .line 102
    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    iget-wide v12, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    .line 109
    .line 110
    move-wide v10, v1

    .line 111
    invoke-interface/range {v8 .. v13}, Lcom/tencent/cos/task/listener/IUploadTaskListener;->onProgress(Lcom/tencent/cos/model/COSRequest;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 118
    .line 119
    .line 120
    :cond_5
    return-void

    .line 121
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    const-string v1, "\u6570\u636e\u6765\u6e90\u4e3anull"

    .line 124
    .line 125
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    goto :goto_4

    .line 131
    :catch_0
    move-exception p1

    .line 132
    :try_start_2
    iget-object v1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    .line 133
    .line 134
    iget-boolean v1, v1, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 135
    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    invoke-static {}, Lcom/tencent/cos/task/UploadTask;->access$000()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v3, "task: "

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    .line 153
    .line 154
    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v3, " is cancelled"

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_7
    invoke-static {}, Lcom/tencent/cos/task/UploadTask;->access$000()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v1, v2, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    :goto_3
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :goto_4
    if-eqz v0, :cond_8

    .line 193
    .line 194
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 195
    .line 196
    .line 197
    :cond_8
    throw p1
.end method
