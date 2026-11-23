.class public Lorg/aspectj/internal/lang/reflect/j;
.super Lorg/aspectj/internal/lang/reflect/i;
.source "SourceFile"

# interfaces
.implements Lad/p;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Lad/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lad/c<",
            "*>;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lad/c;Lad/c;Ljava/lang/reflect/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lad/c<",
            "*>;",
            "Lad/c<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/aspectj/internal/lang/reflect/i;-><init>(Lad/c;Lad/c;I)V

    .line 6
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/j;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lad/d;->a(Ljava/lang/Class;)Lad/c;

    move-result-object p1

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/j;->f:Lad/c;

    .line 8
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 9
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 10
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lad/d;->a(Ljava/lang/Class;)Lad/c;

    move-result-object p1

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/j;->g:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/j;->g:Ljava/lang/reflect/Type;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lad/c;Ljava/lang/String;ILjava/lang/String;Lad/c;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lad/c<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lad/c<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/internal/lang/reflect/i;-><init>(Lad/c;Ljava/lang/String;I)V

    .line 2
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/j;->e:Ljava/lang/String;

    .line 3
    iput-object p5, p0, Lorg/aspectj/internal/lang/reflect/j;->f:Lad/c;

    .line 4
    iput-object p6, p0, Lorg/aspectj/internal/lang/reflect/j;->g:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/j;->g:Ljava/lang/reflect/Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/j;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lad/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lad/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/j;->f:Lad/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/j;->getType()Lad/c;

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
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/j;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
