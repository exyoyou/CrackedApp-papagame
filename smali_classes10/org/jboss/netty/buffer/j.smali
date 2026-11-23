.class public Lorg/jboss/netty/buffer/j;
.super Lorg/jboss/netty/buffer/b;
.source "SourceFile"


# static fields
.field private static final i:Lorg/jboss/netty/buffer/j;

.field private static final j:Lorg/jboss/netty/buffer/j;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:I

.field private e:Lorg/jboss/netty/buffer/e;

.field private f:I

.field private g:Lorg/jboss/netty/buffer/e;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/j;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/jboss/netty/buffer/j;->i:Lorg/jboss/netty/buffer/j;

    .line 9
    .line 10
    new-instance v0, Lorg/jboss/netty/buffer/j;

    .line 11
    .line 12
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/jboss/netty/buffer/j;->j:Lorg/jboss/netty/buffer/j;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    const/high16 v0, 0x100000

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;I)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/b;-><init>(Ljava/nio/ByteOrder;)V

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/buffer/j;->b:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/buffer/j;->c:Ljava/lang/Object;

    if-lez p2, :cond_0

    .line 7
    iput p2, p0, Lorg/jboss/netty/buffer/j;->d:I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preallocatedBufCapacity must be greater than 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(I)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/j;->e:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    .line 11
    iget v3, p0, Lorg/jboss/netty/buffer/j;->d:I

    .line 12
    .line 13
    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lorg/jboss/netty/buffer/j;->e:Lorg/jboss/netty/buffer/e;

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput p1, p0, Lorg/jboss/netty/buffer/j;->f:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget v3, p0, Lorg/jboss/netty/buffer/j;->f:I

    .line 31
    .line 32
    sub-int/2addr v1, v3

    .line 33
    if-lt v1, p1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lorg/jboss/netty/buffer/j;->e:Lorg/jboss/netty/buffer/e;

    .line 36
    .line 37
    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lorg/jboss/netty/buffer/j;->f:I

    .line 42
    .line 43
    add-int/2addr v2, p1

    .line 44
    iput v2, p0, Lorg/jboss/netty/buffer/j;->f:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 48
    .line 49
    iget v3, p0, Lorg/jboss/netty/buffer/j;->d:I

    .line 50
    .line 51
    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lorg/jboss/netty/buffer/j;->e:Lorg/jboss/netty/buffer/e;

    .line 56
    .line 57
    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput p1, p0, Lorg/jboss/netty/buffer/j;->f:I

    .line 62
    .line 63
    :goto_0
    monitor-exit v0

    .line 64
    return-object v1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method private h(I)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/j;->g:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    .line 11
    iget v3, p0, Lorg/jboss/netty/buffer/j;->d:I

    .line 12
    .line 13
    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lorg/jboss/netty/buffer/j;->g:Lorg/jboss/netty/buffer/e;

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput p1, p0, Lorg/jboss/netty/buffer/j;->h:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget v3, p0, Lorg/jboss/netty/buffer/j;->h:I

    .line 31
    .line 32
    sub-int/2addr v1, v3

    .line 33
    if-lt v1, p1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lorg/jboss/netty/buffer/j;->g:Lorg/jboss/netty/buffer/e;

    .line 36
    .line 37
    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lorg/jboss/netty/buffer/j;->h:I

    .line 42
    .line 43
    add-int/2addr v2, p1

    .line 44
    iput v2, p0, Lorg/jboss/netty/buffer/j;->h:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 48
    .line 49
    iget v3, p0, Lorg/jboss/netty/buffer/j;->d:I

    .line 50
    .line 51
    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lorg/jboss/netty/buffer/j;->g:Lorg/jboss/netty/buffer/e;

    .line 56
    .line 57
    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput p1, p0, Lorg/jboss/netty/buffer/j;->h:I

    .line 62
    .line 63
    :goto_0
    monitor-exit v0

    .line 64
    return-object v1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method public static i()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/j;->i:Lorg/jboss/netty/buffer/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public static j(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/jboss/netty/buffer/j;->i:Lorg/jboss/netty/buffer/j;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Lorg/jboss/netty/buffer/j;->j:Lorg/jboss/netty/buffer/j;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    if-nez p0, :cond_2

    .line 16
    .line 17
    new-instance p0, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string v0, "defaultEndianness"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "Should not reach here"

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method


# virtual methods
.method public a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-ltz p2, :cond_3

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget v0, p0, Lorg/jboss/netty/buffer/j;->d:I

    .line 11
    .line 12
    if-lt p2, v0, :cond_1

    .line 13
    .line 14
    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/j;->g(I)Lorg/jboss/netty/buffer/e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/j;->h(I)Lorg/jboss/netty/buffer/e;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->clear()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "capacity: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 60
    .line 61
    const-string p2, "order"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public c(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    if-ltz p3, :cond_2

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    add-int v0, p3, p4

    .line 11
    .line 12
    array-length v1, p2

    .line 13
    if-gt v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1, p4}, Lorg/jboss/netty/buffer/j;->a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->O0([BII)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string p3, "length: "

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 47
    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string p4, "offset: "

    .line 54
    .line 55
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 70
    .line 71
    const-string p2, "array"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public d(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lorg/jboss/netty/buffer/h;->Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/j;->a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->Y0(Ljava/nio/ByteBuffer;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    .line 39
    .line 40
    return-object v0
.end method
