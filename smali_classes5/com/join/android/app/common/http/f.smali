.class public Lcom/join/android/app/common/http/f;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field private final a:Lokhttp3/RequestBody;

.field private final b:Lcom/join/android/app/common/http/g;

.field private c:Lokio/BufferedSink;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestBody",
            "progressListener",
            "filename"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/android/app/common/http/f;->a:Lokhttp3/RequestBody;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/android/app/common/http/f;->b:Lcom/join/android/app/common/http/g;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/android/app/common/http/f;->d:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/http/f;)Lcom/join/android/app/common/http/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/http/f;->b:Lcom/join/android/app/common/http/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Lokio/Sink;)Lokio/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/common/http/f$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/android/app/common/http/f$a;-><init>(Lcom/join/android/app/common/http/f;Lokio/Sink;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    iget-object v0, p0, Lcom/join/android/app/common/http/f;->a:Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/f;->a:Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/f;->c:Lokio/BufferedSink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/f;->b(Lokio/Sink;)Lokio/Sink;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/join/android/app/common/http/f;->c:Lokio/BufferedSink;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/common/http/f;->a:Lokhttp3/RequestBody;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/android/app/common/http/f;->c:Lokio/BufferedSink;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/android/app/common/http/f;->c:Lokio/BufferedSink;

    .line 23
    .line 24
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
