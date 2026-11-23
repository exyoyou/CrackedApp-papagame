.class public Lcom/coremedia/iso/boxes/s0;
.super Lcom/googlecode/mp4parser/b;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/v;


# static fields
.field public static final q:Ljava/lang/String; = "stsd"


# instance fields
.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "stsd"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/b;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b;->s()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/coremedia/iso/boxes/s0;->o:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/coremedia/iso/boxes/s0;->p:I

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->h(Ljava/nio/ByteBuffer;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    int-to-long v1, v1

    .line 33
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->h(Ljava/nio/channels/WritableByteChannel;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/s0;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getSize()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->o()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x8

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    iget-boolean v4, p0, Lcom/googlecode/mp4parser/b;->m:Z

    .line 9
    .line 10
    if-nez v4, :cond_1

    .line 11
    .line 12
    add-long/2addr v2, v0

    .line 13
    const-wide v4, 0x100000000L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v6, v2, v4

    .line 19
    .line 20
    if-ltz v6, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v2, 0x8

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/16 v2, 0x10

    .line 27
    .line 28
    :goto_1
    int-to-long v2, v2

    .line 29
    add-long/2addr v0, v2

    .line 30
    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/s0;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 p2, 0x8

    .line 2
    .line 3
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/coremedia/iso/boxes/s0;->o:I

    .line 18
    .line 19
    invoke-static {p2}, Lcom/coremedia/iso/g;->k(Ljava/nio/ByteBuffer;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iput p2, p0, Lcom/coremedia/iso/boxes/s0;->p:I

    .line 24
    .line 25
    const-wide/16 v0, 0x8

    .line 26
    .line 27
    sub-long/2addr p3, v0

    .line 28
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/googlecode/mp4parser/b;->p(Lcom/googlecode/mp4parser/e;JLcom/coremedia/iso/c;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/s0;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/s0;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public v()Lcom/coremedia/iso/boxes/sampleentry/a;
    .locals 2

    .line 1
    const-class v0, Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method
