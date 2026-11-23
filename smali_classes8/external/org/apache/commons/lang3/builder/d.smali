.class public Lexternal/org/apache/commons/lang3/builder/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:I


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
    sput-object v0, Lexternal/org/apache/commons/lang3/builder/d;->c:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x25

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    const/16 v0, 0x11

    .line 3
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    if-eqz p1, :cond_3

    .line 6
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 7
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 8
    iput p2, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires an odd initial value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static A(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/builder/f;->t0(Ljava/util/Collection;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->C(Ljava/lang/Object;[Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static B(Ljava/lang/Object;Z)I
    .locals 6

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/16 v1, 0x25

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v5, v2, [Ljava/lang/String;

    .line 8
    .line 9
    move-object v2, p0

    .line 10
    move v3, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/d;->z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static varargs C(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/16 v1, 0x25

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v2, p0

    .line 8
    move-object v5, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/d;->z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method static D(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-class v0, Lexternal/org/apache/commons/lang3/builder/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lexternal/org/apache/commons/lang3/builder/d;->c:Ljava/lang/ThreadLocal;

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
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lexternal/org/apache/commons/lang3/builder/e;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method static F(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v1, Lexternal/org/apache/commons/lang3/builder/e;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const-class p0, Lexternal/org/apache/commons/lang3/builder/d;

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/d;->c:Ljava/lang/ThreadLocal;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 33
    .line 34
    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v0

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method static u()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/d;->c:Ljava/lang/ThreadLocal;

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

.method static v(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lexternal/org/apache/commons/lang3/builder/e;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method private static w(Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/d;Z[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lexternal/org/apache/commons/lang3/builder/d;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/d;->v(Ljava/lang/Object;)Z

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
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/d;->D(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 17
    .line 18
    .line 19
    array-length v0, p1

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_3

    .line 22
    .line 23
    aget-object v2, p1, v1

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {p4, v3}, Lexternal/org/apache/commons/lang3/a;->S([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/16 v4, 0x24

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, -0x1

    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    if-nez p3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 65
    .line 66
    .line 67
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p2, v2}, Lexternal/org/apache/commons/lang3/builder/d;->g(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/InternalError;

    .line 79
    .line 80
    const-string p2, "Unexpected IllegalAccessException"

    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/d;->F(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/d;->F(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public static x(IILjava/lang/Object;)I
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v5, v0, [Ljava/lang/String;

    .line 5
    .line 6
    move v0, p0

    .line 7
    move v1, p1

    .line 8
    move-object v2, p2

    .line 9
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/d;->z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static y(IILjava/lang/Object;Z)I
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    new-array v5, v0, [Ljava/lang/String;

    .line 4
    .line 5
    move v0, p0

    .line 6
    move v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v3, p3

    .line 9
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/d;->z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static varargs z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/d;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p2, p0, v0, p3, p5}, Lexternal/org/apache/commons/lang3/builder/d;->w(Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/d;Z[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    if-eq p0, p4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p2, p0, v0, p3, p5}, Lexternal/org/apache/commons/lang3/builder/d;->w(Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/d;Z[Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/d;->E()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string p1, "The object to build a hash code for must not be null"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method


# virtual methods
.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public a(B)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    add-int/2addr v0, p1

    .line 8
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 9
    .line 10
    return-object p0
.end method

.method public b(C)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    add-int/2addr v0, p1

    .line 8
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/d;->t()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(D)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/d;->f(J)Lexternal/org/apache/commons/lang3/builder/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d(F)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/2addr v0, p1

    .line 12
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 13
    .line 14
    return-object p0
.end method

.method public e(I)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    add-int/2addr v0, p1

    .line 8
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 9
    .line 10
    return-object p0
.end method

.method public f(J)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    shr-long v1, p1, v1

    .line 10
    .line 11
    xor-long/2addr p1, v1

    .line 12
    long-to-int p2, p1

    .line 13
    add-int/2addr v0, p2

    .line 14
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 15
    .line 16
    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_9

    .line 22
    .line 23
    instance-of v0, p1, [J

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, [J

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->o([J)Lexternal/org/apache/commons/lang3/builder/d;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of v0, p1, [I

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p1, [I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->n([I)Lexternal/org/apache/commons/lang3/builder/d;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    instance-of v0, p1, [S

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    check-cast p1, [S

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->q([S)Lexternal/org/apache/commons/lang3/builder/d;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    instance-of v0, p1, [C

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    check-cast p1, [C

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->k([C)Lexternal/org/apache/commons/lang3/builder/d;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    instance-of v0, p1, [B

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    check-cast p1, [B

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->j([B)Lexternal/org/apache/commons/lang3/builder/d;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    instance-of v0, p1, [D

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    check-cast p1, [D

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->l([D)Lexternal/org/apache/commons/lang3/builder/d;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    instance-of v0, p1, [F

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    check-cast p1, [F

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->m([F)Lexternal/org/apache/commons/lang3/builder/d;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_7
    instance-of v0, p1, [Z

    .line 94
    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    check-cast p1, [Z

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->r([Z)Lexternal/org/apache/commons/lang3/builder/d;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->p([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_9
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 110
    .line 111
    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 112
    .line 113
    mul-int v0, v0, v1

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    add-int/2addr v0, p1

    .line 120
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 121
    .line 122
    :goto_0
    return-object p0
.end method

.method public h(S)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    add-int/2addr v0, p1

    .line 8
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 9
    .line 10
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/d;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public i(Z)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 11
    .line 12
    return-object p0
.end method

.method public j([B)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-byte v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->a(B)Lexternal/org/apache/commons/lang3/builder/d;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    return-object p0
.end method

.method public k([C)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-char v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->b(C)Lexternal/org/apache/commons/lang3/builder/d;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    return-object p0
.end method

.method public l([D)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-wide v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2, v3}, Lexternal/org/apache/commons/lang3/builder/d;->c(D)Lexternal/org/apache/commons/lang3/builder/d;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    return-object p0
.end method

.method public m([F)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->d(F)Lexternal/org/apache/commons/lang3/builder/d;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    return-object p0
.end method

.method public n([I)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->e(I)Lexternal/org/apache/commons/lang3/builder/d;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    return-object p0
.end method

.method public o([J)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-wide v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2, v3}, Lexternal/org/apache/commons/lang3/builder/d;->f(J)Lexternal/org/apache/commons/lang3/builder/d;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    return-object p0
.end method

.method public p([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-object v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->g(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    return-object p0
.end method

.method public q([S)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-short v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->h(S)Lexternal/org/apache/commons/lang3/builder/d;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    return-object p0
.end method

.method public r([Z)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 4
    .line 5
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-boolean v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->i(Z)Lexternal/org/apache/commons/lang3/builder/d;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    return-object p0
.end method

.method public s(I)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    add-int/2addr v0, p1

    .line 8
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    .line 9
    .line 10
    return-object p0
.end method

.method public t()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/d;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
