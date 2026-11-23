.class Lcom/coremedia/iso/boxes/sampleentry/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coremedia/iso/boxes/sampleentry/h;->i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/coremedia/iso/boxes/sampleentry/h;

.field private final synthetic c:J

.field private final synthetic d:Lcom/googlecode/mp4parser/e;


# direct methods
.method constructor <init>(Lcom/coremedia/iso/boxes/sampleentry/h;JLcom/googlecode/mp4parser/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->b:Lcom/coremedia/iso/boxes/sampleentry/h;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public W(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/googlecode/mp4parser/e;->W(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/e;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/e;->position()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public r(JJ)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/e;->r(JJ)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->c:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 4
    .line 5
    invoke-interface {v2}, Lcom/googlecode/mp4parser/e;->position()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-long v0, v0

    .line 20
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->c:J

    .line 21
    .line 22
    iget-object v4, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 23
    .line 24
    invoke-interface {v4}, Lcom/googlecode/mp4parser/e;->position()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    sub-long/2addr v2, v4

    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-lez v4, :cond_1

    .line 32
    .line 33
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->c:J

    .line 34
    .line 35
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/googlecode/mp4parser/e;->position()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    sub-long/2addr v0, v2

    .line 42
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 51
    .line 52
    invoke-interface {v1, v0}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 70
    .line 71
    invoke-interface {v0, p1}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public w(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h$a;->d:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move-wide v3, p3

    .line 5
    move-object v5, p5

    .line 6
    invoke-interface/range {v0 .. v5}, Lcom/googlecode/mp4parser/e;->w(JJLjava/nio/channels/WritableByteChannel;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method
