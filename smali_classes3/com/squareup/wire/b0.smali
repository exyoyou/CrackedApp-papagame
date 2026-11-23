.class public final Lcom/squareup/wire/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/b0$a;,
        Lcom/squareup/wire/b0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\ncom/squareup/wire/internal/RuntimeUtils\n*L\n1#1,531:1\n1#2:532\n23#3:533\n26#3:534\n23#3:535\n26#3:536\n23#3:537\n26#3:538\n23#3:539\n26#3:540\n23#3:541\n23#3:542\n*S KotlinDebug\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n336#1:533\n341#1:534\n343#1:535\n348#1:536\n350#1:537\n355#1:538\n357#1:539\n361#1:540\n391#1:541\n392#1:542\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProtoReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\ncom/squareup/wire/internal/RuntimeUtils\n*L\n1#1,531:1\n1#2:532\n23#3:533\n26#3:534\n23#3:535\n26#3:536\n23#3:537\n26#3:538\n23#3:539\n26#3:540\n23#3:541\n23#3:542\n*S KotlinDebug\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n336#1:533\n341#1:534\n343#1:535\n348#1:536\n350#1:537\n355#1:538\n357#1:539\n361#1:540\n391#1:541\n392#1:542\n*E\n"
    }
.end annotation


# static fields
.field public static final j:Lcom/squareup/wire/b0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final k:I = 0x41

.field private static final l:I = 0x7

.field public static final m:I = 0x3

.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2

.field private static final q:I = 0x3

.field private static final r:I = 0x4

.field private static final s:I = 0x5

.field private static final t:I = 0x6

.field private static final u:I = 0x7


# instance fields
.field private final a:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:Lcom/squareup/wire/FieldEncoding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/Buffer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/b0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/b0;->j:Lcom/squareup/wire/b0$a;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 10
    .line 11
    const-wide v0, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lcom/squareup/wire/b0;->c:J

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    iput p1, p0, Lcom/squareup/wire/b0;->e:I

    .line 20
    .line 21
    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/squareup/wire/b0;->f:I

    .line 23
    .line 24
    const-wide/16 v0, -0x1

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/squareup/wire/b0;->g:J

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/squareup/wire/b0;->i:Ljava/util/List;

    .line 34
    .line 35
    return-void
.end method

