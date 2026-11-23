.class public final Lcom/coremedia/iso/boxes/sampleentry/c;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "SourceFile"


# static fields
.field public static final C:Ljava/lang/String; = "samr"

.field public static final D:Ljava/lang/String; = "sawb"

.field public static final E:Ljava/lang/String; = "mp4a"

.field public static final F:Ljava/lang/String; = "drms"

.field public static final G:Ljava/lang/String; = "alac"

.field public static final H:Ljava/lang/String; = "owma"

.field public static final I:Ljava/lang/String; = "ac-3"

.field public static final J:Ljava/lang/String; = "ec-3"

.field public static final K:Ljava/lang/String; = "mlpa"

.field public static final L:Ljava/lang/String; = "dtsl"

.field public static final M:Ljava/lang/String; = "dtsh"

.field public static final N:Ljava/lang/String; = "dtse"

.field public static final O:Ljava/lang/String; = "enca"

.field static final synthetic P:Z


# instance fields
.field private A:J

.field private B:[B

.field private p:I

.field private q:I

.field private r:J

.field private s:I

.field private t:I

.field private u:I

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public K()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public L()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public M()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->A:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public O()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public P()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public Q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public R()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 8
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
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    const/16 v4, 0x10

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    :goto_0
    add-int/lit8 v4, v4, 0x1c

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    if-ne v0, v5, :cond_1

    .line 24
    .line 25
    const/16 v2, 0x24

    .line 26
    .line 27
    :cond_1
    add-int/2addr v4, v2

    .line 28
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x6

    .line 33
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->o:I

    .line 37
    .line 38
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 39
    .line 40
    .line 41
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 42
    .line 43
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->z:I

    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 49
    .line 50
    .line 51
    iget-wide v6, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->A:J

    .line 52
    .line 53
    invoke-static {v0, v6, v7}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    .line 57
    .line 58
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:I

    .line 62
    .line 63
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 64
    .line 65
    .line 66
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    .line 67
    .line 68
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 69
    .line 70
    .line 71
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:I

    .line 72
    .line 73
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/googlecode/mp4parser/b;->l:Ljava/lang/String;

    .line 77
    .line 78
    const-string v4, "mlpa"

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/c;->O()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/c;->O()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    shl-long v1, v6, v1

    .line 99
    .line 100
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 101
    .line 102
    .line 103
    :goto_1
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 104
    .line 105
    if-ne v1, v3, :cond_3

    .line 106
    .line 107
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    .line 108
    .line 109
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 110
    .line 111
    .line 112
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    .line 113
    .line 114
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 115
    .line 116
    .line 117
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    .line 118
    .line 119
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 120
    .line 121
    .line 122
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:J

    .line 123
    .line 124
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 125
    .line 126
    .line 127
    :cond_3
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 128
    .line 129
    if-ne v1, v5, :cond_4

    .line 130
    .line 131
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    .line 132
    .line 133
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 134
    .line 135
    .line 136
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    .line 137
    .line 138
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 139
    .line 140
    .line 141
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    .line 142
    .line 143
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 144
    .line 145
    .line 146
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:J

    .line 147
    .line 148
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->B:[B

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->h(Ljava/nio/channels/WritableByteChannel;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public a0()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->B:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public c0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    .line 2
    .line 3
    return-void
.end method

.method public d0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    .line 2
    .line 3
    return-void
.end method

.method public e0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:J

    .line 2
    .line 3
    return-void
.end method

.method public f0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public g0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public getSize()J
    .locals 8

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x10

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    add-int/lit8 v1, v1, 0x1c

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne v0, v4, :cond_1

    .line 17
    .line 18
    const/16 v3, 0x24

    .line 19
    .line 20
    :cond_1
    add-int/2addr v1, v3

    .line 21
    int-to-long v0, v1

    .line 22
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->o()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    add-long/2addr v0, v3

    .line 27
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/b;->m:Z

    .line 28
    .line 29
    if-nez v3, :cond_3

    .line 30
    .line 31
    const-wide/16 v3, 0x8

    .line 32
    .line 33
    add-long/2addr v3, v0

    .line 34
    const-wide v5, 0x100000000L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    cmp-long v7, v3, v5

    .line 40
    .line 41
    if-ltz v7, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/16 v2, 0x8

    .line 45
    .line 46
    :cond_3
    :goto_1
    int-to-long v2, v2

    .line 47
    add-long/2addr v0, v2

    .line 48
    return-wide v0
.end method

.method public i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 p2, 0x1c

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
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 25
    .line 26
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->z:I

    .line 31
    .line 32
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->A:J

    .line 37
    .line 38
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    .line 43
    .line 44
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:I

    .line 49
    .line 50
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    .line 55
    .line 56
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:I

    .line 61
    .line 62
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:J

    .line 67
    .line 68
    iget-object p2, p0, Lcom/googlecode/mp4parser/b;->l:Ljava/lang/String;

    .line 69
    .line 70
    const-string v0, "mlpa"

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    const/16 v0, 0x10

    .line 77
    .line 78
    if-nez p2, :cond_0

    .line 79
    .line 80
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:J

    .line 81
    .line 82
    ushr-long/2addr v1, v0

    .line 83
    iput-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:J

    .line 84
    .line 85
    :cond_0
    iget p2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    if-ne p2, v1, :cond_1

    .line 89
    .line 90
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 98
    .line 99
    .line 100
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    .line 105
    .line 106
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    .line 111
    .line 112
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    .line 117
    .line 118
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:J

    .line 123
    .line 124
    :cond_1
    iget p2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 125
    .line 126
    const/16 v2, 0x24

    .line 127
    .line 128
    const/4 v3, 0x2

    .line 129
    if-ne p2, v3, :cond_2

    .line 130
    .line 131
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 139
    .line 140
    .line 141
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    iput-wide v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    .line 146
    .line 147
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v4

    .line 151
    iput-wide v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    .line 152
    .line 153
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    iput-wide v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    .line 158
    .line 159
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    iput-wide v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:J

    .line 164
    .line 165
    const/16 v4, 0x14

    .line 166
    .line 167
    new-array v4, v4, [B

    .line 168
    .line 169
    iput-object v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->B:[B

    .line 170
    .line 171
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    :cond_2
    iget-object p2, p0, Lcom/googlecode/mp4parser/b;->l:Ljava/lang/String;

    .line 175
    .line 176
    const-string v4, "owma"

    .line 177
    .line 178
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    const-wide/16 v5, 0x1c

    .line 183
    .line 184
    const/4 v7, 0x0

    .line 185
    if-eqz p2, :cond_5

    .line 186
    .line 187
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 188
    .line 189
    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sub-long/2addr p3, v5

    .line 193
    iget p2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 194
    .line 195
    if-ne p2, v1, :cond_3

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_3
    const/4 v0, 0x0

    .line 199
    :goto_0
    int-to-long v0, v0

    .line 200
    sub-long/2addr p3, v0

    .line 201
    if-ne p2, v3, :cond_4

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_4
    const/4 v2, 0x0

    .line 205
    :goto_1
    int-to-long v0, v2

    .line 206
    sub-long/2addr p3, v0

    .line 207
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 216
    .line 217
    .line 218
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/c$a;

    .line 219
    .line 220
    invoke-direct {p1, p0, p3, p4, p2}, Lcom/coremedia/iso/boxes/sampleentry/c$a;-><init>(Lcom/coremedia/iso/boxes/sampleentry/c;JLjava/nio/ByteBuffer;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_5
    sub-long/2addr p3, v5

    .line 228
    iget p2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 229
    .line 230
    if-ne p2, v1, :cond_6

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_6
    const/4 v0, 0x0

    .line 234
    :goto_2
    int-to-long v0, v0

    .line 235
    sub-long/2addr p3, v0

    .line 236
    if-ne p2, v3, :cond_7

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_7
    const/4 v2, 0x0

    .line 240
    :goto_3
    int-to-long v0, v2

    .line 241
    sub-long/2addr p3, v0

    .line 242
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/googlecode/mp4parser/b;->p(Lcom/googlecode/mp4parser/e;JLcom/coremedia/iso/c;)V

    .line 243
    .line 244
    .line 245
    :goto_4
    return-void
.end method

.method public i0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public j0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->z:I

    .line 2
    .line 3
    return-void
.end method

.method public k0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->A:J

    .line 2
    .line 3
    return-void
.end method

.method public l0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:J

    .line 2
    .line 3
    return-void
.end method

.method public m0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public n0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    .line 2
    .line 3
    return-void
.end method

.method public o0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 2
    .line 3
    return-void
.end method

.method public p0([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->B:[B

    .line 2
    .line 3
    return-void
.end method

.method public q0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AudioSampleEntry{bytesPerSample="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", bytesPerFrame="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", bytesPerPacket="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", samplesPerPacket="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", packetSize="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", compressionId="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", soundVersion="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", sampleRate="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", sampleSize="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", channelCount="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", boxes="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x7d

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0
.end method

.method public v()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public y()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:J

    .line 2
    .line 3
    return-wide v0
.end method
