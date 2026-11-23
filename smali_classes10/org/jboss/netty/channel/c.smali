.class public Lorg/jboss/netty/channel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/j0;


# static fields
.field static final f:I = 0x40

.field static final g:I = 0x400

.field static final h:I = 0x10000

.field private static final i:I = 0x4

.field private static final j:I = 0x1

.field private static final k:[I


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    :goto_0
    const/16 v2, 0x8

    .line 8
    .line 9
    if-gt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x4

    .line 22
    const/4 v3, 0x4

    .line 23
    :goto_1
    const/16 v4, 0x20

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-ge v3, v4, :cond_3

    .line 27
    .line 28
    const-wide/16 v6, 0x1

    .line 29
    .line 30
    shl-long/2addr v6, v3

    .line 31
    ushr-long v8, v6, v1

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    shl-long v10, v8, v4

    .line 35
    .line 36
    sub-long/2addr v6, v10

    .line 37
    :goto_2
    if-ge v5, v2, :cond_2

    .line 38
    .line 39
    add-long/2addr v6, v8

    .line 40
    const-wide/32 v10, 0x7fffffff

    .line 41
    .line 42
    .line 43
    cmp-long v4, v6, v10

    .line 44
    .line 45
    if-lez v4, :cond_1

    .line 46
    .line 47
    const v4, 0x7fffffff

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_1
    long-to-int v4, v6

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    new-array v1, v1, [I

    .line 77
    .line 78
    sput-object v1, Lorg/jboss/netty/channel/c;->k:[I

    .line 79
    .line 80
    :goto_4
    sget-object v1, Lorg/jboss/netty/channel/c;->k:[I

    .line 81
    .line 82
    array-length v2, v1

    .line 83
    if-ge v5, v2, :cond_4

    .line 84
    .line 85
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    aput v2, v1, v5

    .line 96
    .line 97
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x400

    const/high16 v1, 0x10000

    const/16 v2, 0x40

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lorg/jboss/netty/channel/c;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_4

    if-lt p2, p1, :cond_3

    if-lt p3, p2, :cond_2

    .line 3
    invoke-static {p1}, Lorg/jboss/netty/channel/c;->c(I)I

    move-result v0

    .line 4
    sget-object v1, Lorg/jboss/netty/channel/c;->k:[I

    aget v2, v1, v0

    if-ge v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lorg/jboss/netty/channel/c;->a:I

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Lorg/jboss/netty/channel/c;->a:I

    .line 7
    :goto_0
    invoke-static {p3}, Lorg/jboss/netty/channel/c;->c(I)I

    move-result p1

    .line 8
    aget v0, v1, p1

    if-le v0, p3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 9
    iput p1, p0, Lorg/jboss/netty/channel/c;->b:I

    goto :goto_1

    .line 10
    :cond_1
    iput p1, p0, Lorg/jboss/netty/channel/c;->b:I

    .line 11
    :goto_1
    invoke-static {p2}, Lorg/jboss/netty/channel/c;->c(I)I

    move-result p1

    iput p1, p0, Lorg/jboss/netty/channel/c;->c:I

    .line 12
    aget p1, v1, p1

    iput p1, p0, Lorg/jboss/netty/channel/c;->d:I

    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maximum: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initial: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minimum: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static c(I)I
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p0, p0, -0x1

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    move v1, p0

    .line 10
    :cond_1
    ushr-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    shl-int/lit8 v0, v0, 0x3

    .line 17
    .line 18
    add-int/lit8 v1, v0, -0x12

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x19

    .line 21
    .line 22
    :goto_0
    if-lt v1, v0, :cond_3

    .line 23
    .line 24
    sget-object v2, Lorg/jboss/netty/channel/c;->k:[I

    .line 25
    .line 26
    aget v2, v2, v1

    .line 27
    .line 28
    if-lt p0, v2, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    new-instance p0, Ljava/lang/Error;

    .line 35
    .line 36
    const-string v0, "shouldn\'t reach here; please file a bug report."

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/c;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public b(I)V
    .locals 4

    .line 1
    sget-object v0, Lorg/jboss/netty/channel/c;->k:[I

    .line 2
    .line 3
    iget v1, p0, Lorg/jboss/netty/channel/c;->c:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    sub-int/2addr v1, v2

    .line 7
    sub-int/2addr v1, v2

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v1, v0, v1

    .line 14
    .line 15
    if-gt p1, v1, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p0, Lorg/jboss/netty/channel/c;->e:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget p1, p0, Lorg/jboss/netty/channel/c;->c:I

    .line 22
    .line 23
    sub-int/2addr p1, v2

    .line 24
    iget v1, p0, Lorg/jboss/netty/channel/c;->a:I

    .line 25
    .line 26
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lorg/jboss/netty/channel/c;->c:I

    .line 31
    .line 32
    aget p1, v0, p1

    .line 33
    .line 34
    iput p1, p0, Lorg/jboss/netty/channel/c;->d:I

    .line 35
    .line 36
    iput-boolean v3, p0, Lorg/jboss/netty/channel/c;->e:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-boolean v2, p0, Lorg/jboss/netty/channel/c;->e:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget v1, p0, Lorg/jboss/netty/channel/c;->d:I

    .line 43
    .line 44
    if-lt p1, v1, :cond_2

    .line 45
    .line 46
    iget p1, p0, Lorg/jboss/netty/channel/c;->c:I

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0x4

    .line 49
    .line 50
    iget v1, p0, Lorg/jboss/netty/channel/c;->b:I

    .line 51
    .line 52
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lorg/jboss/netty/channel/c;->c:I

    .line 57
    .line 58
    aget p1, v0, p1

    .line 59
    .line 60
    iput p1, p0, Lorg/jboss/netty/channel/c;->d:I

    .line 61
    .line 62
    iput-boolean v3, p0, Lorg/jboss/netty/channel/c;->e:Z

    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method
