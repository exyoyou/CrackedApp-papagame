.class Lorg/aspectj/runtime/reflect/i;
.super Lorg/aspectj/runtime/reflect/l;
.source "SourceFile"

# interfaces
.implements Lad/r;


# instance fields
.field private m:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 2

    const/16 v0, 0x8

    const-string v1, "lock"

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/aspectj/runtime/reflect/l;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/i;->m:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/reflect/l;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/i;->m:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/l;->v(I)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/aspectj/runtime/reflect/i;->m:Ljava/lang/Class;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/i;->m:Ljava/lang/Class;

    .line 13
    .line 14
    return-object v0
.end method

.method protected r(Lorg/aspectj/runtime/reflect/n;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/i;->m:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/l;->v(I)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/aspectj/runtime/reflect/i;->m:Ljava/lang/Class;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "lock("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/i;->m:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lorg/aspectj/runtime/reflect/n;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    const-string p1, ")"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method
