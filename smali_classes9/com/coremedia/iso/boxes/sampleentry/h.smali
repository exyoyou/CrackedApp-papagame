.class public final Lcom/coremedia/iso/boxes/sampleentry/h;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/j;


# static fields
.field public static final A:Ljava/lang/String; = "avc3"

.field public static final B:Ljava/lang/String; = "drmi"

.field public static final C:Ljava/lang/String; = "hvc1"

.field public static final D:Ljava/lang/String; = "hev1"

.field public static final E:Ljava/lang/String; = "encv"

.field static final synthetic F:Z = false

.field public static final x:Ljava/lang/String; = "mp4v"

.field public static final y:Ljava/lang/String; = "s263"

.field public static final z:Ljava/lang/String; = "avc1"


# instance fields
.field private p:I

.field private q:I

.field private r:D

.field private s:D

.field private t:I

.field private u:Ljava/lang/String;

.field private v:I

.field private w:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "avc1"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    .line 2
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    .line 3
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:D

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:Ljava/lang/String;

    const/16 v0, 0x18

    .line 6
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:I

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 7
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->w:[J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    .line 9
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    .line 10
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:D

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:I

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:Ljava/lang/String;

    const/16 p1, 0x18

    .line 13
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:I

    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 14
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->w:[J

    return-void
.end method


# virtual methods
.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public J()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public K()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public L()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public O(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:I

    .line 2
    .line 3
    return-void
.end method

.method public P(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public Q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public R(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    .line 2
    .line 3
    return-void
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 5
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
    const/16 v0, 0x4e

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
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->w:[J

    .line 31
    .line 32
    aget-wide v3, v2, v1

    .line 33
    .line 34
    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->w:[J

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    aget-wide v3, v2, v3

    .line 41
    .line 42
    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->w:[J

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    aget-wide v3, v2, v3

    .line 49
    .line 50
    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->L()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->I()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->J()D

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/i;->b(Ljava/nio/ByteBuffer;D)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->K()D

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/i;->b(Ljava/nio/ByteBuffer;D)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v2, 0x0

    .line 82
    .line 83
    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->z()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->v()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2}, Lcom/coremedia/iso/l;->c(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->v()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2}, Lcom/coremedia/iso/l;->b(Ljava/lang/String;)[B

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->v()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2}, Lcom/coremedia/iso/l;->c(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    :goto_0
    const/16 v3, 0x1f

    .line 124
    .line 125
    if-lt v2, v3, :cond_0

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->y()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 132
    .line 133
    .line 134
    const v1, 0xffff

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->h(Ljava/nio/channels/WritableByteChannel;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    .line 157
    .line 158
    goto :goto_0
.end method

.method public a0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public c0(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:D

    .line 2
    .line 3
    return-void
.end method

.method public d0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->p:I

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
    const-wide/16 v2, 0x4e

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
    const-wide/16 v2, 0x8

    .line 13
    .line 14
    add-long/2addr v2, v0

    .line 15
    const-wide v4, 0x100000000L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmp-long v6, v2, v4

    .line 21
    .line 22
    if-ltz v6, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v2, 0x8

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/16 v2, 0x10

    .line 29
    .line 30
    :goto_1
    int-to-long v2, v2

    .line 31
    add-long/2addr v0, v2

    .line 32
    return-wide v0
.end method

.method public i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->position()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p3

    .line 6
    const/16 p2, 0x4e

    .line 7
    .line 8
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->o:I

    .line 24
    .line 25
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->w:[J

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    aput-wide v4, v2, v3

    .line 39
    .line 40
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->w:[J

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    aput-wide v4, v2, v3

    .line 48
    .line 49
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->w:[J

    .line 50
    .line 51
    const/4 v3, 0x2

    .line 52
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    aput-wide v4, v2, v3

    .line 57
    .line 58
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->p:I

    .line 63
    .line 64
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->q:I

    .line 69
    .line 70
    invoke-static {p2}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;)D

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    .line 75
    .line 76
    invoke-static {p2}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;)D

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:D

    .line 81
    .line 82
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:I

    .line 90
    .line 91
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/16 v3, 0x1f

    .line 96
    .line 97
    if-le v2, v3, :cond_0

    .line 98
    .line 99
    const/16 v2, 0x1f

    .line 100
    .line 101
    :cond_0
    new-array v4, v2, [B

    .line 102
    .line 103
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    invoke-static {v4}, Lcom/coremedia/iso/l;->a([B)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iput-object v4, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:Ljava/lang/String;

    .line 111
    .line 112
    if-ge v2, v3, :cond_1

    .line 113
    .line 114
    sub-int/2addr v3, v2

    .line 115
    new-array v2, v3, [B

    .line 116
    .line 117
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:I

    .line 125
    .line 126
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 127
    .line 128
    .line 129
    new-instance p2, Lcom/coremedia/iso/boxes/sampleentry/h$a;

    .line 130
    .line 131
    invoke-direct {p2, p0, v0, v1, p1}, Lcom/coremedia/iso/boxes/sampleentry/h$a;-><init>(Lcom/coremedia/iso/boxes/sampleentry/h;JLcom/googlecode/mp4parser/e;)V

    .line 132
    .line 133
    .line 134
    const-wide/16 v0, 0x4e

    .line 135
    .line 136
    sub-long/2addr p3, v0

    .line 137
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/googlecode/mp4parser/b;->p(Lcom/googlecode/mp4parser/e;JLcom/coremedia/iso/c;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:I

    .line 2
    .line 3
    return v0
.end method