.method private final c(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/squareup/wire/b0;->e:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-wide v2, p0, Lcom/squareup/wire/b0;->b:J

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/squareup/wire/b0;->c:J

    .line 12
    .line 13
    cmp-long p1, v2, v4

    .line 14
    .line 15
    if-gtz p1, :cond_2

    .line 16
    .line 17
    cmp-long p1, v2, v4

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/squareup/wire/b0;->g:J

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/squareup/wire/b0;->c:J

    .line 24
    .line 25
    const-wide/16 v2, -0x1

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/squareup/wire/b0;->g:J

    .line 28
    .line 29
    iput v1, p0, Lcom/squareup/wire/b0;->e:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x7

    .line 33
    iput p1, p0, Lcom/squareup/wire/b0;->e:I

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "Expected to end at "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/squareup/wire/b0;->c:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " but was "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/squareup/wire/b0;->b:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method private final d()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/squareup/wire/b0;->c:J

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/squareup/wire/b0;->b:J

    .line 9
    .line 10
    sub-long/2addr v0, v2

    .line 11
    iget-object v2, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 12
    .line 13
    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    iput v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/squareup/wire/b0;->c:J

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/squareup/wire/b0;->b:J

    .line 22
    .line 23
    iget-wide v2, p0, Lcom/squareup/wire/b0;->g:J

    .line 24
    .line 25
    iput-wide v2, p0, Lcom/squareup/wire/b0;->c:J

    .line 26
    .line 27
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/squareup/wire/b0;->g:J

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "Expected LENGTH_DELIMITED but was "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method private final i()I
    .locals 7

    .line 1
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/squareup/wire/b0;->h:Lcom/squareup/wire/FieldEncoding;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/squareup/wire/b0;->j()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ltz v0, :cond_2

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/squareup/wire/b0;->g:J

    .line 15
    .line 16
    const-wide/16 v3, -0x1

    .line 17
    .line 18
    cmp-long v5, v1, v3

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/squareup/wire/b0;->c:J

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/squareup/wire/b0;->g:J

    .line 25
    .line 26
    iget-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 27
    .line 28
    int-to-long v5, v0

    .line 29
    add-long/2addr v3, v5

    .line 30
    iput-wide v3, p0, Lcom/squareup/wire/b0;->c:J

    .line 31
    .line 32
    cmp-long v5, v3, v1

    .line 33
    .line 34
    if-gtz v5, :cond_0

    .line 35
    .line 36
    return v0

    .line 37
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v3, "Negative length: "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1
.end method

.method private final j()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 6
    .line 7
    .line 8
    iget-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 9
    .line 10
    add-long/2addr v3, v1

    .line 11
    iput-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 12
    .line 13
    iget-object v0, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 14
    .line 15
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 23
    .line 24
    iget-object v3, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 25
    .line 26
    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 27
    .line 28
    .line 29
    iget-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 30
    .line 31
    add-long/2addr v3, v1

    .line 32
    iput-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 33
    .line 34
    iget-object v3, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 35
    .line 36
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ltz v3, :cond_1

    .line 41
    .line 42
    shl-int/lit8 v1, v3, 0x7

    .line 43
    .line 44
    :goto_0
    or-int/2addr v0, v1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    and-int/lit8 v3, v3, 0x7f

    .line 47
    .line 48
    shl-int/lit8 v3, v3, 0x7

    .line 49
    .line 50
    or-int/2addr v0, v3

    .line 51
    iget-object v3, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 52
    .line 53
    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 54
    .line 55
    .line 56
    iget-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 57
    .line 58
    add-long/2addr v3, v1

    .line 59
    iput-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 60
    .line 61
    iget-object v3, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 62
    .line 63
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ltz v3, :cond_2

    .line 68
    .line 69
    shl-int/lit8 v1, v3, 0xe

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    and-int/lit8 v3, v3, 0x7f

    .line 73
    .line 74
    shl-int/lit8 v3, v3, 0xe

    .line 75
    .line 76
    or-int/2addr v0, v3

    .line 77
    iget-object v3, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 78
    .line 79
    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 80
    .line 81
    .line 82
    iget-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 83
    .line 84
    add-long/2addr v3, v1

    .line 85
    iput-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 86
    .line 87
    iget-object v3, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 88
    .line 89
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-ltz v3, :cond_3

    .line 94
    .line 95
    shl-int/lit8 v1, v3, 0x15

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    and-int/lit8 v3, v3, 0x7f

    .line 99
    .line 100
    shl-int/lit8 v3, v3, 0x15

    .line 101
    .line 102
    or-int/2addr v0, v3

    .line 103
    iget-object v3, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 104
    .line 105
    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 106
    .line 107
    .line 108
    iget-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 109
    .line 110
    add-long/2addr v3, v1

    .line 111
    iput-wide v3, p0, Lcom/squareup/wire/b0;->b:J

    .line 112
    .line 113
    iget-object v3, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 114
    .line 115
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    shl-int/lit8 v4, v3, 0x1c

    .line 120
    .line 121
    or-int/2addr v0, v4

    .line 122
    if-gez v3, :cond_6

    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    :goto_1
    const/4 v4, 0x5

    .line 126
    if-ge v3, v4, :cond_5

    .line 127
    .line 128
    iget-object v4, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 129
    .line 130
    invoke-interface {v4, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 131
    .line 132
    .line 133
    iget-wide v4, p0, Lcom/squareup/wire/b0;->b:J

    .line 134
    .line 135
    add-long/2addr v4, v1

    .line 136
    iput-wide v4, p0, Lcom/squareup/wire/b0;->b:J

    .line 137
    .line 138
    iget-object v4, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 139
    .line 140
    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-ltz v4, :cond_4

    .line 145
    .line 146
    return v0

    .line 147
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 151
    .line 152
    const-string v1, "Malformed VARINT"

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_6
    :goto_2
    return v0
.end method

.method private final w(I)V
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/b0;->b:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/squareup/wire/b0;->c:J

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_8

    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 10
    .line 11
    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_8

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/squareup/wire/b0;->j()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_7

    .line 22
    .line 23
    shr-int/lit8 v1, v0, 0x3

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0x7

    .line 26
    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v0, v2, :cond_5

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    if-eq v0, v2, :cond_4

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    if-eq v0, v2, :cond_3

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    if-ne v0, v1, :cond_0

    .line 43
    .line 44
    iput v1, p0, Lcom/squareup/wire/b0;->e:I

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/squareup/wire/b0;->p()I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "Unexpected field encoding: "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_1
    if-ne v1, p1, :cond_2

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    .line 77
    .line 78
    const-string v0, "Unexpected end group"

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_3
    invoke-direct {p0, v1}, Lcom/squareup/wire/b0;->w(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-direct {p0}, Lcom/squareup/wire/b0;->j()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget-wide v1, p0, Lcom/squareup/wire/b0;->b:J

    .line 93
    .line 94
    int-to-long v3, v0

    .line 95
    add-long/2addr v1, v3

    .line 96
    iput-wide v1, p0, Lcom/squareup/wire/b0;->b:J

    .line 97
    .line 98
    iget-object v0, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 99
    .line 100
    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    iput v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/squareup/wire/b0;->q()J

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/squareup/wire/b0;->u()J

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    .line 118
    .line 119
    const-string v0, "Unexpected tag 0"

    .line 120
    .line 121
    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    .line 126
    .line 127
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 128
    .line 129
    .line 130
    throw p1
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)Lokio/ByteString;
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lokio/ByteString;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-forEachTag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "tagHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/squareup/wire/b0;->f()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/wire/b0;->m()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/b0;->h(J)Lokio/ByteString;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public final b(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "fieldEncoding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/squareup/wire/c0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/squareup/wire/b0;->i:Ljava/util/List;

    .line 9
    .line 10
    iget v2, p0, Lcom/squareup/wire/b0;->d:I

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lokio/BufferedSink;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/squareup/wire/c0;-><init>(Lokio/BufferedSink;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v1, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>"

    .line 28
    .line 29
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->n(Lcom/squareup/wire/c0;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final e()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "unexpected state: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-wide v2, p0, Lcom/squareup/wire/b0;->b:J

    .line 41
    .line 42
    iget-wide v4, p0, Lcom/squareup/wire/b0;->c:J

    .line 43
    .line 44
    cmp-long v0, v2, v4

    .line 45
    .line 46
    if-gez v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-wide v0, p0, Lcom/squareup/wire/b0;->g:J

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/squareup/wire/b0;->c:J

    .line 52
    .line 53
    const-wide/16 v0, -0x1

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/squareup/wire/b0;->g:J

    .line 56
    .line 57
    const/4 v0, 0x6

    .line 58
    iput v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    :cond_3
    :goto_0
    return v1
.end method

.method public final f()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget v0, p0, Lcom/squareup/wire/b0;->d:I

    .line 13
    .line 14
    add-int/2addr v0, v2

    .line 15
    iput v0, p0, Lcom/squareup/wire/b0;->d:I

    .line 16
    .line 17
    const/16 v1, 0x41

    .line 18
    .line 19
    if-gt v0, v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/squareup/wire/b0;->i:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/squareup/wire/b0;->i:Ljava/util/List;

    .line 30
    .line 31
    check-cast v0, Ljava/util/Collection;

    .line 32
    .line 33
    new-instance v1, Lokio/Buffer;

    .line 34
    .line 35
    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-wide v0, p0, Lcom/squareup/wire/b0;->g:J

    .line 42
    .line 43
    const-wide/16 v2, -0x1

    .line 44
    .line 45
    iput-wide v2, p0, Lcom/squareup/wire/b0;->g:J

    .line 46
    .line 47
    const/4 v2, 0x6

    .line 48
    iput v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 49
    .line 50
    return-wide v0

    .line 51
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 52
    .line 53
    const-string v1, "Wire recursion limit exceeded"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v1, "Unexpected call to beginMessage()"

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public final g(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "prefer endMessageAndGetUnknownFields()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "endMessageAndGetUnknownFields(token)"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/b0;->h(J)Lokio/ByteString;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(J)Lokio/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget v0, p0, Lcom/squareup/wire/b0;->d:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    iput v0, p0, Lcom/squareup/wire/b0;->d:I

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    iget-wide v4, p0, Lcom/squareup/wire/b0;->g:J

    .line 22
    .line 23
    const-wide/16 v6, -0x1

    .line 24
    .line 25
    cmp-long v1, v4, v6

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_1
    if-eqz v2, :cond_5

    .line 32
    .line 33
    iget-wide v1, p0, Lcom/squareup/wire/b0;->b:J

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/squareup/wire/b0;->c:J

    .line 36
    .line 37
    cmp-long v5, v1, v3

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v0, "Expected to end at "

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Lcom/squareup/wire/b0;->c:J

    .line 57
    .line 58
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " but was "

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v0, p0, Lcom/squareup/wire/b0;->b:J

    .line 67
    .line 68
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_3
    :goto_2
    iput-wide p1, p0, Lcom/squareup/wire/b0;->c:J

    .line 80
    .line 81
    iget-object p1, p0, Lcom/squareup/wire/b0;->i:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lokio/Buffer;

    .line 88
    .line 89
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    const-wide/16 v2, 0x0

    .line 94
    .line 95
    cmp-long p2, v0, v2

    .line 96
    .line 97
    if-lez p2, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 105
    .line 106
    :goto_3
    return-object p1

    .line 107
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    const-string p2, "No corresponding call to beginMessage()"

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    const-string p2, "Unexpected call to endMessage()"

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public final k()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/b0;->h:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lcom/squareup/wire/b0$b;->$EnumSwitchMapping$0:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v2, v0

    .line 15
    .line 16
    :goto_0
    if-eq v0, v1, :cond_5

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_4

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    const-wide/16 v0, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 34
    .line 35
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_2
    const-wide/16 v0, 0x8

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const-wide/16 v0, 0x4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    iget-wide v0, p0, Lcom/squareup/wire/b0;->c:J

    .line 46
    .line 47
    iget-wide v2, p0, Lcom/squareup/wire/b0;->b:J

    .line 48
    .line 49
    sub-long/2addr v0, v2

    .line 50
    :goto_1
    return-wide v0

    .line 51
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "nextFieldEncoding is not set"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public final l()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/squareup/wire/b0;->i()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "Unexpected call to nextDelimited()"

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final m()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 8
    .line 9
    iget v0, p0, Lcom/squareup/wire/b0;->f:I

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v1, 0x6

    .line 13
    if-ne v0, v1, :cond_9

    .line 14
    .line 15
    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/b0;->b:J

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/squareup/wire/b0;->c:J

    .line 18
    .line 19
    cmp-long v5, v0, v3

    .line 20
    .line 21
    if-gez v5, :cond_8

    .line 22
    .line 23
    iget-object v0, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 24
    .line 25
    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_8

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/squareup/wire/b0;->j()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_7

    .line 36
    .line 37
    shr-int/lit8 v1, v0, 0x3

    .line 38
    .line 39
    iput v1, p0, Lcom/squareup/wire/b0;->f:I

    .line 40
    .line 41
    and-int/lit8 v0, v0, 0x7

    .line 42
    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    if-eq v0, v3, :cond_5

    .line 47
    .line 48
    if-eq v0, v2, :cond_4

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    if-eq v0, v3, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    if-eq v0, v2, :cond_2

    .line 55
    .line 56
    const/4 v2, 0x5

    .line 57
    if-ne v0, v2, :cond_1

    .line 58
    .line 59
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/squareup/wire/b0;->h:Lcom/squareup/wire/FieldEncoding;

    .line 62
    .line 63
    iput v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 64
    .line 65
    return v1

    .line 66
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v3, "Unexpected field encoding: "

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v1

    .line 89
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 90
    .line 91
    const-string v1, "Unexpected end group"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_3
    invoke-direct {p0, v1}, Lcom/squareup/wire/b0;->w(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-direct {p0}, Lcom/squareup/wire/b0;->i()I

    .line 102
    .line 103
    .line 104
    iget v0, p0, Lcom/squareup/wire/b0;->f:I

    .line 105
    .line 106
    return v0

    .line 107
    :cond_5
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/squareup/wire/b0;->h:Lcom/squareup/wire/FieldEncoding;

    .line 110
    .line 111
    iput v3, p0, Lcom/squareup/wire/b0;->e:I

    .line 112
    .line 113
    return v1

    .line 114
    :cond_6
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/squareup/wire/b0;->h:Lcom/squareup/wire/FieldEncoding;

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 120
    .line 121
    return v1

    .line 122
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 123
    .line 124
    const-string v1, "Unexpected tag 0"

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_8
    const/4 v0, -0x1

    .line 131
    return v0

    .line 132
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string v1, "Unexpected call to nextTag()"

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method

.method public final n()Lcom/squareup/wire/FieldEncoding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/b0;->h:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/b0;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 6
    .line 7
    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 11
    .line 12
    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final p()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 36
    .line 37
    const-wide/16 v2, 0x4

    .line 38
    .line 39
    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 40
    .line 41
    .line 42
    iget-wide v2, p0, Lcom/squareup/wire/b0;->b:J

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    int-to-long v4, v0

    .line 46
    add-long/2addr v2, v4

    .line 47
    iput-wide v2, p0, Lcom/squareup/wire/b0;->b:J

    .line 48
    .line 49
    iget-object v0, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 50
    .line 51
    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-direct {p0, v1}, Lcom/squareup/wire/b0;->c(I)V

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public final q()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 36
    .line 37
    const-wide/16 v2, 0x8

    .line 38
    .line 39
    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 40
    .line 41
    .line 42
    iget-wide v2, p0, Lcom/squareup/wire/b0;->b:J

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    int-to-long v4, v0

    .line 47
    add-long/2addr v2, v4

    .line 48
    iput-wide v2, p0, Lcom/squareup/wire/b0;->b:J

    .line 49
    .line 50
    iget-object v0, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 51
    .line 52
    invoke-interface {v0}, Lokio/BufferedSource;->readLongLe()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    invoke-direct {p0, v1}, Lcom/squareup/wire/b0;->c(I)V

    .line 57
    .line 58
    .line 59
    return-wide v2
.end method

.method public final r()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/b0;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 6
    .line 7
    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 11
    .line 12
    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final s(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/b0;->n()Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/b0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/b0;->b(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final t()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/wire/b0;->j()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, v1}, Lcom/squareup/wire/b0;->c(I)V

    .line 40
    .line 41
    .line 42
    return v0
.end method

.method public final u()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/squareup/wire/b0;->e:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 35
    const-wide/16 v1, 0x0

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_1
    const/16 v4, 0x40

    .line 39
    .line 40
    if-ge v3, v4, :cond_3

    .line 41
    .line 42
    iget-object v4, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 43
    .line 44
    const-wide/16 v5, 0x1

    .line 45
    .line 46
    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->require(J)V

    .line 47
    .line 48
    .line 49
    iget-wide v7, p0, Lcom/squareup/wire/b0;->b:J

    .line 50
    .line 51
    add-long/2addr v7, v5

    .line 52
    iput-wide v7, p0, Lcom/squareup/wire/b0;->b:J

    .line 53
    .line 54
    iget-object v4, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 55
    .line 56
    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    and-int/lit8 v5, v4, 0x7f

    .line 61
    .line 62
    int-to-long v5, v5

    .line 63
    shl-long/2addr v5, v3

    .line 64
    or-long/2addr v1, v5

    .line 65
    and-int/lit16 v4, v4, 0x80

    .line 66
    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/squareup/wire/b0;->c(I)V

    .line 70
    .line 71
    .line 72
    return-wide v1

    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x7

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    .line 77
    .line 78
    const-string v1, "WireInput encountered a malformed varint"

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public final v()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/b0;->e:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/squareup/wire/b0;->p()I

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "Unexpected call to skip()"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/squareup/wire/b0;->d()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/squareup/wire/b0;->a:Lokio/BufferedSource;

    .line 31
    .line 32
    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/wire/b0;->q()J

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/wire/b0;->u()J

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
