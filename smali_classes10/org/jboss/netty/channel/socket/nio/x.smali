.class final Lorg/jboss/netty/channel/socket/nio/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/util/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/x$a;,
        Lorg/jboss/netty/channel/socket/nio/x$b;,
        Lorg/jboss/netty/channel/socket/nio/x$c;,
        Lorg/jboss/netty/channel/socket/nio/x$d;,
        Lorg/jboss/netty/channel/socket/nio/x$h;,
        Lorg/jboss/netty/channel/socket/nio/x$g;,
        Lorg/jboss/netty/channel/socket/nio/x$f;,
        Lorg/jboss/netty/channel/socket/nio/x$e;
    }
.end annotation


# static fields
.field private static final c:Lorg/jboss/netty/channel/socket/nio/x$g;

.field private static final d:I = 0x10000

.field private static final e:I = 0x4

.field private static final f:I = 0xf


# instance fields
.field private a:Lorg/jboss/netty/channel/socket/nio/x$f;

.field private b:Lorg/jboss/netty/channel/socket/nio/x$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/x$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jboss/netty/channel/socket/nio/x;->c:Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 5
    .line 6
    const/high16 v1, 0x10000

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/x$e;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic c(Lorg/jboss/netty/channel/socket/nio/x;)Lorg/jboss/netty/channel/socket/nio/x$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lorg/jboss/netty/channel/socket/nio/x;)Lorg/jboss/netty/channel/socket/nio/x$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$f;)Lorg/jboss/netty/channel/socket/nio/x$f;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 2
    .line 3
    return-object p1
.end method

.method private g(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/channel/socket/nio/x$g;
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lorg/jboss/netty/channel/socket/nio/x;->c:Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    instance-of v1, p1, Lorg/jboss/netty/buffer/i;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Lorg/jboss/netty/buffer/i;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/jboss/netty/buffer/i;->k()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$c;

    .line 24
    .line 25
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->x0()[Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/nio/x$c;-><init>([Ljava/nio/ByteBuffer;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->isDirect()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$h;

    .line 40
    .line 41
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->Q0()Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/nio/x$h;-><init>(Ljava/nio/ByteBuffer;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/high16 v2, 0x10000

    .line 54
    .line 55
    if-le v1, v2, :cond_3

    .line 56
    .line 57
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$h;

    .line 58
    .line 59
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->Q0()Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/nio/x$h;-><init>(Ljava/nio/ByteBuffer;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_3
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 68
    .line 69
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-ge v0, v3, :cond_4

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    add-int/2addr v3, v0

    .line 82
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v3}, Lorg/jboss/netty/channel/socket/nio/x;->i(I)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 94
    .line 95
    .line 96
    iget v2, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 97
    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    iput v2, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 101
    .line 102
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/x$d;

    .line 103
    .line 104
    invoke-direct {v2, p0, v1, v0}, Lorg/jboss/netty/channel/socket/nio/x$d;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Ljava/nio/ByteBuffer;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    if-le v0, v3, :cond_5

    .line 109
    .line 110
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/x;->j()Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 115
    .line 116
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v0}, Lorg/jboss/netty/channel/socket/nio/x;->i(I)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 130
    .line 131
    .line 132
    iget v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 133
    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 135
    .line 136
    iput v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 137
    .line 138
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/x$d;

    .line 139
    .line 140
    invoke-direct {v2, p0, v1, v3}, Lorg/jboss/netty/channel/socket/nio/x$d;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Ljava/nio/ByteBuffer;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    iget v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 145
    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 147
    .line 148
    iput v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 149
    .line 150
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/x;->k()Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 155
    .line 156
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/x$d;

    .line 157
    .line 158
    iget-object v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    invoke-direct {v2, p0, v1, v0}, Lorg/jboss/netty/channel/socket/nio/x$d;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Ljava/nio/ByteBuffer;)V

    .line 161
    .line 162
    .line 163
    :goto_0
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/x$h;->a:Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 166
    .line 167
    .line 168
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-interface {p1, v1, v0}, Lorg/jboss/netty/buffer/e;->v0(ILjava/nio/ByteBuffer;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 176
    .line 177
    .line 178
    return-object v2
.end method

.method private h(Lorg/jboss/netty/channel/g0;)Lorg/jboss/netty/channel/socket/nio/x$g;
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/g0;->getCount()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    sget-object p1, Lorg/jboss/netty/channel/socket/nio/x;->c:Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$b;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/x$b;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/g0;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private static i(I)I
    .locals 1

    .line 1
    ushr-int/lit8 v0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 p0, v0, 0x4

    return p0
.end method

.method private j()Lorg/jboss/netty/channel/socket/nio/x$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 2
    .line 3
    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/x;->k()Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private k()Lorg/jboss/netty/channel/socket/nio/x$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/x$f;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    if-nez v0, :cond_0

    .line 19
    .line 20
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 21
    .line 22
    :cond_2
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 23
    .line 24
    const/high16 v1, 0x10000

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/x$e;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lorg/jboss/netty/util/internal/a;->a(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method f(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/x$g;
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/x;->g(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/channel/g0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Lorg/jboss/netty/channel/g0;

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/x;->h(Lorg/jboss/netty/channel/g0;)Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "unsupported message type: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method
