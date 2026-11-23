.class public Lcom/googlecode/mp4parser/boxes/apple/t0;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "SourceFile"


# static fields
.field public static final F:Ljava/lang/String; = "text"


# instance fields
.field A:I

.field B:I

.field C:I

.field D:Ljava/lang/String;

.field E:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:J

.field v:J

.field w:S

.field x:S

.field y:B

.field z:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0xffff

    .line 7
    .line 8
    .line 9
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    .line 10
    .line 11
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    .line 12
    .line 13
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:I

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public I()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->u:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public K()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->x:S

    .line 2
    .line 3
    return v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public M()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->w:S

    .line 2
    .line 3
    return v0
.end method

.method public O()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:I

    .line 2
    .line 3
    return v0
.end method

.method public P()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public Q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public R()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->v:J

    .line 2
    .line 3
    return-wide v0
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
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    add-int/lit8 v0, v0, 0x34

    .line 19
    .line 20
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x6

    .line 25
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->E:I

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->p:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->q:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->r:I

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->s:I

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->t:I

    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->u:J

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 61
    .line 62
    .line 63
    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->v:J

    .line 64
    .line 65
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 66
    .line 67
    .line 68
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->w:S

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->x:S

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->y:B

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->z:S

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 91
    .line 92
    .line 93
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:I

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public a0()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->y:B

    .line 2
    .line 3
    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "QuicktimeTextSampleEntries may not have child boxes"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public c0()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->z:S

    .line 2
    .line 3
    return v0
.end method

.method public d0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public e0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public f0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->s:I

    .line 2
    .line 3
    return-void
.end method

.method public g0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->r:I

    .line 2
    .line 3
    return-void
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
    const-wide/16 v2, 0x34

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    int-to-long v2, v2

    .line 19
    add-long/2addr v0, v2

    .line 20
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b;->m:Z

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    const-wide/16 v2, 0x8

    .line 25
    .line 26
    add-long/2addr v2, v0

    .line 27
    const-wide v4, 0x100000000L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v6, v2, v4

    .line 33
    .line 34
    if-ltz v6, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v2, 0x8

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    const/16 v2, 0x10

    .line 41
    .line 42
    :goto_2
    int-to-long v2, v2

    .line 43
    add-long/2addr v0, v2

    .line 44
    return-wide v0
.end method

.method public i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x6

    .line 13
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->E:I

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->p:I

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->q:I

    .line 33
    .line 34
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->r:I

    .line 39
    .line 40
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->s:I

    .line 45
    .line 46
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->t:I

    .line 51
    .line 52
    invoke-static {p2}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    .line 53
    .line 54
    .line 55
    move-result-wide p3

    .line 56
    iput-wide p3, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->u:J

    .line 57
    .line 58
    invoke-static {p2}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    .line 59
    .line 60
    .line 61
    move-result-wide p3

    .line 62
    iput-wide p3, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->v:J

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->w:S

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->x:S

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->y:B

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->z:S

    .line 87
    .line 88
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    .line 93
    .line 94
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    .line 99
    .line 100
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:I

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-lez p1, :cond_0

    .line 111
    .line 112
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    new-array p1, p1, [B

    .line 117
    .line 118
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    new-instance p2, Ljava/lang/String;

    .line 122
    .line 123
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 124
    .line 125
    .line 126
    iput-object p2, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:Ljava/lang/String;

    .line 131
    .line 132
    :goto_0
    return-void
.end method

.method public i0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->u:J

    .line 2
    .line 3
    return-void
.end method

.method public j0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public k0(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->x:S

    .line 2
    .line 3
    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public m(Lcom/coremedia/iso/boxes/d;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "QuicktimeTextSampleEntries may not have child boxes"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public m0(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->w:S

    .line 2
    .line 3
    return-void
.end method

.method public n0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:I

    .line 2
    .line 3
    return-void
.end method

.method public o0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    .line 2
    .line 3
    return-void
.end method

.method public p0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    .line 2
    .line 3
    return-void
.end method

.method public q0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->v:J

    .line 2
    .line 3
    return-void
.end method

.method public r0(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->y:B

    .line 2
    .line 3
    return-void
.end method

.method public s0(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->z:S

    .line 2
    .line 3
    return-void
.end method

.method public t0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->r:I

    .line 2
    .line 3
    return v0
.end method
