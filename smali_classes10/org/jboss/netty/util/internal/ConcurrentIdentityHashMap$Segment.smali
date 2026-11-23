.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4845ed18d1b49dffL


# instance fields
.field volatile transient b:I

.field c:I

.field d:I

.field volatile transient e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final f:F


# direct methods
.method constructor <init>(IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->f:F

    .line 5
    .line 6
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->n([Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static f(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-array p0, p0, [Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/Object;I)Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    sub-int/2addr v1, v2

    .line 10
    and-int/2addr v1, p2

    .line 11
    aget-object v1, v0, v1

    .line 12
    .line 13
    iget-object v3, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 14
    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->a(Ljava/lang/Object;I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v0, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 25
    .line 26
    if-ne v0, p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    iget-object v1, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method b(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_3

    .line 11
    .line 12
    aget-object v4, v0, v3

    .line 13
    .line 14
    :goto_1
    if-eqz v4, :cond_2

    .line 15
    .line 16
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->i(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_1
    iget-object v4, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 41
    .line 42
    if-eq v2, v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_4
    return v1
.end method

.method c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    and-int/2addr v1, p2

    .line 11
    aget-object v1, v0, v1

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget v0, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 25
    .line 26
    if-ne v0, p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_1
    invoke-virtual {p0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->i(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_2
    iget-object v1, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method clear()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, v0

    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v3, v0, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->c:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->c:I

    .line 26
    .line 27
    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    :goto_1
    return-void
.end method

.method d(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 5
    .line 6
    and-int/2addr p1, v1

    .line 7
    aget-object p1, v0, p1

    .line 8
    .line 9
    return-object p1
.end method

.method g(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c<",
            "TK;TV;>;TV;)",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;-><init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method h(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    .line 5
    .line 6
    add-int/lit8 v1, v0, 0x1

    .line 7
    .line 8
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->d:I

    .line 9
    .line 10
    if-le v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->j()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    sub-int/2addr v1, v0

    .line 19
    add-int/lit8 v0, v1, -0x1

    .line 20
    .line 21
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 24
    .line 25
    array-length v2, v0

    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    and-int/2addr v2, p2

    .line 29
    aget-object v3, v0, v2

    .line 30
    .line 31
    move-object v4, v3

    .line 32
    :goto_0
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget v5, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 35
    .line 36
    if-ne v5, p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {p1, v5}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    :cond_1
    iget-object v4, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p4, :cond_4

    .line 58
    .line 59
    invoke-virtual {v4, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->c(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget p4, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->c:I

    .line 64
    .line 65
    add-int/lit8 p4, p4, 0x1

    .line 66
    .line 67
    iput p4, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->c:I

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->g(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    aput-object p1, v0, v2

    .line 74
    .line 75
    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method i(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method j()I
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/high16 v2, 0x40000000    # 2.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    return v3

    .line 10
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    invoke-static {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    array-length v2, v1

    .line 17
    int-to-float v2, v2

    .line 18
    iget v4, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->f:F

    .line 19
    .line 20
    mul-float v2, v2, v4

    .line 21
    .line 22
    float-to-int v2, v2

    .line 23
    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->d:I

    .line 24
    .line 25
    array-length v2, v1

    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    array-length v4, v0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-ge v3, v4, :cond_6

    .line 31
    .line 32
    aget-object v6, v0, v3

    .line 33
    .line 34
    if-eqz v6, :cond_5

    .line 35
    .line 36
    iget-object v7, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 37
    .line 38
    iget v8, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 39
    .line 40
    and-int/2addr v8, v2

    .line 41
    if-nez v7, :cond_1

    .line 42
    .line 43
    aput-object v6, v1, v8

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_1
    move-object v9, v6

    .line 47
    :goto_1
    if-eqz v7, :cond_3

    .line 48
    .line 49
    iget v10, v7, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 50
    .line 51
    and-int/2addr v10, v2

    .line 52
    if-eq v10, v8, :cond_2

    .line 53
    .line 54
    move-object v9, v7

    .line 55
    move v8, v10

    .line 56
    :cond_2
    iget-object v7, v7, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    aput-object v9, v1, v8

    .line 60
    .line 61
    :goto_2
    if-eq v6, v9, :cond_5

    .line 62
    .line 63
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-nez v7, :cond_4

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    iget v8, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 73
    .line 74
    and-int v10, v8, v2

    .line 75
    .line 76
    aget-object v11, v1, v10

    .line 77
    .line 78
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-virtual {p0, v7, v8, v11, v12}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->g(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    aput-object v7, v1, v10

    .line 87
    .line 88
    :goto_3
    iget-object v6, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return v5
.end method

.method k(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    and-int/2addr v2, p2

    .line 14
    aget-object v3, v1, v2

    .line 15
    .line 16
    move-object v4, v3

    .line 17
    :goto_0
    if-eqz v4, :cond_1

    .line 18
    .line 19
    iget-object v5, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a:Ljava/lang/Object;

    .line 20
    .line 21
    if-eq p1, v5, :cond_1

    .line 22
    .line 23
    if-nez p4, :cond_0

    .line 24
    .line 25
    iget v5, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 26
    .line 27
    if-ne p2, v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {p1, v5}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    :cond_0
    iget-object v4, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eqz v4, :cond_5

    .line 43
    .line 44
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_5

    .line 55
    .line 56
    :cond_2
    iget p2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->c:I

    .line 57
    .line 58
    add-int/lit8 p2, p2, 0x1

    .line 59
    .line 60
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->c:I

    .line 61
    .line 62
    iget-object p2, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 63
    .line 64
    :goto_1
    if-eq v3, v4, :cond_4

    .line 65
    .line 66
    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    if-nez p3, :cond_3

    .line 71
    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget p4, v3, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 76
    .line 77
    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {p0, p3, p4, p2, v5}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->g(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    :goto_2
    iget-object v3, v3, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    aput-object p2, v1, v2

    .line 89
    .line 90
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const/4 p1, 0x0

    .line 94
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method l(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->d(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 11
    .line 12
    if-ne v1, p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method m(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->d(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 11
    .line 12
    if-ne v1, p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, p4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 p1, 0x0

    .line 45
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    .line 47
    .line 48
    return p1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method n([Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    int-to-float v0, v0

    .line 3
    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->f:F

    .line 4
    .line 5
    mul-float v0, v0, v1

    .line 6
    .line 7
    float-to-int v0, v0

    .line 8
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->d:I

    .line 9
    .line 10
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 11
    .line 12
    return-void
.end method
