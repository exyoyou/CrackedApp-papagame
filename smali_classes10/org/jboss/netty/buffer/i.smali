.class public Lorg/jboss/netty/buffer/i;
.super Lorg/jboss/netty/buffer/a;
.source "SourceFile"


# static fields
.field static final synthetic k:Z


# instance fields
.field private final f:Ljava/nio/ByteOrder;

.field private g:[Lorg/jboss/netty/buffer/e;

.field private h:[I

.field private i:I

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/e;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/buffer/i;->f:Ljava/nio/ByteOrder;

    .line 3
    iput-boolean p3, p0, Lorg/jboss/netty/buffer/i;->j:Z

    .line 4
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/i;->j(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/i;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 6
    iget-object v0, p1, Lorg/jboss/netty/buffer/i;->f:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/jboss/netty/buffer/i;->f:Ljava/nio/ByteOrder;

    .line 7
    iget-boolean v0, p1, Lorg/jboss/netty/buffer/i;->j:Z

    iput-boolean v0, p0, Lorg/jboss/netty/buffer/i;->j:Z

    .line 8
    iget-object v0, p1, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    invoke-virtual {v0}, [Lorg/jboss/netty/buffer/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/e;

    iput-object v0, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 9
    iget-object v0, p1, Lorg/jboss/netty/buffer/i;->h:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 10
    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void
.end method

.method private e(I)I
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/i;->i:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 4
    .line 5
    aget v2, v1, v0

    .line 6
    .line 7
    if-lt p1, v2, :cond_2

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    if-ge p1, v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    if-ge v2, v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 22
    .line 23
    add-int/lit8 v1, v2, 0x1

    .line 24
    .line 25
    aget v0, v0, v1

    .line 26
    .line 27
    if-ge p1, v0, :cond_1

    .line 28
    .line 29
    iput v2, p0, Lorg/jboss/netty/buffer/i;->i:I

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    move v2, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    :goto_1
    if-ltz v0, :cond_4

    .line 37
    .line 38
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 39
    .line 40
    aget v1, v1, v0

    .line 41
    .line 42
    if-lt p1, v1, :cond_3

    .line 43
    .line 44
    iput v0, p0, Lorg/jboss/netty/buffer/i;->i:I

    .line 45
    .line 46
    return v0

    .line 47
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "Invalid index: "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, ", maximum: "

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 71
    .line 72
    array-length p1, p1

    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method private f(IIILorg/jboss/netty/buffer/e;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-lez p2, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    aget-object v1, v1, p3

    .line 7
    .line 8
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 9
    .line 10
    aget v2, v2, p3

    .line 11
    .line 12
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    sub-int v2, p1, v2

    .line 17
    .line 18
    sub-int/2addr v3, v2

    .line 19
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-interface {v1, v2, p4, v0, v3}, Lorg/jboss/netty/buffer/e;->U0(ILorg/jboss/netty/buffer/e;II)V

    .line 24
    .line 25
    .line 26
    add-int/2addr p1, v3

    .line 27
    add-int/2addr v0, v3

    .line 28
    sub-int/2addr p2, v3

    .line 29
    add-int/lit8 p3, p3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p4}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-interface {p4, p1}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private j(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/jboss/netty/buffer/i;->i:I

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    new-array v1, v1, [Lorg/jboss/netty/buffer/e;

    .line 9
    .line 10
    iput-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lorg/jboss/netty/buffer/e;

    .line 23
    .line 24
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 35
    .line 36
    aput-object v2, v3, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "All buffers must have the same endianness."

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    array-length p1, v2

    .line 50
    const/4 v1, 0x1

    .line 51
    add-int/2addr p1, v1

    .line 52
    new-array p1, p1, [I

    .line 53
    .line 54
    iput-object p1, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 55
    .line 56
    aput v0, p1, v0

    .line 57
    .line 58
    :goto_1
    iget-object p1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 59
    .line 60
    array-length v2, p1

    .line 61
    if-gt v1, v2, :cond_2

    .line 62
    .line 63
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 64
    .line 65
    add-int/lit8 v3, v1, -0x1

    .line 66
    .line 67
    aget v4, v2, v3

    .line 68
    .line 69
    aget-object p1, p1, v3

    .line 70
    .line 71
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    add-int/2addr v4, p1

    .line 76
    aput v4, v2, v1

    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/a;->r0(II)V

    .line 86
    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public G0(ILorg/jboss/netty/buffer/e;II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, p4

    .line 10
    if-gt p1, v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr v1, p4

    .line 17
    if-gt p3, v1, :cond_1

    .line 18
    .line 19
    :goto_0
    if-lez p4, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 22
    .line 23
    aget-object v1, v1, v0

    .line 24
    .line 25
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 26
    .line 27
    aget v2, v2, v0

    .line 28
    .line 29
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int v2, p1, v2

    .line 34
    .line 35
    sub-int/2addr v3, v2

    .line 36
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/e;->G0(ILorg/jboss/netty/buffer/e;II)V

    .line 41
    .line 42
    .line 43
    add-int/2addr p1, v3

    .line 44
    add-int/2addr p3, v3

    .line 45
    sub-int/2addr p4, v3

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "Too many bytes to be written - Needs "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    add-int/2addr p1, p4

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, " or "

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/2addr p3, p4

    .line 72
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p3, ", maximum is "

    .line 76
    .line 77
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public L()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v2, v0

    .line 17
    invoke-virtual {p0, v0, v2}, Lorg/jboss/netty/buffer/i;->g(II)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3, v0}, Lorg/jboss/netty/buffer/h;->b(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v3, v0}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->p0()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    .line 51
    .line 52
    .line 53
    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move v3, v0

    .line 56
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->b0()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    .line 60
    .line 61
    .line 62
    move-result v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move v4, v1

    .line 65
    :goto_1
    invoke-direct {p0, v2}, Lorg/jboss/netty/buffer/i;->j(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    sub-int/2addr v3, v0

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    sub-int/2addr v4, v0

    .line 75
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-virtual {p0, v3, v4}, Lorg/jboss/netty/buffer/a;->r0(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->l0()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->X0()V

    .line 86
    .line 87
    .line 88
    sub-int/2addr v1, v0

    .line 89
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0, v2, v0}, Lorg/jboss/netty/buffer/a;->r0(II)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public M0(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 10
    .line 11
    aget v0, v2, v0

    .line 12
    .line 13
    sub-int/2addr p1, v0

    .line 14
    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->M0(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public N0(I[BII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p4

    .line 6
    if-gt p1, v0, :cond_3

    .line 7
    .line 8
    array-length v0, p2

    .line 9
    sub-int/2addr v0, p4

    .line 10
    if-gt p3, v0, :cond_3

    .line 11
    .line 12
    if-ltz p1, :cond_2

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    if-lez p4, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 24
    .line 25
    aget-object v1, v1, v0

    .line 26
    .line 27
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 28
    .line 29
    aget v2, v2, v0

    .line 30
    .line 31
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sub-int v2, p1, v2

    .line 36
    .line 37
    sub-int/2addr v3, v2

    .line 38
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/e;->N0(I[BII)V

    .line 43
    .line 44
    .line 45
    add-int/2addr p1, v3

    .line 46
    add-int/2addr p3, v3

    .line 47
    sub-int/2addr p4, v3

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 53
    .line 54
    const-string p2, "Index must be >= 0"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "Too many bytes to read - Needs "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    add-int/2addr p1, p4

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, ", maximum is "

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " or "

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    array-length p1, p2

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p3
.end method

.method public O(I[BII)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, p4

    .line 10
    if-gt p1, v1, :cond_1

    .line 11
    .line 12
    array-length v1, p2

    .line 13
    sub-int/2addr v1, p4

    .line 14
    if-gt p3, v1, :cond_1

    .line 15
    .line 16
    :goto_0
    if-lez p4, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 19
    .line 20
    aget-object v1, v1, v0

    .line 21
    .line 22
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 23
    .line 24
    aget v2, v2, v0

    .line 25
    .line 26
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sub-int v2, p1, v2

    .line 31
    .line 32
    sub-int/2addr v3, v2

    .line 33
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/e;->O(I[BII)V

    .line 38
    .line 39
    .line 40
    add-int/2addr p1, v3

    .line 41
    add-int/2addr p3, v3

    .line 42
    sub-int/2addr p4, v3

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "Too many bytes to read - needs "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/2addr p1, p4

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, " or "

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    add-int/2addr p3, p4

    .line 69
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p3, ", maximum is "

    .line 73
    .line 74
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    array-length p1, p2

    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0
.end method

.method public U0(ILorg/jboss/netty/buffer/e;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p4

    .line 6
    if-gt p1, v0, :cond_3

    .line 7
    .line 8
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sub-int/2addr v0, p4

    .line 13
    if-gt p3, v0, :cond_3

    .line 14
    .line 15
    if-ltz p1, :cond_2

    .line 16
    .line 17
    if-nez p4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    if-lez p4, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 27
    .line 28
    aget-object v1, v1, v0

    .line 29
    .line 30
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 31
    .line 32
    aget v2, v2, v0

    .line 33
    .line 34
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sub-int v2, p1, v2

    .line 39
    .line 40
    sub-int/2addr v3, v2

    .line 41
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/e;->U0(ILorg/jboss/netty/buffer/e;II)V

    .line 46
    .line 47
    .line 48
    add-int/2addr p1, v3

    .line 49
    add-int/2addr p3, v3

    .line 50
    sub-int/2addr p4, v3

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 56
    .line 57
    const-string p2, "Index must be >= 0"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "Too many bytes to be read - Needs "

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    add-int/2addr p1, p4

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " or "

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    add-int/2addr p3, p4

    .line 85
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p3, ", maximum is "

    .line 89
    .line 90
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public W(ILjava/io/OutputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p3

    .line 6
    if-gt p1, v0, :cond_3

    .line 7
    .line 8
    if-ltz p1, :cond_2

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    if-lez p3, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 20
    .line 21
    aget-object v1, v1, v0

    .line 22
    .line 23
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 24
    .line 25
    aget v2, v2, v0

    .line 26
    .line 27
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sub-int v2, p1, v2

    .line 32
    .line 33
    sub-int/2addr v3, v2

    .line 34
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-interface {v1, v2, p2, v3}, Lorg/jboss/netty/buffer/e;->W(ILjava/io/OutputStream;I)V

    .line 39
    .line 40
    .line 41
    add-int/2addr p1, v3

    .line 42
    sub-int/2addr p3, v3

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 48
    .line 49
    const-string p2, "Index must be >= 0"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v1, "Too many bytes to be read - needs "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    add-int/2addr p1, p3

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, ", maximum of "

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p2
.end method

.method public W0(II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 8
    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 10
    .line 11
    aget v3, v2, v3

    .line 12
    .line 13
    if-gt v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    sub-int/2addr p1, v0

    .line 22
    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->W0(II)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    ushr-int/lit8 v0, p2, 0x8

    .line 35
    .line 36
    int-to-byte v0, v0

    .line 37
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->M0(II)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    int-to-byte p2, p2

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->M0(II)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    int-to-byte v0, p2

    .line 48
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->M0(II)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    ushr-int/lit8 p2, p2, 0x8

    .line 54
    .line 55
    int-to-byte p2, p2

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->M0(II)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    if-ltz p1, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sub-int/2addr v0, p2

    .line 15
    if-gt p1, v0, :cond_4

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->g(II)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    if-eq p2, v0, :cond_2

    .line 34
    .line 35
    new-instance p2, Lorg/jboss/netty/buffer/i;

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lorg/jboss/netty/buffer/i;->j:Z

    .line 42
    .line 43
    invoke-direct {p2, v0, p1, v1}, Lorg/jboss/netty/buffer/i;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :cond_2
    const/4 p2, 0x0

    .line 48
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lorg/jboss/netty/buffer/e;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_3
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "Invalid index: "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, " - Bytes needed: "

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    add-int/2addr p1, p2

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, ", maximum is "

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0
.end method

.method public array()[B
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public c1(ILjava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int/2addr v3, v2

    .line 18
    if-gt p1, v3, :cond_1

    .line 19
    .line 20
    :goto_0
    if-lez v2, :cond_0

    .line 21
    .line 22
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 23
    .line 24
    aget-object v3, v3, v0

    .line 25
    .line 26
    iget-object v4, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 27
    .line 28
    aget v4, v4, v0

    .line 29
    .line 30
    invoke-interface {v3}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sub-int v4, p1, v4

    .line 35
    .line 36
    sub-int/2addr v5, v4

    .line 37
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    add-int/2addr v6, v5

    .line 46
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    invoke-interface {v3, v4, p2}, Lorg/jboss/netty/buffer/e;->c1(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    add-int/2addr p1, v5

    .line 53
    sub-int/2addr v2, v5

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "Too many bytes to be written - Needs "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    add-int/2addr p1, v2

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, ", maximum is "

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p2
.end method

.method public capacity()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    aget v0, v0, v1

    .line 7
    .line 8
    return v0
.end method

.method public d0(II)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, p2

    .line 10
    if-gt p1, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->factory()Lorg/jboss/netty/buffer/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/f;->a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/buffer/i;->f(IIILorg/jboss/netty/buffer/e;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "Too many bytes to copy - Needs "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/2addr p1, p2

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ", maximum is "

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/i;-><init>(Lorg/jboss/netty/buffer/i;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/e;->r0(II)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jboss/netty/buffer/n;->h(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public g(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/e;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    add-int v0, p1, p2

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-gt v0, v1, :cond_4

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 23
    .line 24
    array-length v2, v2

    .line 25
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 29
    .line 30
    aget-object v2, v2, v0

    .line 31
    .line 32
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->duplicate()Lorg/jboss/netty/buffer/e;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 37
    .line 38
    aget v3, v3, v0

    .line 39
    .line 40
    sub-int/2addr p1, v3

    .line 41
    invoke-interface {v2, p1}, Lorg/jboss/netty/buffer/e;->f0(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-gt p2, p1, :cond_2

    .line 49
    .line 50
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    add-int/2addr p1, p2

    .line 55
    invoke-interface {v2, p1}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    sub-int/2addr p2, p1

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    iget-object p1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 69
    .line 70
    aget-object p1, p1, v0

    .line 71
    .line 72
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->duplicate()Lorg/jboss/netty/buffer/e;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-gtz p2, :cond_1

    .line 77
    .line 78
    :goto_0
    const/4 p1, 0x0

    .line 79
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-ge p1, p2, :cond_3

    .line 84
    .line 85
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lorg/jboss/netty/buffer/e;

    .line 90
    .line 91
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->y0()Lorg/jboss/netty/buffer/e;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    add-int/lit8 p1, p1, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    return-object v1

    .line 102
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "Too many bytes to decompose - Need "

    .line 110
    .line 111
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, ", capacity is "

    .line 118
    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method public getByte(I)B
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 10
    .line 11
    aget v0, v2, v0

    .line 12
    .line 13
    sub-int/2addr p1, v0

    .line 14
    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/i;->j0(II)[Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    long-to-int p2, p1

    .line 16
    return p2

    .line 17
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/i;->h0(II)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public getInt(I)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p1, 0x4

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 8
    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 10
    .line 11
    aget v3, v2, v3

    .line 12
    .line 13
    if-gt v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    sub-int/2addr p1, v0

    .line 22
    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 32
    .line 33
    const v2, 0xffff

    .line 34
    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    and-int/2addr v0, v2

    .line 43
    shl-int/lit8 v0, v0, 0x10

    .line 44
    .line 45
    add-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    and-int/2addr p1, v2

    .line 52
    or-int/2addr p1, v0

    .line 53
    return p1

    .line 54
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    and-int/2addr v0, v2

    .line 59
    add-int/lit8 p1, p1, 0x2

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    and-int/2addr p1, v2

    .line 66
    shl-int/lit8 p1, p1, 0x10

    .line 67
    .line 68
    or-int/2addr p1, v0

    .line 69
    return p1
.end method

.method public getLong(I)J
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p1, 0x8

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 8
    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 10
    .line 11
    aget v3, v2, v3

    .line 12
    .line 13
    if-gt v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    sub-int/2addr p1, v0

    .line 22
    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 32
    .line 33
    const/16 v2, 0x20

    .line 34
    .line 35
    const-wide v3, 0xffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getInt(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-long v0, v0

    .line 47
    and-long/2addr v0, v3

    .line 48
    shl-long/2addr v0, v2

    .line 49
    add-int/lit8 p1, p1, 0x4

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getInt(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-long v5, p1

    .line 56
    and-long v2, v5, v3

    .line 57
    .line 58
    or-long/2addr v0, v2

    .line 59
    return-wide v0

    .line 60
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getInt(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    int-to-long v0, v0

    .line 65
    and-long/2addr v0, v3

    .line 66
    add-int/lit8 p1, p1, 0x4

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getInt(I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    int-to-long v5, p1

    .line 73
    and-long/2addr v3, v5

    .line 74
    shl-long v2, v3, v2

    .line 75
    .line 76
    or-long/2addr v0, v2

    .line 77
    return-wide v0
.end method

.method public getShort(I)S
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 8
    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 10
    .line 11
    aget v3, v2, v3

    .line 12
    .line 13
    if-gt v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    sub-int/2addr p1, v0

    .line 22
    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    and-int/lit16 v0, v0, 0xff

    .line 40
    .line 41
    shl-int/lit8 v0, v0, 0x8

    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    and-int/lit16 p1, p1, 0xff

    .line 50
    .line 51
    or-int/2addr p1, v0

    .line 52
    int-to-short p1, p1

    .line 53
    return p1

    .line 54
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    and-int/lit16 v0, v0, 0xff

    .line 59
    .line 60
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    and-int/lit16 p1, p1, 0xff

    .line 67
    .line 68
    shl-int/lit8 p1, p1, 0x8

    .line 69
    .line 70
    or-int/2addr p1, v0

    .line 71
    int-to-short p1, p1

    .line 72
    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p1, 0x3

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 8
    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 10
    .line 11
    aget v3, v2, v3

    .line 12
    .line 13
    if-gt v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    sub-int/2addr p1, v0

    .line 22
    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 32
    .line 33
    const v2, 0xffff

    .line 34
    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    and-int/2addr v0, v2

    .line 43
    shl-int/lit8 v0, v0, 0x8

    .line 44
    .line 45
    add-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    and-int/lit16 p1, p1, 0xff

    .line 52
    .line 53
    or-int/2addr p1, v0

    .line 54
    return p1

    .line 55
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    and-int/2addr v0, v2

    .line 60
    add-int/lit8 p1, p1, 0x2

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    and-int/lit16 p1, p1, 0xff

    .line 67
    .line 68
    shl-int/lit8 p1, p1, 0x10

    .line 69
    .line 70
    or-int/2addr p1, v0

    .line 71
    return p1
.end method

.method public h(I)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    aget-object p1, v0, p1

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Invalid index: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " - Bytes needed: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ", maximum is "

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public h0(II)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v0, v0, v3

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->h0(II)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->j0(II)[Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    array-length v0, p1

    .line 32
    :goto_0
    if-ge v3, v0, :cond_1

    .line 33
    .line 34
    aget-object v1, p1, v3

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    return-object p2
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j0(II)[Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gt v0, v1, :cond_3

    .line 8
    .line 9
    if-ltz p1, :cond_2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 20
    .line 21
    array-length v1, v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    if-lez p2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 32
    .line 33
    aget-object v2, v2, v1

    .line 34
    .line 35
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 36
    .line 37
    aget v3, v3, v1

    .line 38
    .line 39
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int v3, p1, v3

    .line 44
    .line 45
    sub-int/2addr v4, v3

    .line 46
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-interface {v2, v3, v4}, Lorg/jboss/netty/buffer/e;->h0(II)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/2addr p1, v4

    .line 58
    sub-int/2addr p2, v4

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, [Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 76
    .line 77
    const-string p2, "Index must be >= 0"

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "Too many bytes to convert - Needs"

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, ", maximum is "

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/buffer/i;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/jboss/netty/util/internal/d;->e()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x7

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public k0(II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p1, 0x3

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 8
    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 10
    .line 11
    aget v3, v2, v3

    .line 12
    .line 13
    if-gt v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    sub-int/2addr p1, v0

    .line 22
    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->k0(II)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    shr-int/lit8 v0, p2, 0x8

    .line 35
    .line 36
    int-to-short v0, v0

    .line 37
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->W0(II)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x2

    .line 41
    .line 42
    int-to-byte p2, p2

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->M0(II)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    int-to-short v0, p2

    .line 48
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->W0(II)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x2

    .line 52
    .line 53
    ushr-int/lit8 p2, p2, 0x10

    .line 54
    .line 55
    int-to-byte p2, p2

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->M0(II)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->f:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_4

    const/4 v1, 0x0

    .line 3
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    aget-object v2, v2, v0

    .line 4
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->h:[I

    aget v3, v3, v0

    .line 5
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v4

    sub-int v3, p1, v3

    sub-int/2addr v4, v3

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6
    invoke-interface {v2, v3, p2, v4}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/io/InputStream;I)I

    move-result v2

    if-gez v2, :cond_1

    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ne v2, v4, :cond_2

    add-int/2addr p1, v4

    sub-int/2addr p3, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    :goto_0
    if-gtz p3, :cond_0

    :cond_3
    return v1

    .line 7
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to write - Needs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_5

    const/4 v1, 0x0

    .line 10
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    aget-object v2, v2, v0

    .line 11
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->h:[I

    aget v3, v3, v0

    .line 12
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v4

    sub-int v3, p1, v3

    sub-int/2addr v4, v3

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 13
    invoke-interface {v2, v3, p2, v4}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-gez v2, :cond_2

    if-nez v1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_2
    if-ne v2, v4, :cond_3

    add-int/2addr p1, v4

    sub-int/2addr p3, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    :goto_0
    if-gtz p3, :cond_0

    :cond_4
    :goto_1
    return v1

    .line 14
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to write - Needs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setInt(II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p1, 0x4

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 8
    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 10
    .line 11
    aget v3, v2, v3

    .line 12
    .line 13
    if-gt v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    sub-int/2addr p1, v0

    .line 22
    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    ushr-int/lit8 v0, p2, 0x10

    .line 35
    .line 36
    int-to-short v0, v0

    .line 37
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->W0(II)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x2

    .line 41
    .line 42
    int-to-short p2, p2

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->W0(II)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    int-to-short v0, p2

    .line 48
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->W0(II)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x2

    .line 52
    .line 53
    ushr-int/lit8 p2, p2, 0x10

    .line 54
    .line 55
    int-to-short p2, p2

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->W0(II)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public setLong(IJ)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p1, 0x8

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 8
    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 10
    .line 11
    aget v3, v2, v3

    .line 12
    .line 13
    if-gt v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    sub-int/2addr p1, v0

    .line 22
    invoke-interface {v1, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    ushr-long v0, p2, v2

    .line 37
    .line 38
    long-to-int v1, v0

    .line 39
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/i;->setInt(II)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x4

    .line 43
    .line 44
    long-to-int p3, p2

    .line 45
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/i;->setInt(II)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    long-to-int v0, p2

    .line 50
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->setInt(II)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 p1, p1, 0x4

    .line 54
    .line 55
    ushr-long/2addr p2, v2

    .line 56
    long-to-int p3, p2

    .line 57
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/i;->setInt(II)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/buffer/a;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", components="

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 30
    .line 31
    array-length v0, v0

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v0, 0x29

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public v0(ILjava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int/2addr v3, v2

    .line 18
    if-gt p1, v3, :cond_2

    .line 19
    .line 20
    if-ltz p1, :cond_1

    .line 21
    .line 22
    :goto_0
    if-lez v2, :cond_0

    .line 23
    .line 24
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->g:[Lorg/jboss/netty/buffer/e;

    .line 25
    .line 26
    aget-object v3, v3, v0

    .line 27
    .line 28
    iget-object v4, p0, Lorg/jboss/netty/buffer/i;->h:[I

    .line 29
    .line 30
    aget v4, v4, v0

    .line 31
    .line 32
    invoke-interface {v3}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    sub-int v4, p1, v4

    .line 37
    .line 38
    sub-int/2addr v5, v4

    .line 39
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    add-int/2addr v6, v5

    .line 48
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    invoke-interface {v3, v4, p2}, Lorg/jboss/netty/buffer/e;->v0(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    add-int/2addr p1, v5

    .line 55
    sub-int/2addr v2, v5

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 69
    .line 70
    const-string p2, "Index must be >= 0"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "Too many bytes to be read - Needs "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    add-int/2addr p1, v2

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, ", maximum is "

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p2
.end method
