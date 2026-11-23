.class public final Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$b;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$i;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$f;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$a;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$j;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$g;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$h;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$e;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final h:I = 0x10

.field static final i:F = 0.75f

.field static final j:I = 0x10

.field static final k:I = 0x40000000

.field static final l:I = 0x10000

.field static final m:I = 0x2


# instance fields
.field final b:I

.field final c:I

.field final d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    .line 11
    invoke-direct {p0, v0, v1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/16 v0, 0x10

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6

    if-ltz p1, :cond_6

    if-lez p3, :cond_6

    const/high16 v0, 0x10000

    if-le p3, v0, :cond_0

    const/high16 p3, 0x10000

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    rsub-int/lit8 p3, v3, 0x20

    .line 2
    iput p3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->c:I

    add-int/lit8 p3, v2, -0x1

    .line 3
    iput p3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->b:I

    .line 4
    invoke-static {v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->f(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object p3

    iput-object p3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    const/high16 p3, 0x40000000    # 2.0f

    if-le p1, p3, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    .line 5
    :cond_2
    div-int p3, p1, v2

    mul-int v2, v2, p3

    if-ge v2, p1, :cond_3

    add-int/lit8 p3, p3, 0x1

    :cond_3
    :goto_1
    if-ge v1, p3, :cond_4

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    array-length p3, p1

    if-ge v0, p3, :cond_5

    .line 7
    new-instance p3, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    invoke-direct {p3, v1, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;-><init>(IF)V

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    .line 13
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static c(I)I
    .locals 2

    .line 1
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private static d(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public b()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$h;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->clear()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a(Ljava/lang/Object;I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    new-array v1, v1, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ge v3, v4, :cond_5

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_1
    array-length v7, v0

    .line 18
    if-ge v4, v7, :cond_1

    .line 19
    .line 20
    aget-object v7, v0, v4

    .line 21
    .line 22
    iget v8, v7, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c:I

    .line 23
    .line 24
    aput v8, v1, v4

    .line 25
    .line 26
    add-int/2addr v6, v8

    .line 27
    invoke-virtual {v7, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    return v5

    .line 34
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    if-eqz v6, :cond_3

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_2
    array-length v6, v0

    .line 41
    if-ge v4, v6, :cond_3

    .line 42
    .line 43
    aget v6, v1, v4

    .line 44
    .line 45
    aget-object v7, v0, v4

    .line 46
    .line 47
    iget v7, v7, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c:I

    .line 48
    .line 49
    if-eq v6, v7, :cond_2

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    goto :goto_3

    .line 53
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 57
    .line 58
    return v2

    .line 59
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    array-length v1, v0

    .line 63
    const/4 v3, 0x0

    .line 64
    :goto_4
    if-ge v3, v1, :cond_6

    .line 65
    .line 66
    aget-object v4, v0, v3

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_6
    :try_start_0
    array-length v1, v0

    .line 75
    const/4 v3, 0x0

    .line 76
    :goto_5
    if-ge v3, v1, :cond_8

    .line 77
    .line 78
    aget-object v4, v0, v3

    .line 79
    .line 80
    invoke-virtual {v4, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v4, :cond_7

    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_8
    const/4 v5, 0x0

    .line 91
    :goto_6
    array-length p1, v0

    .line 92
    :goto_7
    if-ge v2, p1, :cond_9

    .line 93
    .line 94
    aget-object v1, v0, v2

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_7

    .line 102
    :cond_9
    return v5

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    array-length v1, v0

    .line 105
    :goto_8
    if-ge v2, v1, :cond_a

    .line 106
    .line 107
    aget-object v3, v0, v2

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_8

    .line 115
    :cond_a
    throw p1
.end method

.method public e()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$e;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f:Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$b;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$b;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f:Ljava/util/Set;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method f(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 2
    .line 3
    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->c:I

    .line 4
    .line 5
    ushr-int/2addr p1, v1

    .line 6
    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->b:I

    .line 7
    .line 8
    and-int/2addr p1, v1

    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public isEmpty()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    array-length v5, v0

    .line 10
    if-ge v3, v5, :cond_1

    .line 11
    .line 12
    aget-object v5, v0, v3

    .line 13
    .line 14
    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    aget-object v5, v0, v3

    .line 20
    .line 21
    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c:I

    .line 22
    .line 23
    aput v5, v1, v3

    .line 24
    .line 25
    add-int/2addr v4, v5

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-eqz v4, :cond_4

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_1
    array-length v4, v0

    .line 33
    if-ge v3, v4, :cond_4

    .line 34
    .line 35
    aget-object v4, v0, v3

    .line 36
    .line 37
    iget v4, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    .line 38
    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    aget v4, v1, v3

    .line 42
    .line 43
    aget-object v5, v0, v3

    .line 44
    .line 45
    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c:I

    .line 46
    .line 47
    if-eq v4, v5, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_2
    return v2

    .line 54
    :cond_4
    const/4 v0, 0x1

    .line 55
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->e:Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$f;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$f;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->e:Ljava/util/Set;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->h(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->h(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->k(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 3
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->k(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->l(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->m(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public size()I
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [I

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    move-wide v6, v2

    .line 10
    move-wide v8, v6

    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    const/4 v10, 0x2

    .line 13
    if-ge v5, v10, :cond_5

    .line 14
    .line 15
    move-wide v6, v2

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    :goto_1
    array-length v10, v0

    .line 19
    if-ge v8, v10, :cond_0

    .line 20
    .line 21
    aget-object v10, v0, v8

    .line 22
    .line 23
    iget v10, v10, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    .line 24
    .line 25
    int-to-long v10, v10

    .line 26
    add-long/2addr v6, v10

    .line 27
    aget-object v10, v0, v8

    .line 28
    .line 29
    iget v10, v10, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c:I

    .line 30
    .line 31
    aput v10, v1, v8

    .line 32
    .line 33
    add-int/2addr v9, v10

    .line 34
    add-int/lit8 v8, v8, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    if-eqz v9, :cond_3

    .line 38
    .line 39
    move-wide v9, v2

    .line 40
    const/4 v8, 0x0

    .line 41
    :goto_2
    array-length v11, v0

    .line 42
    if-ge v8, v11, :cond_2

    .line 43
    .line 44
    aget-object v11, v0, v8

    .line 45
    .line 46
    iget v11, v11, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    .line 47
    .line 48
    int-to-long v11, v11

    .line 49
    add-long/2addr v9, v11

    .line 50
    aget v11, v1, v8

    .line 51
    .line 52
    aget-object v12, v0, v8

    .line 53
    .line 54
    iget v12, v12, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c:I

    .line 55
    .line 56
    if-eq v11, v12, :cond_1

    .line 57
    .line 58
    const-wide/16 v8, -0x1

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move-wide v8, v9

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move-wide v8, v2

    .line 67
    :goto_3
    cmp-long v10, v8, v6

    .line 68
    .line 69
    if-nez v10, :cond_4

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    :goto_4
    cmp-long v1, v8, v6

    .line 76
    .line 77
    if-eqz v1, :cond_9

    .line 78
    .line 79
    array-length v1, v0

    .line 80
    const/4 v5, 0x0

    .line 81
    :goto_5
    if-ge v5, v1, :cond_6

    .line 82
    .line 83
    aget-object v6, v0, v5

    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_6
    array-length v1, v0

    .line 92
    const/4 v5, 0x0

    .line 93
    :goto_6
    if-ge v5, v1, :cond_7

    .line 94
    .line 95
    aget-object v6, v0, v5

    .line 96
    .line 97
    iget v6, v6, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    .line 98
    .line 99
    int-to-long v6, v6

    .line 100
    add-long/2addr v2, v6

    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_7
    array-length v1, v0

    .line 105
    :goto_7
    if-ge v4, v1, :cond_8

    .line 106
    .line 107
    aget-object v5, v0, v4

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_8
    move-wide v6, v2

    .line 116
    :cond_9
    const-wide/32 v0, 0x7fffffff

    .line 117
    .line 118
    .line 119
    cmp-long v2, v6, v0

    .line 120
    .line 121
    if-lez v2, :cond_a

    .line 122
    .line 123
    const v0, 0x7fffffff

    .line 124
    .line 125
    .line 126
    return v0

    .line 127
    :cond_a
    long-to-int v0, v6

    .line 128
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->g:Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$i;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$i;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->g:Ljava/util/Collection;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method
