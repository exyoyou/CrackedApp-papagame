.class Lcom/googlecode/mp4parser/authoring/builder/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/builder/d;->f(JJLcom/googlecode/mp4parser/authoring/h;I)Lcom/coremedia/iso/boxes/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field b:Lcom/coremedia/iso/boxes/j;

.field c:J

.field final synthetic d:Lcom/googlecode/mp4parser/authoring/builder/d;

.field private final synthetic e:J

.field private final synthetic f:J

.field private final synthetic g:Lcom/googlecode/mp4parser/authoring/h;

.field private final synthetic h:I


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/d;JJLcom/googlecode/mp4parser/authoring/h;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->d:Lcom/googlecode/mp4parser/authoring/builder/d;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->e:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->f:J

    .line 6
    .line 7
    iput-object p6, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->g:Lcom/googlecode/mp4parser/authoring/h;

    .line 8
    .line 9
    iput p7, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->h:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const-wide/16 p1, -0x1

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->c:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/d$b;->getSize()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-long v1, v1

    .line 16
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/d$b;->getType()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/coremedia/iso/f;->t(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->d:Lcom/googlecode/mp4parser/authoring/builder/d;

    .line 37
    .line 38
    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->e:J

    .line 39
    .line 40
    iget-wide v5, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->f:J

    .line 41
    .line 42
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->g:Lcom/googlecode/mp4parser/authoring/h;

    .line 43
    .line 44
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->h:I

    .line 45
    .line 46
    invoke-virtual/range {v2 .. v8}, Lcom/googlecode/mp4parser/authoring/builder/d;->H(JJLcom/googlecode/mp4parser/authoring/h;I)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/googlecode/mp4parser/authoring/f;

    .line 66
    .line 67
    invoke-interface {v1, p1}, Lcom/googlecode/mp4parser/authoring/f;->b(Ljava/nio/channels/WritableByteChannel;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0
.end method

.method public e()J
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v1, "Doesn\'t have any meaning for programmatically created boxes"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public f(Lcom/coremedia/iso/boxes/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->b:Lcom/coremedia/iso/boxes/j;

    .line 2
    .line 3
    return-void
.end method

.method public getParent()Lcom/coremedia/iso/boxes/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->b:Lcom/coremedia/iso/boxes/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()J
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->d:Lcom/googlecode/mp4parser/authoring/builder/d;

    .line 11
    .line 12
    iget-wide v6, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->e:J

    .line 13
    .line 14
    iget-wide v8, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->f:J

    .line 15
    .line 16
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->g:Lcom/googlecode/mp4parser/authoring/h;

    .line 17
    .line 18
    iget v11, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->h:I

    .line 19
    .line 20
    invoke-virtual/range {v5 .. v11}, Lcom/googlecode/mp4parser/authoring/builder/d;->H(JJLcom/googlecode/mp4parser/authoring/h;I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-wide/16 v1, 0x8

    .line 29
    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    iput-wide v1, p0, Lcom/googlecode/mp4parser/authoring/builder/d$b;->c:J

    .line 37
    .line 38
    return-wide v1

    .line 39
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/googlecode/mp4parser/authoring/f;

    .line 44
    .line 45
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/f;->getSize()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    add-long/2addr v1, v3

    .line 50
    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "mdat"

    return-object v0
.end method

.method public i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method
