.class public final Lcom/squareup/wire/ReverseProtoWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/ReverseProtoWriter$a;
    }
.end annotation


# static fields
.field private static final h:Lcom/squareup/wire/ReverseProtoWriter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lokio/Buffer$UnsafeCursor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:I

.field private final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/wire/ReverseProtoWriter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/squareup/wire/ReverseProtoWriter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/squareup/wire/ReverseProtoWriter;->h:Lcom/squareup/wire/ReverseProtoWriter$a;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    sput-object v0, Lcom/squareup/wire/ReverseProtoWriter;->i:[B

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/Buffer;

    .line 5
    .line 6
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 10
    .line 11
    new-instance v0, Lokio/Buffer;

    .line 12
    .line 13
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 17
    .line 18
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    .line 19
    .line 20
    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 24
    .line 25
    sget-object v0, Lcom/squareup/wire/ReverseProtoWriter;->i:[B

    .line 26
    .line 27
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 28
    .line 29
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 30
    .line 31
    sget-object v1, Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;->b:Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->f:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance v1, Lcom/squareup/wire/ReverseProtoWriter$forwardWriter$2;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/squareup/wire/ReverseProtoWriter$forwardWriter$2;-><init>(Lcom/squareup/wire/ReverseProtoWriter;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->g:Lkotlin/Lazy;

    .line 49
    .line 50
    return-void
.end method

.method public static final synthetic a(Lcom/squareup/wire/ReverseProtoWriter;)Lokio/Buffer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->d()Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 2
    .line 3
    sget-object v1, Lcom/squareup/wire/ReverseProtoWriter;->i:[B

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 9
    .line 10
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 14
    .line 15
    iget v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 31
    .line 32
    iput-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 40
    .line 41
    return-void
.end method

.method private final d()Lokio/Buffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokio/Buffer;

    .line 8
    .line 9
    return-object v0
.end method

.method private final e()Lcom/squareup/wire/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/squareup/wire/c0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final f(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 2
    .line 3
    if-lt v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->b()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lokio/Buffer$UnsafeCursor;->expandBuffer(I)J

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 22
    .line 23
    iget-wide v0, p1, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 24
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long v4, v0, v2

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    iget v0, p1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 32
    .line 33
    iget-object p1, p1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    array-length p1, p1

    .line 39
    if-ne v0, p1, :cond_1

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    :goto_0
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 47
    .line 48
    iget-object p1, p1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 54
    .line 55
    iget-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 56
    .line 57
    iget p1, p1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 58
    .line 59
    iput p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "Check failed."

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method


# virtual methods
.method public final c()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v1, v0

    .line 8
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    iget v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 12
    .line 13
    sub-int/2addr v0, v2

    .line 14
    add-int/2addr v1, v0

    .line 15
    return v1
.end method

.method public final g(Lokio/ByteString;)V
    .locals 4
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 17
    .line 18
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 23
    .line 24
    sub-int/2addr v2, v1

    .line 25
    iput v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 26
    .line 27
    sub-int/2addr v0, v1

    .line 28
    iget-object v3, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 29
    .line 30
    invoke-virtual {p1, v0, v3, v2, v1}, Lokio/ByteString;->copyInto(I[BII)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 6
    .line 7
    sub-int/2addr v1, v0

    .line 8
    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    and-int/lit16 v3, p1, 0xff

    .line 15
    .line 16
    int-to-byte v3, v3

    .line 17
    aput-byte v3, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, v2, 0x1

    .line 20
    .line 21
    ushr-int/lit8 v3, p1, 0x8

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v0, v2

    .line 27
    .line 28
    add-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    ushr-int/lit8 v3, p1, 0x10

    .line 31
    .line 32
    and-int/lit16 v3, v3, 0xff

    .line 33
    .line 34
    int-to-byte v3, v3

    .line 35
    aput-byte v3, v0, v1

    .line 36
    .line 37
    ushr-int/lit8 p1, p1, 0x18

    .line 38
    .line 39
    and-int/lit16 p1, p1, 0xff

    .line 40
    .line 41
    int-to-byte p1, p1

    .line 42
    aput-byte p1, v0, v2

    .line 43
    .line 44
    return-void
.end method

.method public final i(J)V
    .locals 8

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 7
    .line 8
    sub-int/2addr v1, v0

    .line 9
    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 12
    .line 13
    add-int/lit8 v3, v1, 0x1

    .line 14
    .line 15
    const-wide/16 v4, 0xff

    .line 16
    .line 17
    and-long v6, p1, v4

    .line 18
    .line 19
    long-to-int v7, v6

    .line 20
    int-to-byte v6, v7

    .line 21
    aput-byte v6, v2, v1

    .line 22
    .line 23
    add-int/lit8 v1, v3, 0x1

    .line 24
    .line 25
    ushr-long v6, p1, v0

    .line 26
    .line 27
    and-long/2addr v6, v4

    .line 28
    long-to-int v0, v6

    .line 29
    int-to-byte v0, v0

    .line 30
    aput-byte v0, v2, v3

    .line 31
    .line 32
    add-int/lit8 v0, v1, 0x1

    .line 33
    .line 34
    const/16 v3, 0x10

    .line 35
    .line 36
    ushr-long v6, p1, v3

    .line 37
    .line 38
    and-long/2addr v6, v4

    .line 39
    long-to-int v3, v6

    .line 40
    int-to-byte v3, v3

    .line 41
    aput-byte v3, v2, v1

    .line 42
    .line 43
    add-int/lit8 v1, v0, 0x1

    .line 44
    .line 45
    const/16 v3, 0x18

    .line 46
    .line 47
    ushr-long v6, p1, v3

    .line 48
    .line 49
    and-long/2addr v6, v4

    .line 50
    long-to-int v3, v6

    .line 51
    int-to-byte v3, v3

    .line 52
    aput-byte v3, v2, v0

    .line 53
    .line 54
    add-int/lit8 v0, v1, 0x1

    .line 55
    .line 56
    const/16 v3, 0x20

    .line 57
    .line 58
    ushr-long v6, p1, v3

    .line 59
    .line 60
    and-long/2addr v6, v4

    .line 61
    long-to-int v3, v6

    .line 62
    int-to-byte v3, v3

    .line 63
    aput-byte v3, v2, v1

    .line 64
    .line 65
    add-int/lit8 v1, v0, 0x1

    .line 66
    .line 67
    const/16 v3, 0x28

    .line 68
    .line 69
    ushr-long v6, p1, v3

    .line 70
    .line 71
    and-long/2addr v6, v4

    .line 72
    long-to-int v3, v6

    .line 73
    int-to-byte v3, v3

    .line 74
    aput-byte v3, v2, v0

    .line 75
    .line 76
    add-int/lit8 v0, v1, 0x1

    .line 77
    .line 78
    const/16 v3, 0x30

    .line 79
    .line 80
    ushr-long v6, p1, v3

    .line 81
    .line 82
    and-long/2addr v6, v4

    .line 83
    long-to-int v3, v6

    .line 84
    int-to-byte v3, v3

    .line 85
    aput-byte v3, v2, v1

    .line 86
    .line 87
    const/16 v1, 0x38

    .line 88
    .line 89
    ushr-long/2addr p1, v1

    .line 90
    and-long/2addr p1, v4

    .line 91
    long-to-int p2, p1

    .line 92
    int-to-byte p1, p2

    .line 93
    aput-byte p1, v2, v0

    .line 94
    .line 95
    return-void
.end method

.method public final j(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/squareup/wire/c0;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->e()Lcom/squareup/wire/c0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->d()Lokio/Buffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ReverseProtoWriter;->g(Lokio/ByteString;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final k(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ReverseProtoWriter;->o(I)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->p(J)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    :goto_0
    if-ltz v0, :cond_9

    .line 13
    .line 14
    add-int/lit8 v2, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v3, 0x80

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    if-ge v0, v3, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 26
    .line 27
    .line 28
    iget v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 29
    .line 30
    iget-object v6, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 31
    .line 32
    add-int/2addr v5, v4

    .line 33
    int-to-byte v0, v0

    .line 34
    aput-byte v0, v6, v5

    .line 35
    .line 36
    sub-int v0, v2, v5

    .line 37
    .line 38
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_1
    if-le v2, v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ge v4, v3, :cond_0

    .line 49
    .line 50
    add-int/lit8 v2, v2, -0x1

    .line 51
    .line 52
    add-int/lit8 v5, v5, -0x1

    .line 53
    .line 54
    int-to-byte v4, v4

    .line 55
    aput-byte v4, v6, v5

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iput v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_1
    const/16 v5, 0x800

    .line 63
    .line 64
    if-ge v0, v5, :cond_2

    .line 65
    .line 66
    const/4 v5, 0x2

    .line 67
    invoke-direct {p0, v5}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 71
    .line 72
    iget v6, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 73
    .line 74
    add-int/2addr v6, v4

    .line 75
    and-int/lit8 v7, v0, 0x3f

    .line 76
    .line 77
    or-int/2addr v3, v7

    .line 78
    int-to-byte v3, v3

    .line 79
    aput-byte v3, v5, v6

    .line 80
    .line 81
    add-int/2addr v6, v4

    .line 82
    iput v6, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 83
    .line 84
    shr-int/lit8 v0, v0, 0x6

    .line 85
    .line 86
    or-int/lit16 v0, v0, 0xc0

    .line 87
    .line 88
    int-to-byte v0, v0

    .line 89
    aput-byte v0, v5, v6

    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :cond_2
    const v5, 0xd800

    .line 94
    .line 95
    .line 96
    const/16 v6, 0x3f

    .line 97
    .line 98
    if-lt v0, v5, :cond_8

    .line 99
    .line 100
    const v5, 0xdfff

    .line 101
    .line 102
    .line 103
    if-le v0, v5, :cond_3

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_3
    if-ltz v2, :cond_4

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const v5, 0x7fffffff

    .line 114
    .line 115
    .line 116
    :goto_2
    const v7, 0xdbff

    .line 117
    .line 118
    .line 119
    if-gt v5, v7, :cond_7

    .line 120
    .line 121
    const v7, 0xdc00

    .line 122
    .line 123
    .line 124
    const/4 v8, 0x0

    .line 125
    if-gt v7, v0, :cond_5

    .line 126
    .line 127
    const v7, 0xe000

    .line 128
    .line 129
    .line 130
    if-ge v0, v7, :cond_5

    .line 131
    .line 132
    const/4 v8, 0x1

    .line 133
    :cond_5
    if-nez v8, :cond_6

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 137
    .line 138
    and-int/lit16 v5, v5, 0x3ff

    .line 139
    .line 140
    shl-int/lit8 v5, v5, 0xa

    .line 141
    .line 142
    and-int/lit16 v0, v0, 0x3ff

    .line 143
    .line 144
    or-int/2addr v0, v5

    .line 145
    const/high16 v5, 0x10000

    .line 146
    .line 147
    add-int/2addr v0, v5

    .line 148
    const/4 v5, 0x4

    .line 149
    invoke-direct {p0, v5}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 150
    .line 151
    .line 152
    iget-object v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 153
    .line 154
    iget v7, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 155
    .line 156
    add-int/2addr v7, v4

    .line 157
    and-int/lit8 v8, v0, 0x3f

    .line 158
    .line 159
    or-int/2addr v8, v3

    .line 160
    int-to-byte v8, v8

    .line 161
    aput-byte v8, v5, v7

    .line 162
    .line 163
    add-int/2addr v7, v4

    .line 164
    shr-int/lit8 v8, v0, 0x6

    .line 165
    .line 166
    and-int/2addr v8, v6

    .line 167
    or-int/2addr v8, v3

    .line 168
    int-to-byte v8, v8

    .line 169
    aput-byte v8, v5, v7

    .line 170
    .line 171
    add-int/2addr v7, v4

    .line 172
    shr-int/lit8 v8, v0, 0xc

    .line 173
    .line 174
    and-int/2addr v6, v8

    .line 175
    or-int/2addr v3, v6

    .line 176
    int-to-byte v3, v3

    .line 177
    aput-byte v3, v5, v7

    .line 178
    .line 179
    add-int/2addr v7, v4

    .line 180
    iput v7, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 181
    .line 182
    shr-int/lit8 v0, v0, 0x12

    .line 183
    .line 184
    or-int/lit16 v0, v0, 0xf0

    .line 185
    .line 186
    int-to-byte v0, v0

    .line 187
    aput-byte v0, v5, v7

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_7
    :goto_3
    invoke-direct {p0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 194
    .line 195
    iget v3, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 196
    .line 197
    add-int/2addr v3, v4

    .line 198
    iput v3, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 199
    .line 200
    aput-byte v6, v0, v3

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_8
    :goto_4
    const/4 v5, 0x3

    .line 204
    invoke-direct {p0, v5}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 205
    .line 206
    .line 207
    iget-object v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 208
    .line 209
    iget v7, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 210
    .line 211
    add-int/2addr v7, v4

    .line 212
    and-int/lit8 v8, v0, 0x3f

    .line 213
    .line 214
    or-int/2addr v8, v3

    .line 215
    int-to-byte v8, v8

    .line 216
    aput-byte v8, v5, v7

    .line 217
    .line 218
    add-int/2addr v7, v4

    .line 219
    shr-int/lit8 v8, v0, 0x6

    .line 220
    .line 221
    and-int/2addr v6, v8

    .line 222
    or-int/2addr v3, v6

    .line 223
    int-to-byte v3, v3

    .line 224
    aput-byte v3, v5, v7

    .line 225
    .line 226
    add-int/2addr v7, v4

    .line 227
    iput v7, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 228
    .line 229
    shr-int/lit8 v0, v0, 0xc

    .line 230
    .line 231
    or-int/lit16 v0, v0, 0xe0

    .line 232
    .line 233
    int-to-byte v0, v0

    .line 234
    aput-byte v0, v5, v7

    .line 235
    .line 236
    :goto_5
    move v0, v2

    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_9
    return-void
.end method

.method public final m(ILcom/squareup/wire/FieldEncoding;)V
    .locals 1
    .param p2    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    sget-object v0, Lcom/squareup/wire/c0;->b:Lcom/squareup/wire/c0$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/c0$a;->f(ILcom/squareup/wire/FieldEncoding;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ReverseProtoWriter;->o(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n(Lokio/BufferedSink;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->b()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final o(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/squareup/wire/c0;->b:Lcom/squareup/wire/c0$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/squareup/wire/c0$a;->h(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 20
    .line 21
    add-int/lit8 v2, v1, 0x1

    .line 22
    .line 23
    and-int/lit8 v3, p1, 0x7f

    .line 24
    .line 25
    or-int/lit16 v3, v3, 0x80

    .line 26
    .line 27
    int-to-byte v3, v3

    .line 28
    aput-byte v3, v0, v1

    .line 29
    .line 30
    ushr-int/lit8 p1, p1, 0x7

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 35
    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v0, v1

    .line 38
    .line 39
    return-void
.end method

.method public final p(J)V
    .locals 7

    .line 1
    sget-object v0, Lcom/squareup/wire/c0;->b:Lcom/squareup/wire/c0$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/c0$a;->i(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->f(I)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 14
    .line 15
    :goto_0
    const-wide/16 v2, -0x80

    .line 16
    .line 17
    and-long/2addr v2, p1

    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v0, v2, v4

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    const-wide/16 v3, 0x7f

    .line 29
    .line 30
    and-long/2addr v3, p1

    .line 31
    const-wide/16 v5, 0x80

    .line 32
    .line 33
    or-long/2addr v3, v5

    .line 34
    long-to-int v4, v3

    .line 35
    int-to-byte v3, v4

    .line 36
    aput-byte v3, v0, v1

    .line 37
    .line 38
    const/4 v0, 0x7

    .line 39
    ushr-long/2addr p1, v0

    .line 40
    move v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 43
    .line 44
    long-to-int p2, p1

    .line 45
    int-to-byte p1, p2

    .line 46
    aput-byte p1, v0, v1

    .line 47
    .line 48
    return-void
.end method
