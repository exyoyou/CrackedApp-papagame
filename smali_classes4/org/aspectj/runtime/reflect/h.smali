.class Lorg/aspectj/runtime/reflect/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/runtime/reflect/h$a;,
        Lorg/aspectj/runtime/reflect/h$b;
    }
.end annotation


# instance fields
.field n:Ljava/lang/Object;

.field o:Ljava/lang/Object;

.field p:[Ljava/lang/Object;

.field q:Lorg/aspectj/lang/c$b;

.field private r:Lorg/aspectj/runtime/internal/a;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/h;->q:Lorg/aspectj/lang/c$b;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/aspectj/runtime/reflect/h;->n:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/aspectj/runtime/reflect/h;->o:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/aspectj/runtime/reflect/h;->p:[Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->r:Lorg/aspectj/runtime/internal/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/aspectj/runtime/internal/a;->c()[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/internal/a;->f([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->q:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/aspectj/lang/c$b;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->n:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lorg/aspectj/runtime/internal/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/h;->r:Lorg/aspectj/runtime/internal/a;

    .line 2
    .line 3
    return-void
.end method

.method public e()Lorg/aspectj/lang/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->q:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->q:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/aspectj/lang/c$b;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g()Lad/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->q:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/aspectj/lang/c$b;->g()Lad/z;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->p:[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/aspectj/runtime/reflect/h;->p:[Ljava/lang/Object;

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->p:[Ljava/lang/Object;

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    array-length v3, v0

    .line 16
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    return-object v2
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->q:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/aspectj/lang/c$b;->getKind()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->o:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lorg/aspectj/lang/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->q:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/aspectj/lang/c$b;->h()Lorg/aspectj/lang/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->r:Lorg/aspectj/runtime/internal/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/aspectj/runtime/internal/a;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/high16 v1, 0x10000

    .line 12
    .line 13
    and-int/2addr v1, v0

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    and-int/lit16 v4, v0, 0x1000

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 v4, 0x0

    .line 28
    :goto_1
    and-int/lit16 v5, v0, 0x100

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    goto :goto_2

    .line 34
    :cond_3
    const/4 v5, 0x0

    .line 35
    :goto_2
    and-int/lit8 v6, v0, 0x10

    .line 36
    .line 37
    if-eqz v6, :cond_4

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    goto :goto_3

    .line 41
    :cond_4
    const/4 v6, 0x0

    .line 42
    :goto_3
    and-int/2addr v0, v2

    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_4

    .line 47
    :cond_5
    const/4 v0, 0x0

    .line 48
    :goto_4
    iget-object v7, p0, Lorg/aspectj/runtime/reflect/h;->r:Lorg/aspectj/runtime/internal/a;

    .line 49
    .line 50
    invoke-virtual {v7}, Lorg/aspectj/runtime/internal/a;->c()[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    add-int/lit8 v8, v4, 0x0

    .line 55
    .line 56
    if-eqz v6, :cond_6

    .line 57
    .line 58
    if-nez v1, :cond_6

    .line 59
    .line 60
    const/4 v9, 0x1

    .line 61
    goto :goto_5

    .line 62
    :cond_6
    const/4 v9, 0x0

    .line 63
    :goto_5
    add-int/2addr v8, v9

    .line 64
    if-eqz v4, :cond_7

    .line 65
    .line 66
    if-eqz v5, :cond_7

    .line 67
    .line 68
    aget-object v9, p1, v3

    .line 69
    .line 70
    aput-object v9, v7, v3

    .line 71
    .line 72
    goto :goto_6

    .line 73
    :cond_7
    const/4 v2, 0x0

    .line 74
    :goto_6
    if-eqz v6, :cond_9

    .line 75
    .line 76
    if-eqz v0, :cond_9

    .line 77
    .line 78
    if-eqz v1, :cond_8

    .line 79
    .line 80
    add-int/lit8 v2, v5, 0x1

    .line 81
    .line 82
    aget-object v0, p1, v5

    .line 83
    .line 84
    aput-object v0, v7, v3

    .line 85
    .line 86
    goto :goto_7

    .line 87
    :cond_8
    add-int/lit8 v2, v4, 0x1

    .line 88
    .line 89
    aget-object v0, p1, v4

    .line 90
    .line 91
    aput-object v0, v7, v4

    .line 92
    .line 93
    :cond_9
    :goto_7
    move v0, v2

    .line 94
    :goto_8
    array-length v1, p1

    .line 95
    if-ge v0, v1, :cond_a

    .line 96
    .line 97
    sub-int v1, v0, v2

    .line 98
    .line 99
    add-int/2addr v1, v8

    .line 100
    aget-object v3, p1, v0

    .line 101
    .line 102
    aput-object v3, v7, v1

    .line 103
    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 105
    .line 106
    goto :goto_8

    .line 107
    :cond_a
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/h;->r:Lorg/aspectj/runtime/internal/a;

    .line 108
    .line 109
    invoke-virtual {p1, v7}, Lorg/aspectj/runtime/internal/a;->f([Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/h;->q:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
