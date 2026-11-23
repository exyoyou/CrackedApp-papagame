.class public Lexternal/org/apache/commons/lang3/builder/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/tuple/Pair<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lexternal/org/apache/commons/lang3/builder/c;->b:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method public static A(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1, p2, v1, v0}, Lexternal/org/apache/commons/lang3/builder/c;->B(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static varargs B(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_6

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_6

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_0
    move-object v1, v2

    .line 46
    :cond_4
    :goto_1
    new-instance v10, Lexternal/org/apache/commons/lang3/builder/c;

    .line 47
    .line 48
    invoke-direct {v10}, Lexternal/org/apache/commons/lang3/builder/c;-><init>()V

    .line 49
    .line 50
    .line 51
    move-object v4, p0

    .line 52
    move-object v5, p1

    .line 53
    move-object v6, v1

    .line 54
    move-object v7, v10

    .line 55
    move v8, p2

    .line 56
    move-object v9, p4

    .line 57
    :try_start_0
    invoke-static/range {v4 .. v9}, Lexternal/org/apache/commons/lang3/builder/c;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/c;Z[Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    if-eq v1, p3, :cond_5

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v2, p0

    .line 73
    move-object v3, p1

    .line 74
    move-object v4, v1

    .line 75
    move-object v5, v10

    .line 76
    move v6, p2

    .line 77
    move-object v7, p4

    .line 78
    invoke-static/range {v2 .. v7}, Lexternal/org/apache/commons/lang3/builder/c;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/c;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    invoke-virtual {v10}, Lexternal/org/apache/commons/lang3/builder/c;->w()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    return p0

    .line 87
    :catch_0
    :cond_6
    :goto_3
    return v0
.end method

.method public static varargs C(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->B(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method static D(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-class v0, Lexternal/org/apache/commons/lang3/builder/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lexternal/org/apache/commons/lang3/builder/c;->b:Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    new-instance v2, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->u(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method static G(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->u(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    const-class p0, Lexternal/org/apache/commons/lang3/builder/c;

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    sget-object p1, Lexternal/org/apache/commons/lang3/builder/c;->b:Ljava/lang/ThreadLocal;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 32
    .line 33
    .line 34
    :cond_0
    monitor-exit p0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method static u(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lexternal/org/apache/commons/lang3/tuple/Pair<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lexternal/org/apache/commons/lang3/builder/e;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method static v()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/tuple/Pair<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/c;->b:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Set;

    .line 8
    .line 9
    return-object v0
.end method

.method static x(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->u(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lexternal/org/apache/commons/lang3/builder/e;

    .line 14
    .line 15
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lexternal/org/apache/commons/lang3/builder/e;

    .line 20
    .line 21
    invoke-static {p1, v1}, Lexternal/org/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    :cond_0
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method

.method private static y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/c;Z[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lexternal/org/apache/commons/lang3/builder/c;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->x(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->D(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    array-length v1, p2

    .line 21
    if-ge v0, v1, :cond_3

    .line 22
    .line 23
    iget-boolean v1, p3, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    aget-object v1, p2, v0

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {p5, v2}, Lexternal/org/apache/commons/lang3/a;->S([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/16 v3, 0x24

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, -0x1

    .line 50
    if-ne v2, v3, :cond_2

    .line 51
    .line 52
    if-nez p4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p3, v2, v1}, Lexternal/org/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    :try_start_2
    new-instance p2, Ljava/lang/InternalError;

    .line 87
    .line 88
    const-string p3, "Unexpected IllegalAccessException"

    .line 89
    .line 90
    invoke-direct {p2, p3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->G(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p2

    .line 102
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->G(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    throw p2
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/f;->t0(Ljava/util/Collection;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->C(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method


# virtual methods
.method public E()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method protected F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public a(BB)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 12
    .line 13
    return-object p0
.end method

.method public b(CC)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/c;->t()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(DD)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 11
    .line 12
    .line 13
    move-result-wide p3

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lexternal/org/apache/commons/lang3/builder/c;->f(JJ)Lexternal/org/apache/commons/lang3/builder/c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public d(FF)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->e(II)Lexternal/org/apache/commons/lang3/builder/c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public e(II)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 12
    .line 13
    return-object p0
.end method

.method public f(JJ)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    cmp-long v0, p1, p3

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 14
    .line 15
    return-object p0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_d

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eq v1, v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_4
    instance-of v0, p1, [J

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    check-cast p1, [J

    .line 54
    .line 55
    check-cast p2, [J

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->o([J[J)Lexternal/org/apache/commons/lang3/builder/c;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    instance-of v0, p1, [I

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    check-cast p1, [I

    .line 66
    .line 67
    check-cast p2, [I

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->n([I[I)Lexternal/org/apache/commons/lang3/builder/c;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_6
    instance-of v0, p1, [S

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    check-cast p1, [S

    .line 78
    .line 79
    check-cast p2, [S

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->q([S[S)Lexternal/org/apache/commons/lang3/builder/c;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_7
    instance-of v0, p1, [C

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    check-cast p1, [C

    .line 90
    .line 91
    check-cast p2, [C

    .line 92
    .line 93
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->k([C[C)Lexternal/org/apache/commons/lang3/builder/c;

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_8
    instance-of v0, p1, [B

    .line 98
    .line 99
    if-eqz v0, :cond_9

    .line 100
    .line 101
    check-cast p1, [B

    .line 102
    .line 103
    check-cast p2, [B

    .line 104
    .line 105
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->j([B[B)Lexternal/org/apache/commons/lang3/builder/c;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_9
    instance-of v0, p1, [D

    .line 110
    .line 111
    if-eqz v0, :cond_a

    .line 112
    .line 113
    check-cast p1, [D

    .line 114
    .line 115
    check-cast p2, [D

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->l([D[D)Lexternal/org/apache/commons/lang3/builder/c;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_a
    instance-of v0, p1, [F

    .line 122
    .line 123
    if-eqz v0, :cond_b

    .line 124
    .line 125
    check-cast p1, [F

    .line 126
    .line 127
    check-cast p2, [F

    .line 128
    .line 129
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->m([F[F)Lexternal/org/apache/commons/lang3/builder/c;

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_b
    instance-of v0, p1, [Z

    .line 134
    .line 135
    if-eqz v0, :cond_c

    .line 136
    .line 137
    check-cast p1, [Z

    .line 138
    .line 139
    check-cast p2, [Z

    .line 140
    .line 141
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->r([Z[Z)Lexternal/org/apache/commons/lang3/builder/c;

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_c
    check-cast p1, [Ljava/lang/Object;

    .line 146
    .line 147
    check-cast p2, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->p([Ljava/lang/Object;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;

    .line 150
    .line 151
    .line 152
    :goto_0
    return-object p0

    .line 153
    :cond_d
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 154
    .line 155
    .line 156
    return-object p0
.end method

.method public h(SS)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 12
    .line 13
    return-object p0
.end method

.method public i(ZZ)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 12
    .line 13
    return-object p0
.end method

.method public j([B[B)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    array-length v1, p1

    .line 16
    array-length v2, p2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    array-length v1, p1

    .line 24
    if-ge v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget-byte v1, p1, v0

    .line 31
    .line 32
    aget-byte v2, p2, v0

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->a(BB)Lexternal/org/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-object p0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public k([C[C)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    array-length v1, p1

    .line 16
    array-length v2, p2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    array-length v1, p1

    .line 24
    if-ge v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget-char v1, p1, v0

    .line 31
    .line 32
    aget-char v2, p2, v0

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->b(CC)Lexternal/org/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-object p0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public l([D[D)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    array-length v1, p1

    .line 16
    array-length v2, p2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    array-length v1, p1

    .line 24
    if-ge v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget-wide v1, p1, v0

    .line 31
    .line 32
    aget-wide v3, p2, v0

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/c;->c(DD)Lexternal/org/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-object p0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public m([F[F)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    array-length v1, p1

    .line 16
    array-length v2, p2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    array-length v1, p1

    .line 24
    if-ge v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget v1, p1, v0

    .line 31
    .line 32
    aget v2, p2, v0

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->d(FF)Lexternal/org/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-object p0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public n([I[I)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    array-length v1, p1

    .line 16
    array-length v2, p2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    array-length v1, p1

    .line 24
    if-ge v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget v1, p1, v0

    .line 31
    .line 32
    aget v2, p2, v0

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->e(II)Lexternal/org/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-object p0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public o([J[J)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    array-length v1, p1

    .line 16
    array-length v2, p2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    array-length v1, p1

    .line 24
    if-ge v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget-wide v1, p1, v0

    .line 31
    .line 32
    aget-wide v3, p2, v0

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/c;->f(JJ)Lexternal/org/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-object p0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public p([Ljava/lang/Object;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    array-length v1, p1

    .line 16
    array-length v2, p2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    array-length v1, p1

    .line 24
    if-ge v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget-object v1, p1, v0

    .line 31
    .line 32
    aget-object v2, p2, v0

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-object p0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public q([S[S)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    array-length v1, p1

    .line 16
    array-length v2, p2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    array-length v1, p1

    .line 24
    if-ge v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget-short v1, p1, v0

    .line 31
    .line 32
    aget-short v2, p2, v0

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->h(SS)Lexternal/org/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-object p0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public r([Z[Z)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    array-length v1, p1

    .line 16
    array-length v2, p2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    array-length v1, p1

    .line 24
    if-ge v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget-boolean v1, p1, v0

    .line 31
    .line 32
    aget-boolean v2, p2, v0

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->i(ZZ)Lexternal/org/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-object p0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public s(Z)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 7
    .line 8
    return-object p0
.end method

.method public t()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/c;->w()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    .line 2
    .line 3
    return v0
.end method
