.class public Lorg/aspectj/internal/lang/reflect/k;
.super Lorg/aspectj/internal/lang/reflect/i;
.source "SourceFile"

# interfaces
.implements Lad/q;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/reflect/Method;

.field private g:I

.field private h:[Lad/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lad/c<",
            "*>;"
        }
    .end annotation
.end field

.field private i:[Ljava/lang/reflect/Type;

.field private j:Lad/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lad/c<",
            "*>;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/reflect/Type;

.field private l:[Lad/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lad/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lad/c;Lad/c;Ljava/lang/reflect/Method;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lad/c<",
            "*>;",
            "Lad/c<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p4}, Lorg/aspectj/internal/lang/reflect/i;-><init>(Lad/c;Lad/c;I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lorg/aspectj/internal/lang/reflect/k;->g:I

    .line 7
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/k;->e:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lorg/aspectj/internal/lang/reflect/k;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Lad/c;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lad/c<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/internal/lang/reflect/i;-><init>(Lad/c;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lorg/aspectj/internal/lang/reflect/k;->g:I

    .line 3
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/k;->e:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lorg/aspectj/internal/lang/reflect/k;->f:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/k;->f:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/Class;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Class;

    .line 12
    .line 13
    invoke-static {v0}, Lad/d;->a(Ljava/lang/Class;)Lad/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    return-object v0
.end method

.method public c()[Lad/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lad/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/k;->f:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    iget v2, p0, Lorg/aspectj/internal/lang/reflect/k;->g:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    new-array v1, v1, [Lad/c;

    .line 12
    .line 13
    :goto_0
    array-length v3, v0

    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    iget v3, p0, Lorg/aspectj/internal/lang/reflect/k;->g:I

    .line 17
    .line 18
    sub-int v3, v2, v3

    .line 19
    .line 20
    aget-object v4, v0, v2

    .line 21
    .line 22
    invoke-static {v4}, Lad/d;->a(Ljava/lang/Class;)Lad/c;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    aput-object v4, v1, v3

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v1
.end method

.method public e()[Lad/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lad/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/k;->f:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    new-array v1, v1, [Lad/c;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    array-length v3, v0

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-static {v3}, Lad/d;->a(Ljava/lang/Class;)Lad/c;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    aput-object v3, v1, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object v1
.end method

.method public f()[Ljava/lang/reflect/Type;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/k;->f:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    iget v2, p0, Lorg/aspectj/internal/lang/reflect/k;->g:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    new-array v1, v1, [Lad/c;

    .line 12
    .line 13
    :goto_0
    array-length v3, v0

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    instance-of v4, v3, Ljava/lang/Class;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    iget v4, p0, Lorg/aspectj/internal/lang/reflect/k;->g:I

    .line 23
    .line 24
    sub-int v4, v2, v4

    .line 25
    .line 26
    check-cast v3, Ljava/lang/Class;

    .line 27
    .line 28
    invoke-static {v3}, Lad/d;->a(Ljava/lang/Class;)Lad/c;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    aput-object v3, v1, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget v4, p0, Lorg/aspectj/internal/lang/reflect/k;->g:I

    .line 36
    .line 37
    sub-int v4, v2, v4

    .line 38
    .line 39
    aput-object v3, v1, v4

    .line 40
    .line 41
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/k;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReturnType()Lad/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lad/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/k;->f:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lad/d;->a(Ljava/lang/Class;)Lad/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/k;->f:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/i;->d()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, " "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/k;->getReturnType()Lad/c;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/i;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    const-string v1, "."

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/k;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    const-string v1, "("

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/k;->c()[Lad/c;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x0

    .line 63
    :goto_0
    array-length v3, v1

    .line 64
    add-int/lit8 v3, v3, -0x1

    .line 65
    .line 66
    if-ge v2, v3, :cond_0

    .line 67
    .line 68
    aget-object v3, v1, v2

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    const-string v3, ", "

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    array-length v2, v1

    .line 86
    if-lez v2, :cond_1

    .line 87
    .line 88
    array-length v2, v1

    .line 89
    add-int/lit8 v2, v2, -0x1

    .line 90
    .line 91
    aget-object v1, v1, v2

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    .line 99
    .line 100
    :cond_1
    const-string v1, ")"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    return-object v0
.end method
