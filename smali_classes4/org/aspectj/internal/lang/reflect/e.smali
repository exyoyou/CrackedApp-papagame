.class public Lorg/aspectj/internal/lang/reflect/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/i;


# instance fields
.field private a:Lad/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lad/c<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lad/a0;

.field private c:[Ljava/lang/reflect/Type;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLad/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lad/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/e;->g:Z

    .line 6
    .line 7
    new-instance v0, Lorg/aspectj/internal/lang/reflect/s;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/aspectj/internal/lang/reflect/s;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/e;->b:Lad/a0;

    .line 13
    .line 14
    iput-boolean p3, p0, Lorg/aspectj/internal/lang/reflect/e;->f:Z

    .line 15
    .line 16
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/e;->a:Lad/c;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/e;->d:Ljava/lang/String;

    .line 19
    .line 20
    :try_start_0
    invoke-interface {p4}, Lad/c;->H()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p2, p1}, Lorg/aspectj/internal/lang/reflect/q;->a(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/e;->c:[Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lorg/aspectj/internal/lang/reflect/e;->g:Z

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/e;->e:Ljava/lang/String;

    .line 40
    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lad/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/e;->a:Lad/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/e;->f:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public c()[Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/e;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/e;->c:[Ljava/lang/reflect/Type;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/e;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public d()Lad/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/e;->b:Lad/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public isExtends()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/e;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "declare parents : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/e;->d()Lad/a0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lad/a0;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/e;->isExtends()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string v1, " extends "

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, " implements "

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/e;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
