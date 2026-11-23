.class public Lorg/aspectj/runtime/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lorg/aspectj/runtime/internal/cflowstack/d;


# instance fields
.field private a:Lorg/aspectj/runtime/internal/cflowstack/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/aspectj/runtime/internal/d;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/aspectj/runtime/internal/d;->b:Lorg/aspectj/runtime/internal/cflowstack/d;

    .line 5
    .line 6
    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/d;->b()Lorg/aspectj/runtime/internal/cflowstack/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/aspectj/runtime/internal/d;->a:Lorg/aspectj/runtime/internal/cflowstack/c;

    .line 11
    .line 12
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    return-object p1
.end method

.method private static c()Lorg/aspectj/runtime/internal/cflowstack/d;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static d()Lorg/aspectj/runtime/internal/cflowstack/d;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private e()Ljava/util/Stack;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/internal/d;->a:Lorg/aspectj/runtime/internal/cflowstack/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/c;->b()Ljava/util/Stack;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/aspectj/runtime/internal/d;->b:Lorg/aspectj/runtime/internal/cflowstack/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static p()V
    .locals 4

    .line 1
    const-string v0, "aspectj.runtime.cflowstack.usethreadlocal"

    .line 2
    .line 3
    const-string v1, "unspecified"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/aspectj/runtime/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v0, "java.class.version"

    .line 18
    .line 19
    const-string v1, "0.0"

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "46.0"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ltz v0, :cond_2

    .line 32
    .line 33
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string v1, "yes"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    const-string v1, "true"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-static {}, Lorg/aspectj/runtime/internal/d;->c()Lorg/aspectj/runtime/internal/cflowstack/d;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lorg/aspectj/runtime/internal/d;->b:Lorg/aspectj/runtime/internal/cflowstack/d;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-static {}, Lorg/aspectj/runtime/internal/d;->d()Lorg/aspectj/runtime/internal/cflowstack/d;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lorg/aspectj/runtime/internal/d;->b:Lorg/aspectj/runtime/internal/cflowstack/d;

    .line 66
    .line 67
    :goto_2
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/d;->i()Lbd/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lbd/a;->a(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    return-object p1
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/d;->e()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/d;->e()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    .line 17
    .line 18
    invoke-direct {v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public i()Lbd/a;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/d;->e()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lbd/a;

    .line 18
    .line 19
    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/d;->i()Lbd/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lbd/a;->b()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public k()Lbd/a;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/d;->e()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lbd/a;

    .line 19
    .line 20
    return-object v0
.end method

.method public l()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/d;->e()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/aspectj/runtime/internal/d;->a:Lorg/aspectj/runtime/internal/cflowstack/c;

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/c;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/d;->e()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n([Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/d;->e()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/aspectj/runtime/internal/c;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lorg/aspectj/runtime/internal/c;-><init>([Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public o(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/d;->e()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lbd/a;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lbd/a;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
