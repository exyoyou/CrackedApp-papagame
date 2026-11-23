.class Lcom/join/android/app/common/http/f$a;
.super Lokio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/f;->b(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field b:J

.field c:J

.field final synthetic d:Lcom/join/android/app/common/http/f;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/f;Lokio/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "delegate"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/f$a;->d:Lcom/join/android/app/common/http/f;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/join/android/app/common/http/f$a;->b:J

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/join/android/app/common/http/f$a;->c:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/join/android/app/common/http/f$a;->c:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long p1, v0, v2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/android/app/common/http/f$a;->d:Lcom/join/android/app/common/http/f;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/android/app/common/http/f;->contentLength()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/join/android/app/common/http/f$a;->c:J

    .line 19
    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/join/android/app/common/http/f$a;->b:J

    .line 21
    .line 22
    add-long/2addr v0, p2

    .line 23
    iput-wide v0, p0, Lcom/join/android/app/common/http/f$a;->b:J

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/android/app/common/http/f$a;->d:Lcom/join/android/app/common/http/f;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/android/app/common/http/f;->a(Lcom/join/android/app/common/http/f;)Lcom/join/android/app/common/http/g;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-wide v1, p0, Lcom/join/android/app/common/http/f$a;->b:J

    .line 32
    .line 33
    iget-wide v3, p0, Lcom/join/android/app/common/http/f$a;->c:J

    .line 34
    .line 35
    cmp-long p1, v1, v3

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    const/4 v5, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/common/http/f$a;->d:Lcom/join/android/app/common/http/f;

    .line 45
    .line 46
    iget-object v6, p1, Lcom/join/android/app/common/http/f;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface/range {v0 .. v6}, Lcom/join/android/app/common/http/g;->onRequestProgress(JJZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
