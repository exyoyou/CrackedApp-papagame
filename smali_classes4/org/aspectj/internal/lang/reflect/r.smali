.class public Lorg/aspectj/internal/lang/reflect/r;
.super Lorg/aspectj/internal/lang/reflect/l;
.source "SourceFile"

# interfaces
.implements Lad/b0;


# instance fields
.field private b:Lad/a0;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/l;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/aspectj/internal/lang/reflect/s;

    .line 5
    .line 6
    invoke-direct {p1, p2}, Lorg/aspectj/internal/lang/reflect/s;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/r;->b:Lad/a0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c()Lad/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/r;->b:Lad/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pertypewithin("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/r;->b:Lad/a0;

    .line 12
    .line 13
    invoke-interface {v1}, Lad/a0;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ")"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
