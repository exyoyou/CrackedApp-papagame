.class public Lcom/coremedia/iso/boxes/sampleentry/g;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/sampleentry/g$a;,
        Lcom/coremedia/iso/boxes/sampleentry/g$b;
    }
.end annotation


# static fields
.field public static final v:Ljava/lang/String; = "tx3g"

.field public static final w:Ljava/lang/String; = "enct"


# instance fields
.field private p:J

.field private q:I

.field private r:I

.field private s:[I

.field private t:Lcom/coremedia/iso/boxes/sampleentry/g$a;

.field private u:Lcom/coremedia/iso/boxes/sampleentry/g$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "tx3g"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 3
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/g$a;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/g$a;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->t:Lcom/coremedia/iso/boxes/sampleentry/g$a;

    .line 4
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/g$b;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/g$b;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->u:Lcom/coremedia/iso/boxes/sampleentry/g$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 7
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/g$a;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/sampleentry/g$a;-><init>()V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->t:Lcom/coremedia/iso/boxes/sampleentry/g$a;

    .line 8
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/g$b;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/sampleentry/g$b;-><init>()V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->u:Lcom/coremedia/iso/boxes/sampleentry/g$b;

    return-void
.end method


# virtual methods
.method public I()Lcom/coremedia/iso/boxes/sampleentry/g$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->u:Lcom/coremedia/iso/boxes/sampleentry/g$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public K()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 2
    .line 3
    const-wide/16 v2, 0x800

    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public L()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 2
    .line 3
    const-wide/32 v2, 0x40000

    .line 4
    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public M()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 2
    .line 3
    const-wide/16 v2, 0x180

    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public O()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 2
    .line 3
    const-wide/16 v2, 0x20

    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public P()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 2
    .line 3
    const-wide/16 v2, 0x40

    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public Q()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 2
    .line 3
    const-wide/32 v2, 0x20000

    .line 4
    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public R([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 2
    .line 3
    return-void
.end method

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
    const/16 v0, 0x26

    .line 9
    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x6

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->o:I

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 21
    .line 22
    .line 23
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->q:I

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->r:I

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aget v1, v1, v2

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    aget v1, v1, v2

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    aget v1, v1, v2

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    aget v1, v1, v2

    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->t:Lcom/coremedia/iso/boxes/sampleentry/g$a;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/g$a;->a(Ljava/nio/ByteBuffer;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->u:Lcom/coremedia/iso/boxes/sampleentry/g$b;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/g$b;->a(Ljava/nio/ByteBuffer;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->h(Ljava/nio/channels/WritableByteChannel;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public a0(Lcom/coremedia/iso/boxes/sampleentry/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->t:Lcom/coremedia/iso/boxes/sampleentry/g$a;

    .line 2
    .line 3
    return-void
.end method

.method public c0(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 4
    .line 5
    const-wide/16 v2, 0x800

    .line 6
    .line 7
    or-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 12
    .line 13
    const-wide/16 v2, -0x801

    .line 14
    .line 15
    and-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public d0(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 4
    .line 5
    const-wide/32 v2, 0x40000

    .line 6
    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 13
    .line 14
    const-wide/32 v2, -0x40001

    .line 15
    .line 16
    .line 17
    and-long/2addr v0, v2

    .line 18
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public e0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public f0(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 4
    .line 5
    const-wide/16 v2, 0x180

    .line 6
    .line 7
    or-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 12
    .line 13
    const-wide/16 v2, -0x181

    .line 14
    .line 15
    and-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public g0(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 4
    .line 5
    const-wide/16 v2, 0x20

    .line 6
    .line 7
    or-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 12
    .line 13
    const-wide/16 v2, -0x21

    .line 14
    .line 15
    and-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public getSize()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->o()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x26

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b;->m:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    const-wide v2, 0x100000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-ltz v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v2, 0x8

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/16 v2, 0x10

    .line 26
    .line 27
    :goto_1
    int-to-long v2, v2

    .line 28
    add-long/2addr v0, v2

    .line 29
    return-wide v0
.end method

.method public i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 p2, 0x26

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
    const/4 v0, 0x6

    .line 11
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->o:I

    .line 19
    .line 20
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 25
    .line 26
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->q:I

    .line 31
    .line 32
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->r:I

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    new-array v0, v0, [I

    .line 40
    .line 41
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    aput v2, v0, v1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    aput v2, v0, v1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    aput v2, v0, v1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    aput v2, v0, v1

    .line 76
    .line 77
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/g$a;

    .line 78
    .line 79
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/g$a;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->t:Lcom/coremedia/iso/boxes/sampleentry/g$a;

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Lcom/coremedia/iso/boxes/sampleentry/g$a;->c(Ljava/nio/ByteBuffer;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/g$b;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/g$b;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->u:Lcom/coremedia/iso/boxes/sampleentry/g$b;

    .line 93
    .line 94
    invoke-virtual {v0, p2}, Lcom/coremedia/iso/boxes/sampleentry/g$b;->c(Ljava/nio/ByteBuffer;)V

    .line 95
    .line 96
    .line 97
    const-wide/16 v0, 0x26

    .line 98
    .line 99
    sub-long/2addr p3, v0

    .line 100
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/googlecode/mp4parser/b;->p(Lcom/googlecode/mp4parser/e;JLcom/coremedia/iso/c;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public i0(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 4
    .line 5
    const-wide/16 v2, 0x40

    .line 6
    .line 7
    or-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 12
    .line 13
    const-wide/16 v2, -0x41

    .line 14
    .line 15
    and-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public j0(Lcom/coremedia/iso/boxes/sampleentry/g$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->u:Lcom/coremedia/iso/boxes/sampleentry/g$b;

    .line 2
    .line 3
    return-void
.end method

.method public k0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public l0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public m0(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 4
    .line 5
    const-wide/32 v2, 0x20000

    .line 6
    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 13
    .line 14
    const-wide/32 v2, -0x20001

    .line 15
    .line 16
    .line 17
    and-long/2addr v0, v2

    .line 18
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->p:J

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TextSampleEntry"

    return-object v0
.end method

.method public v()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->s:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Lcom/coremedia/iso/boxes/sampleentry/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->t:Lcom/coremedia/iso/boxes/sampleentry/g$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/g;->q:I

    .line 2
    .line 3
    return v0
.end method
