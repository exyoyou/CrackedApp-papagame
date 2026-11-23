.class public Lorg/aspectj/internal/lang/reflect/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/h;


# instance fields
.field private a:Lad/x;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lad/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLad/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/aspectj/internal/lang/reflect/n;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lorg/aspectj/internal/lang/reflect/n;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/d;->a:Lad/x;

    .line 10
    .line 11
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/d;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean p3, p0, Lorg/aspectj/internal/lang/reflect/d;->c:Z

    .line 14
    .line 15
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/d;->d:Lad/c;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()Lad/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/d;->d:Lad/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lad/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/d;->a:Lad/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/d;->c:Z

    .line 2
    .line 3
    return v0
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
    const-string v1, "declare "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/d;->isError()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "error : "

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "warning : "

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/d;->b()Lad/x;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Lad/x;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    const-string v1, " : "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    const-string v1, "\""

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/d;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
