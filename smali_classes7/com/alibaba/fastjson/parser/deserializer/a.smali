.class public Lcom/alibaba/fastjson/parser/deserializer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/asm/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/deserializer/a$a;
    }
.end annotation


# static fields
.field private static final b1:Lcom/alibaba/fastjson/parser/deserializer/a;


# instance fields
.field private final Z0:Lcom/alibaba/fastjson/util/a;

.field private final a1:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/a;->b1:Lcom/alibaba/fastjson/parser/deserializer/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/a;->a1:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Lcom/alibaba/fastjson/util/a;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/a;->Z0:Lcom/alibaba/fastjson/util/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/a;->a1:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    new-instance v0, Lcom/alibaba/fastjson/util/a;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/util/a;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/a;->Z0:Lcom/alibaba/fastjson/util/a;

    return-void
.end method

.method public static final B()Lcom/alibaba/fastjson/parser/deserializer/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/a;->b1:Lcom/alibaba/fastjson/parser/deserializer/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private a(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/a;->b(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private b(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_2

    .line 11
    .line 12
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 15
    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p2, p1, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/a;->o(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/deserializer/a$a;ILcom/alibaba/fastjson/asm/f;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/alibaba/fastjson/util/e;

    .line 31
    .line 32
    invoke-direct {p0, p1, p2, v3}, Lcom/alibaba/fastjson/parser/deserializer/a;->p(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 33
    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method private c(Lcom/alibaba/fastjson/asm/b;Lcom/alibaba/fastjson/parser/deserializer/a$a;)V
    .locals 6

    .line 1
    const/4 v1, 0x1

    .line 2
    const-string v2, "createInstance"

    .line 3
    .line 4
    const-string v3, "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, p1

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0xbb

    .line 22
    .line 23
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x59

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v0, "<init>"

    .line 40
    .line 41
    const-string v1, "()V"

    .line 42
    .line 43
    const/16 v2, 0xb7

    .line 44
    .line 45
    invoke-interface {p1, v2, p2, v0, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 p2, 0xb0

    .line 49
    .line 50
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 51
    .line 52
    .line 53
    const/4 p2, 0x3

    .line 54
    invoke-interface {p1, p2, p2}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private d(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->a()Lcom/alibaba/fastjson/util/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/d;->f()Ljava/lang/reflect/Constructor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "instance"

    .line 18
    .line 19
    const/16 v2, 0x3a

    .line 20
    .line 21
    const/16 v3, 0xb7

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/16 v4, 0xbb

    .line 34
    .line 35
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x59

    .line 39
    .line 40
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v4, "<init>"

    .line 52
    .line 53
    const-string v5, "()V"

    .line 54
    .line 55
    invoke-interface {p2, v3, v0, v4, v5}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-interface {p2, v2, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    const/16 v4, 0x19

    .line 68
    .line 69
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 74
    .line 75
    .line 76
    const-string v0, "createInstance"

    .line 77
    .line 78
    const-string v4, "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;"

    .line 79
    .line 80
    const-string v5, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer"

    .line 81
    .line 82
    invoke-interface {p2, v3, v5, v0, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/16 v3, 0xc0

    .line 94
    .line 95
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-interface {p2, v2, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void
.end method

.method private e(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/a$a;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->l(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Ljava/lang/Class;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "getFieldType"

    .line 46
    .line 47
    const-string v1, "(Ljava/lang/String;)Ljava/lang/reflect/Type;"

    .line 48
    .line 49
    const/16 v2, 0xb6

    .line 50
    .line 51
    const-string v3, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer"

    .line 52
    .line 53
    invoke-interface {p2, v2, v3, v0, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "deserialze"

    .line 64
    .line 65
    const-string v1, "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 66
    .line 67
    const/16 v2, 0xb9

    .line 68
    .line 69
    const-string v3, "com/alibaba/fastjson/parser/deserializer/ObjectDeserializer"

    .line 70
    .line 71
    invoke-interface {p2, v2, v3, v0, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/16 v0, 0xc0

    .line 75
    .line 76
    invoke-static {p4}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-interface {p2, v0, p4}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance p4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p3, "_asm"

    .line 96
    .line 97
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    const/16 p3, 0x3a

    .line 109
    .line 110
    invoke-interface {p2, p3, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private f(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/asm/f;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "matchedCount"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x15

    .line 13
    .line 14
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->i(II)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x9e

    .line 18
    .line 19
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "lexer"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v3, 0x19

    .line 29
    .line 30
    invoke-interface {p2, v3, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 31
    .line 32
    .line 33
    const-string v2, "token"

    .line 34
    .line 35
    const-string v4, "()I"

    .line 36
    .line 37
    const/16 v5, 0xb6

    .line 38
    .line 39
    const-string v6, "com/alibaba/fastjson/parser/JSONLexerBase"

    .line 40
    .line 41
    invoke-interface {p2, v5, v6, v2, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v2, 0xb2

    .line 45
    .line 46
    const-string v4, "com/alibaba/fastjson/parser/JSONToken"

    .line 47
    .line 48
    const-string v7, "RBRACE"

    .line 49
    .line 50
    const-string v8, "I"

    .line 51
    .line 52
    invoke-interface {p2, v2, v4, v7, v8}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/16 v7, 0xa0

    .line 56
    .line 57
    invoke-interface {p2, v7, p3}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-interface {p2, v3, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 65
    .line 66
    .line 67
    const-string p1, "COMMA"

    .line 68
    .line 69
    invoke-interface {p2, v2, v4, p1, v8}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p1, "nextToken"

    .line 73
    .line 74
    const-string p3, "(I)V"

    .line 75
    .line 76
    invoke-interface {p2, v5, v6, p1, p3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private i(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/asm/f;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/a$a;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/asm/f;",
            "Lcom/alibaba/fastjson/util/e;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 10
    .line 11
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 15
    .line 16
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v6, "matchField"

    .line 20
    .line 21
    const-string v7, "([C)Z"

    .line 22
    .line 23
    const/16 v8, 0xb6

    .line 24
    .line 25
    const-string v9, "com/alibaba/fastjson/parser/JSONLexerBase"

    .line 26
    .line 27
    invoke-interface {v2, v8, v9, v6, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 v6, 0x9a

    .line 31
    .line 32
    invoke-interface {v2, v6, v4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 33
    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v10, "_asm"

    .line 52
    .line 53
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    const/16 v11, 0x3a

    .line 65
    .line 66
    invoke-interface {v2, v11, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 67
    .line 68
    .line 69
    const/16 v7, 0xa7

    .line 70
    .line 71
    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 75
    .line 76
    .line 77
    move/from16 v4, p7

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a;->t(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/deserializer/a$a;I)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 83
    .line 84
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v12, "lexer"

    .line 88
    .line 89
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const/16 v14, 0x19

    .line 94
    .line 95
    invoke-interface {v2, v14, v13}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 96
    .line 97
    .line 98
    const-string v13, "token"

    .line 99
    .line 100
    const-string v15, "()I"

    .line 101
    .line 102
    invoke-interface {v2, v8, v9, v13, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/16 v7, 0xb2

    .line 106
    .line 107
    const-string v11, "com/alibaba/fastjson/parser/JSONToken"

    .line 108
    .line 109
    const-string v6, "NULL"

    .line 110
    .line 111
    const-string v8, "I"

    .line 112
    .line 113
    invoke-interface {v2, v7, v11, v6, v8}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/16 v6, 0xa0

    .line 117
    .line 118
    invoke-interface {v2, v6, v4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-interface {v2, v14, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 126
    .line 127
    .line 128
    const-string v6, "COMMA"

    .line 129
    .line 130
    invoke-interface {v2, v7, v11, v6, v8}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v7, "nextToken"

    .line 134
    .line 135
    const-string v14, "(I)V"

    .line 136
    .line 137
    move-object/from16 v16, v5

    .line 138
    .line 139
    const/16 v5, 0xb6

    .line 140
    .line 141
    invoke-interface {v2, v5, v9, v7, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 v5, 0x1

    .line 145
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 146
    .line 147
    .line 148
    const/16 v5, 0xc0

    .line 149
    .line 150
    move-object/from16 v17, v6

    .line 151
    .line 152
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-interface {v2, v5, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    const/16 v6, 0x3a

    .line 183
    .line 184
    invoke-interface {v2, v6, v5}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    const/16 v5, 0x19

    .line 195
    .line 196
    invoke-interface {v2, v5, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 197
    .line 198
    .line 199
    const/16 v4, 0xb6

    .line 200
    .line 201
    invoke-interface {v2, v4, v9, v13, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v4, "LBRACKET"

    .line 205
    .line 206
    const/16 v5, 0xb2

    .line 207
    .line 208
    invoke-interface {v2, v5, v11, v4, v8}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const/16 v4, 0xa0

    .line 212
    .line 213
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 214
    .line 215
    .line 216
    move-object/from16 v4, p4

    .line 217
    .line 218
    move-object/from16 v5, p6

    .line 219
    .line 220
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/a;->k(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;)V

    .line 221
    .line 222
    .line 223
    const-string v6, "com/alibaba/fastjson/parser/deserializer/ObjectDeserializer"

    .line 224
    .line 225
    const-string v4, "getFastMatchToken"

    .line 226
    .line 227
    const/16 v5, 0xb9

    .line 228
    .line 229
    invoke-interface {v2, v5, v6, v4, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v4, "fastMatchToken"

    .line 233
    .line 234
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    const/16 v5, 0x36

    .line 239
    .line 240
    invoke-interface {v2, v5, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    const/16 v6, 0x19

    .line 248
    .line 249
    invoke-interface {v2, v6, v5}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    const/16 v6, 0x15

    .line 257
    .line 258
    invoke-interface {v2, v6, v5}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 259
    .line 260
    .line 261
    const/16 v5, 0xb6

    .line 262
    .line 263
    invoke-interface {v2, v5, v9, v7, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    move-object/from16 v5, p5

    .line 267
    .line 268
    invoke-direct {v0, v2, v5}, Lcom/alibaba/fastjson/parser/deserializer/a;->q(Lcom/alibaba/fastjson/asm/g;Ljava/lang/Class;)V

    .line 269
    .line 270
    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    const/16 v6, 0x3a

    .line 295
    .line 296
    invoke-interface {v2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 297
    .line 298
    .line 299
    const/4 v0, 0x1

    .line 300
    const/16 v6, 0x19

    .line 301
    .line 302
    invoke-interface {v2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 303
    .line 304
    .line 305
    const-string v0, "getContext"

    .line 306
    .line 307
    const-string v6, "()Lcom/alibaba/fastjson/parser/ParseContext;"

    .line 308
    .line 309
    const-string v5, "com/alibaba/fastjson/parser/DefaultJSONParser"

    .line 310
    .line 311
    const/16 v3, 0xb6

    .line 312
    .line 313
    invoke-interface {v2, v3, v5, v0, v6}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const-string v0, "listContext"

    .line 317
    .line 318
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    const/16 v3, 0x3a

    .line 323
    .line 324
    invoke-interface {v2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 325
    .line 326
    .line 327
    const/4 v0, 0x1

    .line 328
    const/16 v3, 0x19

    .line 329
    .line 330
    invoke-interface {v2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 331
    .line 332
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    invoke-interface {v2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 357
    .line 358
    .line 359
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    const-string v0, "setContext"

    .line 367
    .line 368
    const-string v3, "(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;"

    .line 369
    .line 370
    const/16 v6, 0xb6

    .line 371
    .line 372
    invoke-interface {v2, v6, v5, v0, v3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const/16 v0, 0x57

    .line 376
    .line 377
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 378
    .line 379
    .line 380
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 381
    .line 382
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 383
    .line 384
    .line 385
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    .line 386
    .line 387
    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 388
    .line 389
    .line 390
    const/4 v6, 0x3

    .line 391
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 392
    .line 393
    .line 394
    const-string v6, "i"

    .line 395
    .line 396
    move-object/from16 v18, v7

    .line 397
    .line 398
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    move-result v7

    .line 402
    move-object/from16 v19, v14

    .line 403
    .line 404
    const/16 v14, 0x36

    .line 405
    .line 406
    invoke-interface {v2, v14, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 407
    .line 408
    .line 409
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    const/16 v14, 0x19

    .line 417
    .line 418
    invoke-interface {v2, v14, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 419
    .line 420
    .line 421
    const/16 v7, 0xb6

    .line 422
    .line 423
    invoke-interface {v2, v7, v9, v13, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    const-string v7, "RBRACKET"

    .line 427
    .line 428
    const/16 v14, 0xb2

    .line 429
    .line 430
    invoke-interface {v2, v14, v11, v7, v8}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    const/16 v7, 0x9f

    .line 434
    .line 435
    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 436
    .line 437
    .line 438
    const/4 v7, 0x0

    .line 439
    const/16 v14, 0x19

    .line 440
    .line 441
    invoke-interface {v2, v14, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 442
    .line 443
    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    new-instance v14, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    move-object/from16 v20, v3

    .line 454
    .line 455
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v3, "_asm_list_item_deser__"

    .line 463
    .line 464
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    const-string v14, "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"

    .line 472
    .line 473
    move-object/from16 v21, v4

    .line 474
    .line 475
    const/16 v4, 0xb4

    .line 476
    .line 477
    invoke-interface {v2, v4, v7, v3, v14}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    const/4 v3, 0x1

    .line 481
    const/16 v4, 0x19

    .line 482
    .line 483
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 484
    .line 485
    .line 486
    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-static {v3}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    const/16 v4, 0x15

    .line 502
    .line 503
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 504
    .line 505
    .line 506
    const-string v3, "valueOf"

    .line 507
    .line 508
    const-string v4, "(I)Ljava/lang/Integer;"

    .line 509
    .line 510
    const/16 v7, 0xb8

    .line 511
    .line 512
    const-string v14, "java/lang/Integer"

    .line 513
    .line 514
    invoke-interface {v2, v7, v14, v3, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    const-string v3, "deserialze"

    .line 518
    .line 519
    const-string v4, "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 520
    .line 521
    const-string v7, "com/alibaba/fastjson/parser/deserializer/ObjectDeserializer"

    .line 522
    .line 523
    const/16 v14, 0xb9

    .line 524
    .line 525
    invoke-interface {v2, v14, v7, v3, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    const-string v3, "list_item_value"

    .line 529
    .line 530
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    const/16 v4, 0x3a

    .line 535
    .line 536
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    const/4 v4, 0x1

    .line 544
    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson/asm/g;->h(II)V

    .line 545
    .line 546
    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .line 551
    .line 552
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    const/16 v4, 0x19

    .line 571
    .line 572
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 573
    .line 574
    .line 575
    const-string v3, "list_item_value"

    .line 576
    .line 577
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 582
    .line 583
    .line 584
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-eqz v3, :cond_0

    .line 589
    .line 590
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    const-string v4, "add"

    .line 595
    .line 596
    const-string v6, "(Ljava/lang/Object;)Z"

    .line 597
    .line 598
    const/16 v7, 0xb9

    .line 599
    .line 600
    invoke-interface {v2, v7, v3, v4, v6}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    goto :goto_0

    .line 604
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    const-string v4, "add"

    .line 609
    .line 610
    const-string v6, "(Ljava/lang/Object;)Z"

    .line 611
    .line 612
    const/16 v7, 0xb6

    .line 613
    .line 614
    invoke-interface {v2, v7, v3, v4, v6}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    :goto_0
    const/16 v3, 0x57

    .line 618
    .line 619
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 620
    .line 621
    .line 622
    const/4 v3, 0x1

    .line 623
    const/16 v4, 0x19

    .line 624
    .line 625
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 626
    .line 627
    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v6

    .line 637
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 652
    .line 653
    .line 654
    const-string v3, "checkListResolve"

    .line 655
    .line 656
    const-string v6, "(Ljava/util/Collection;)V"

    .line 657
    .line 658
    const/16 v7, 0xb6

    .line 659
    .line 660
    invoke-interface {v2, v7, v5, v3, v6}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 668
    .line 669
    .line 670
    invoke-interface {v2, v7, v9, v13, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    move-object/from16 v6, v17

    .line 674
    .line 675
    const/16 v3, 0xb2

    .line 676
    .line 677
    invoke-interface {v2, v3, v11, v6, v8}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    const/16 v3, 0xa0

    .line 681
    .line 682
    invoke-interface {v2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    move-result v3

    .line 689
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 690
    .line 691
    .line 692
    move-object/from16 v3, v21

    .line 693
    .line 694
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    const/16 v10, 0x15

    .line 699
    .line 700
    invoke-interface {v2, v10, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 701
    .line 702
    .line 703
    move-object/from16 v3, v18

    .line 704
    .line 705
    move-object/from16 v10, v19

    .line 706
    .line 707
    invoke-interface {v2, v7, v9, v3, v10}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    const/16 v14, 0xa7

    .line 711
    .line 712
    invoke-interface {v2, v14, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 713
    .line 714
    .line 715
    move-object/from16 v0, v20

    .line 716
    .line 717
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 718
    .line 719
    .line 720
    const/4 v0, 0x1

    .line 721
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 722
    .line 723
    .line 724
    const-string v0, "listContext"

    .line 725
    .line 726
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 731
    .line 732
    .line 733
    const-string v0, "setContext"

    .line 734
    .line 735
    const-string v14, "(Lcom/alibaba/fastjson/parser/ParseContext;)V"

    .line 736
    .line 737
    invoke-interface {v2, v7, v5, v0, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 745
    .line 746
    .line 747
    invoke-interface {v2, v7, v9, v13, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    const-string v0, "RBRACKET"

    .line 751
    .line 752
    const/16 v5, 0xb2

    .line 753
    .line 754
    invoke-interface {v2, v5, v11, v0, v8}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    move-object/from16 v0, p3

    .line 758
    .line 759
    const/16 v13, 0xa0

    .line 760
    .line 761
    invoke-interface {v2, v13, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 765
    .line 766
    .line 767
    move-result v0

    .line 768
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 769
    .line 770
    .line 771
    invoke-interface {v2, v5, v11, v6, v8}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    invoke-interface {v2, v7, v9, v3, v10}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    move-object/from16 v0, v16

    .line 778
    .line 779
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 780
    .line 781
    .line 782
    return-void
.end method

.method private j(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/asm/f;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/a$a;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/asm/f;",
            "Lcom/alibaba/fastjson/util/e;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    new-instance p3, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "lexer"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x19

    .line 18
    .line 19
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v5, "_asm_prefix__"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "[C"

    .line 52
    .line 53
    const/16 v6, 0xb4

    .line 54
    .line 55
    invoke-interface {p2, v6, v3, v4, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v3, "matchField"

    .line 59
    .line 60
    const-string v4, "([C)Z"

    .line 61
    .line 62
    const/16 v5, 0xb6

    .line 63
    .line 64
    const-string v6, "com/alibaba/fastjson/parser/JSONLexerBase"

    .line 65
    .line 66
    invoke-interface {p2, v5, v6, v3, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/16 v3, 0x9a

    .line 70
    .line 71
    invoke-interface {p2, v3, p3}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 72
    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v6, "_asm"

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const/16 v6, 0x3a

    .line 104
    .line 105
    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 106
    .line 107
    .line 108
    const/16 v4, 0xa7

    .line 109
    .line 110
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p2, p3}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p2, p1, p6}, Lcom/alibaba/fastjson/parser/deserializer/a;->t(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/deserializer/a$a;I)V

    .line 117
    .line 118
    .line 119
    const-string p3, "matchedCount"

    .line 120
    .line 121
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result p6

    .line 125
    const/16 v4, 0x15

    .line 126
    .line 127
    invoke-interface {p2, v4, p6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 128
    .line 129
    .line 130
    const/4 p6, 0x4

    .line 131
    invoke-interface {p2, p6}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 132
    .line 133
    .line 134
    const/16 p6, 0x60

    .line 135
    .line 136
    invoke-interface {p2, p6}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 137
    .line 138
    .line 139
    const/16 p6, 0x36

    .line 140
    .line 141
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    invoke-interface {p2, p6, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/a;->e(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 152
    .line 153
    .line 154
    const-string p3, "getResolveStatus"

    .line 155
    .line 156
    const-string p5, "()I"

    .line 157
    .line 158
    const-string p6, "com/alibaba/fastjson/parser/DefaultJSONParser"

    .line 159
    .line 160
    invoke-interface {p2, v5, p6, p3, p5}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/16 p3, 0xb2

    .line 164
    .line 165
    const-string p5, "NeedToResolve"

    .line 166
    .line 167
    const-string v4, "I"

    .line 168
    .line 169
    invoke-interface {p2, p3, p6, p5, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const/16 p5, 0xa0

    .line 173
    .line 174
    invoke-interface {p2, p5, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 178
    .line 179
    .line 180
    const-string p5, "getLastResolveTask"

    .line 181
    .line 182
    const-string v7, "()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;"

    .line 183
    .line 184
    invoke-interface {p2, v5, p6, p5, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string p5, "resolveTask"

    .line 188
    .line 189
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    invoke-interface {p2, v2, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 204
    .line 205
    .line 206
    const-string v6, "getContext"

    .line 207
    .line 208
    const-string v7, "()Lcom/alibaba/fastjson/parser/ParseContext;"

    .line 209
    .line 210
    invoke-interface {p2, v5, p6, v6, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-string v6, "setOwnerContext"

    .line 214
    .line 215
    const-string v7, "(Lcom/alibaba/fastjson/parser/ParseContext;)V"

    .line 216
    .line 217
    const-string v8, "com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask"

    .line 218
    .line 219
    invoke-interface {p2, v5, v8, v6, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-interface {p2, v2, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 227
    .line 228
    .line 229
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    const-string p1, "getFieldDeserializer"

    .line 240
    .line 241
    const-string p4, "(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"

    .line 242
    .line 243
    const-string p5, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer"

    .line 244
    .line 245
    invoke-interface {p2, v5, p5, p1, p4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string p1, "setFieldDeserializer"

    .line 249
    .line 250
    const-string p4, "(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V"

    .line 251
    .line 252
    invoke-interface {p2, v5, v8, p1, p4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 256
    .line 257
    .line 258
    const-string p1, "NONE"

    .line 259
    .line 260
    invoke-interface {p2, p3, p6, p1, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string p1, "setResolveStatus"

    .line 264
    .line 265
    const-string p3, "(I)V"

    .line 266
    .line 267
    invoke-interface {p2, v5, p6, p1, p3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method

.method private k(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/a$a;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v5, "_asm_list_item_deser__"

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/16 v6, 0xb4

    .line 38
    .line 39
    const-string v7, "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"

    .line 40
    .line 41
    invoke-interface {p2, v6, v3, v4, v7}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v3, 0xc7

    .line 45
    .line 46
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 54
    .line 55
    .line 56
    const-string v3, "getConfig"

    .line 57
    .line 58
    const-string v4, "()Lcom/alibaba/fastjson/parser/ParserConfig;"

    .line 59
    .line 60
    const/16 v8, 0xb6

    .line 61
    .line 62
    const-string v9, "com/alibaba/fastjson/parser/DefaultJSONParser"

    .line 63
    .line 64
    invoke-interface {p2, v8, v9, v3, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-static {p4}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-interface {p2, p4}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const-string p4, "getDeserializer"

    .line 79
    .line 80
    const-string v3, "(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"

    .line 81
    .line 82
    const-string v4, "com/alibaba/fastjson/parser/ParserConfig"

    .line 83
    .line 84
    invoke-interface {p2, v8, v4, p4, v3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const/16 v4, 0xb5

    .line 111
    .line 112
    invoke-interface {p2, v4, p4, v3, v7}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance p4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-interface {p2, v6, p1, p3, v7}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private l(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v5, "_asm_deser__"

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/16 v6, 0xb4

    .line 38
    .line 39
    const-string v7, "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"

    .line 40
    .line 41
    invoke-interface {p2, v6, v3, v4, v7}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v3, 0xc7

    .line 45
    .line 46
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 54
    .line 55
    .line 56
    const-string v3, "getConfig"

    .line 57
    .line 58
    const-string v4, "()Lcom/alibaba/fastjson/parser/ParserConfig;"

    .line 59
    .line 60
    const/16 v8, 0xb6

    .line 61
    .line 62
    const-string v9, "com/alibaba/fastjson/parser/DefaultJSONParser"

    .line 63
    .line 64
    invoke-interface {p2, v8, v9, v3, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const-string v3, "getDeserializer"

    .line 83
    .line 84
    const-string v4, "(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"

    .line 85
    .line 86
    const-string v9, "com/alibaba/fastjson/parser/ParserConfig"

    .line 87
    .line 88
    invoke-interface {p2, v8, v9, v3, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const/16 v8, 0xb5

    .line 115
    .line 116
    invoke-interface {p2, v8, v3, v4, v7}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-interface {p2, v6, p1, p3, v7}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method private m(Lcom/alibaba/fastjson/asm/b;Lcom/alibaba/fastjson/parser/deserializer/a$a;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const-string v3, "[C"

    .line 12
    .line 13
    const-string v4, "_asm_prefix__"

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    check-cast v6, Lcom/alibaba/fastjson/util/e;

    .line 27
    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p1, v5, v4, v3}, Lcom/alibaba/fastjson/asm/b;->p(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/c;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Lcom/alibaba/fastjson/asm/c;->a()V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v2, 0x0

    .line 66
    :goto_1
    if-ge v2, v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Lcom/alibaba/fastjson/util/e;

    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const-class v8, Ljava/util/Collection;

    .line 97
    .line 98
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    const-string v8, "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"

    .line 103
    .line 104
    if-eqz v7, :cond_3

    .line 105
    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v6, "_asm_list_item_deser__"

    .line 119
    .line 120
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {p1, v5, v6, v8}, Lcom/alibaba/fastjson/asm/b;->p(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/c;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-interface {v6}, Lcom/alibaba/fastjson/asm/c;->a()V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v6, "_asm_deser__"

    .line 148
    .line 149
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {p1, v5, v6, v8}, Lcom/alibaba/fastjson/asm/b;->p(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/c;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-interface {v6}, Lcom/alibaba/fastjson/asm/c;->a()V

    .line 161
    .line 162
    .line 163
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    const/4 v7, 0x1

    .line 167
    const-string v8, "<init>"

    .line 168
    .line 169
    const-string v9, "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V"

    .line 170
    .line 171
    const/4 v10, 0x0

    .line 172
    const/4 v11, 0x0

    .line 173
    move-object v6, p1

    .line 174
    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const/16 v0, 0x19

    .line 179
    .line 180
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 181
    .line 182
    .line 183
    invoke-interface {p1, v0, v5}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 184
    .line 185
    .line 186
    const/4 v2, 0x2

    .line 187
    invoke-interface {p1, v0, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 188
    .line 189
    .line 190
    const-string v2, "<init>"

    .line 191
    .line 192
    const-string v5, "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V"

    .line 193
    .line 194
    const/16 v6, 0xb7

    .line 195
    .line 196
    const-string v7, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer"

    .line 197
    .line 198
    invoke-interface {p1, v6, v7, v2, v5}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 202
    .line 203
    .line 204
    const-string v2, "serializer"

    .line 205
    .line 206
    const-string v5, "Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;"

    .line 207
    .line 208
    const/16 v6, 0xb4

    .line 209
    .line 210
    invoke-interface {p1, v6, v7, v2, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-string v2, "getFieldDeserializerMap"

    .line 214
    .line 215
    const-string v5, "()Ljava/util/Map;"

    .line 216
    .line 217
    const/16 v6, 0xb6

    .line 218
    .line 219
    const-string v7, "com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer"

    .line 220
    .line 221
    invoke-interface {p1, v6, v7, v2, v5}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const/16 v2, 0x57

    .line 225
    .line 226
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    const/4 v5, 0x0

    .line 238
    :goto_3
    if-ge v5, v2, :cond_5

    .line 239
    .line 240
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    check-cast v7, Lcom/alibaba/fastjson/util/e;

    .line 249
    .line 250
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 251
    .line 252
    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v9, "\""

    .line 259
    .line 260
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v9, "\":"

    .line 271
    .line 272
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-interface {p1, v8}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    const-string v8, "toCharArray"

    .line 283
    .line 284
    const-string v9, "()[C"

    .line 285
    .line 286
    const-string v10, "java/lang/String"

    .line 287
    .line 288
    invoke-interface {p1, v6, v10, v8, v9}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    new-instance v9, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    const/16 v9, 0xb5

    .line 315
    .line 316
    invoke-interface {p1, v9, v8, v7, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    add-int/lit8 v5, v5, 0x1

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_5
    const/16 p2, 0xb1

    .line 323
    .line 324
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 325
    .line 326
    .line 327
    const/4 p2, 0x4

    .line 328
    invoke-interface {p1, p2, p2}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 329
    .line 330
    .line 331
    invoke-interface {p1}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 332
    .line 333
    .line 334
    return-void
.end method

.method private n(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/Feature;)V
    .locals 2

    .line 1
    const-string v0, "lexer"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x19

    .line 8
    .line 9
    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p3, "Lcom/alibaba/fastjson/parser/Feature;"

    .line 17
    .line 18
    const/16 v0, 0xb2

    .line 19
    .line 20
    const-string v1, "com/alibaba/fastjson/parser/Feature"

    .line 21
    .line 22
    invoke-interface {p2, v0, v1, p1, p3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "isEnabled"

    .line 26
    .line 27
    const-string p3, "(Lcom/alibaba/fastjson/parser/Feature;)Z"

    .line 28
    .line 29
    const/16 v0, 0xb6

    .line 30
    .line 31
    const-string v1, "com/alibaba/fastjson/parser/JSONLexerBase"

    .line 32
    .line 33
    invoke-interface {p2, v0, v1, p1, p3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private p(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    const/16 v3, 0x15

    .line 12
    .line 13
    const-string v4, "instance"

    .line 14
    .line 15
    const-string v5, "_asm"

    .line 16
    .line 17
    const/16 v6, 0x19

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->r(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    if-eq v0, v2, :cond_a

    .line 62
    .line 63
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    if-eq v0, v2, :cond_a

    .line 66
    .line 67
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    if-eq v0, v2, :cond_a

    .line 70
    .line 71
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    if-ne v0, v2, :cond_1

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    const/4 v3, 0x2

    .line 80
    if-ne v0, v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->g(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/16 v1, 0x16

    .line 113
    .line 114
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const/16 v2, 0xb6

    .line 148
    .line 149
    invoke-interface {p2, v2, p1, v0, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 161
    .line 162
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_b

    .line 167
    .line 168
    const/16 p1, 0x57

    .line 169
    .line 170
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_2

    .line 174
    .line 175
    :cond_2
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->h()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->i()Ljava/lang/reflect/Field;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-static {p3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p3

    .line 199
    const/16 v1, 0xb5

    .line 200
    .line 201
    invoke-interface {p2, v1, p1, v0, p3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :cond_3
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 207
    .line 208
    if-ne v0, v2, :cond_4

    .line 209
    .line 210
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 215
    .line 216
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    const/16 v1, 0x17

    .line 241
    .line 242
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 243
    .line 244
    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->r(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_2

    .line 249
    .line 250
    :cond_4
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 251
    .line 252
    if-ne v0, v2, :cond_5

    .line 253
    .line 254
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 259
    .line 260
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p1, v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->g(Ljava/lang/String;I)I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    const/16 v1, 0x18

    .line 285
    .line 286
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 287
    .line 288
    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->r(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_2

    .line 293
    .line 294
    :cond_5
    const-class v2, Ljava/lang/String;

    .line 295
    .line 296
    if-ne v0, v2, :cond_6

    .line 297
    .line 298
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 303
    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 329
    .line 330
    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->r(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-eqz v3, :cond_7

    .line 341
    .line 342
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 347
    .line 348
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 373
    .line 374
    .line 375
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->r(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_2

    .line 379
    .line 380
    :cond_7
    const-class v3, Ljava/util/Collection;

    .line 381
    .line 382
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-eqz v3, :cond_9

    .line 387
    .line 388
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 393
    .line 394
    .line 395
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->y(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-ne v1, v2, :cond_8

    .line 400
    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 425
    .line 426
    .line 427
    const/16 v1, 0xc0

    .line 428
    .line 429
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto :goto_0

    .line 437
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 461
    .line 462
    .line 463
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->r(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 464
    .line 465
    .line 466
    goto :goto_2

    .line 467
    :cond_9
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 472
    .line 473
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 498
    .line 499
    .line 500
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->r(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 501
    .line 502
    .line 503
    goto :goto_2

    .line 504
    :cond_a
    :goto_1
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 509
    .line 510
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 535
    .line 536
    .line 537
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->r(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V

    .line 538
    .line 539
    .line 540
    :cond_b
    :goto_2
    return-void
.end method

.method private q(Lcom/alibaba/fastjson/asm/g;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/asm/g;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "()V"

    .line 8
    .line 9
    const-string v2, "<init>"

    .line 10
    .line 11
    const/16 v3, 0xb7

    .line 12
    .line 13
    const/16 v4, 0x59

    .line 14
    .line 15
    const/16 v5, 0xbb

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "java/util/ArrayList"

    .line 20
    .line 21
    invoke-interface {p1, v5, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-class v0, Ljava/util/LinkedList;

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-interface {p1, v5, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-class v0, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-interface {p1, v5, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-class v0, Ljava/util/TreeSet;

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-interface {p1, v5, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {p1, v5, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    const/16 v0, 0xc0

    .line 127
    .line 128
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private r(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->h()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/16 v2, 0xb6

    .line 32
    .line 33
    invoke-interface {p2, v2, p1, v0, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    const/16 p1, 0x57

    .line 53
    .line 54
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->h()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->i()Ljava/lang/reflect/Field;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-static {p3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    const/16 v1, 0xb5

    .line 83
    .line 84
    invoke-interface {p2, v1, p1, v0, p3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method private s(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x19

    .line 3
    .line 4
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 5
    .line 6
    .line 7
    const-string v0, "context"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 14
    .line 15
    .line 16
    const-string v0, "setContext"

    .line 17
    .line 18
    const-string v2, "(Lcom/alibaba/fastjson/parser/ParseContext;)V"

    .line 19
    .line 20
    const/16 v3, 0xb6

    .line 21
    .line 22
    const-string v4, "com/alibaba/fastjson/parser/DefaultJSONParser"

    .line 23
    .line 24
    invoke-interface {p2, v3, v4, v0, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "childContext"

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 39
    .line 40
    .line 41
    const/16 v4, 0xc6

    .line 42
    .line 43
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 51
    .line 52
    .line 53
    const-string v2, "instance"

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-interface {p2, v1, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 60
    .line 61
    .line 62
    const-string p1, "setObject"

    .line 63
    .line 64
    const-string v1, "(Ljava/lang/Object;)V"

    .line 65
    .line 66
    const-string v2, "com/alibaba/fastjson/parser/ParseContext"

    .line 67
    .line 68
    invoke-interface {p2, v3, v2, p1, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private x(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V
    .locals 4

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 5
    .line 6
    .line 7
    const-string v0, "getLexer"

    .line 8
    .line 9
    const-string v1, "()Lcom/alibaba/fastjson/parser/JSONLexer;"

    .line 10
    .line 11
    const/16 v2, 0xb6

    .line 12
    .line 13
    const-string v3, "com/alibaba/fastjson/parser/DefaultJSONParser"

    .line 14
    .line 15
    invoke-interface {p2, v2, v3, v0, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0xc0

    .line 19
    .line 20
    const-string v1, "com/alibaba/fastjson/parser/JSONLexerBase"

    .line 21
    .line 22
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "lexer"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v0, 0x3a

    .line 32
    .line 33
    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private y(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    aget-object p1, p1, v0

    .line 13
    .line 14
    instance-of v0, p1, Ljava/lang/Class;

    .line 15
    .line 16
    const-string v1, "can not create ASMParser"

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/asm/ASMException;

    .line 34
    .line 35
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/asm/ASMException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/asm/ASMException;

    .line 40
    .line 41
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/asm/ASMException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    const-class p1, Ljava/lang/Object;

    .line 46
    .line 47
    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/e;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Fastjson_ASM__Field_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "_"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/a;->a1:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public C(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/a;->Z0:Lcom/alibaba/fastjson/util/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/a;->c(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method g(Lcom/alibaba/fastjson/asm/b;Lcom/alibaba/fastjson/parser/deserializer/a$a;)V
    .locals 32

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/e;

    .line 3
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 5
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    return-void

    .line 6
    :cond_2
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 8
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v10

    .line 9
    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 10
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x1

    const-string v3, "deserialze"

    const-string v4, "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    move-result-object v11

    .line 12
    new-instance v12, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 13
    new-instance v13, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 14
    new-instance v14, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 15
    new-instance v15, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 16
    invoke-direct {v8, v9, v11}, Lcom/alibaba/fastjson/parser/deserializer/a;->x(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V

    .line 17
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-direct {v8, v9, v11, v0}, Lcom/alibaba/fastjson/parser/deserializer/a;->n(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/Feature;)V

    const/16 v0, 0x99

    .line 18
    invoke-interface {v11, v0, v13}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 19
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    const/16 v7, 0x19

    .line 20
    invoke-interface {v11, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v6, "lexer"

    .line 21
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v7, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v2, "isSupportArrayToBean"

    const-string v3, "(Lcom/alibaba/fastjson/parser/JSONLexer;)Z"

    const/16 v5, 0xb7

    const-string v4, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer"

    .line 22
    invoke-interface {v11, v5, v4, v2, v3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {v11, v0, v1}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 24
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v7, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v2, "token"

    const-string v3, "()I"

    const/16 v4, 0xb6

    const-string v0, "com/alibaba/fastjson/parser/JSONLexerBase"

    .line 25
    invoke-interface {v11, v4, v0, v2, v3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com/alibaba/fastjson/parser/JSONToken"

    const-string v3, "LBRACKET"

    const/16 v4, 0xb2

    const-string v5, "I"

    .line 26
    invoke-interface {v11, v4, v2, v3, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa0

    .line 27
    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 28
    invoke-interface {v11, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v3, 0x1

    .line 29
    invoke-interface {v11, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v2, 0x2

    .line 30
    invoke-interface {v11, v7, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v10, 0x3

    .line 31
    invoke-interface {v11, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v10, "deserialzeArrayMapping"

    const-string v3, "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 v4, 0xb7

    invoke-interface {v11, v4, v2, v10, v3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xb0

    .line 33
    invoke-interface {v11, v10}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 34
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 35
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v7, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    const-string v1, "scanType"

    const-string v2, "(Ljava/lang/String;)I"

    const/16 v3, 0xb6

    .line 37
    invoke-interface {v11, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NOT_MATCH"

    const/16 v2, 0xb2

    .line 38
    invoke-interface {v11, v2, v0, v1, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9f

    .line 39
    invoke-interface {v11, v2, v13}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v1, 0x1

    .line 40
    invoke-interface {v11, v7, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v1, "getContext"

    const-string v4, "()Lcom/alibaba/fastjson/parser/ParseContext;"

    const-string v10, "com/alibaba/fastjson/parser/DefaultJSONParser"

    .line 41
    invoke-interface {v11, v3, v10, v1, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mark_context"

    .line 42
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x3a

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x3

    .line 43
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    const-string v1, "matchedCount"

    .line 44
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x36

    invoke-interface {v11, v3, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 45
    invoke-direct {v8, v9, v11}, Lcom/alibaba/fastjson/parser/deserializer/a;->d(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V

    const/4 v1, 0x1

    .line 46
    invoke-interface {v11, v7, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v3, "getContext"

    const-string v2, "()Lcom/alibaba/fastjson/parser/ParseContext;"

    const/16 v1, 0xb6

    .line 47
    invoke-interface {v11, v1, v10, v3, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "context"

    .line 48
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x1

    .line 49
    invoke-interface {v11, v7, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v1, "context"

    .line 50
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v7, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v1, "instance"

    .line 51
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v7, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x3

    .line 52
    invoke-interface {v11, v7, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v1, "setContext"

    const-string v2, "(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;"

    const/16 v3, 0xb6

    .line 53
    invoke-interface {v11, v3, v10, v1, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "childContext"

    .line 54
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 55
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v7, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/16 v3, 0xb4

    const-string v2, "matchStat"

    .line 56
    invoke-interface {v11, v3, v0, v2, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "END"

    const/16 v3, 0xb2

    .line 57
    invoke-interface {v11, v3, v0, v1, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9f

    .line 58
    invoke-interface {v11, v1, v14}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v1, 0x3

    .line 59
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 60
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x36

    invoke-interface {v11, v4, v3}, Lcom/alibaba/fastjson/asm/g;->i(II)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_5

    .line 62
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_asm_flag_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v7, v3, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x36

    invoke-interface {v11, v7, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    add-int/lit8 v3, v3, 0x20

    const/4 v1, 0x3

    const/16 v7, 0x19

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_2
    const-string v7, "_asm"

    if-ge v1, v4, :cond_c

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/util/e;

    move-object/from16 v25, v13

    .line 65
    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v26, v14

    .line 66
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v13, v14, :cond_b

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v13, v14, :cond_b

    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v13, v14, :cond_b

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_6

    goto/16 :goto_5

    .line 67
    :cond_6
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_7

    const/16 v13, 0x9

    .line 68
    invoke-interface {v11, v13}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 69
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    invoke-virtual {v9, v3, v7}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->g(Ljava/lang/String;I)I

    move-result v3

    const/16 v7, 0x37

    invoke-interface {v11, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    :goto_3
    move-object/from16 v28, v12

    move-object/from16 v27, v15

    goto/16 :goto_6

    .line 70
    :cond_7
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_8

    const/16 v13, 0xb

    .line 71
    invoke-interface {v11, v13}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 72
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x38

    invoke-interface {v11, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto :goto_3

    .line 73
    :cond_8
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_9

    const/16 v13, 0xe

    .line 74
    invoke-interface {v11, v13}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 75
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    invoke-virtual {v9, v3, v7}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->g(Ljava/lang/String;I)I

    move-result v3

    const/16 v7, 0x39

    invoke-interface {v11, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto :goto_3

    .line 76
    :cond_9
    const-class v14, Ljava/lang/String;

    if-ne v13, v14, :cond_a

    .line 77
    new-instance v14, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    move-object/from16 v27, v15

    .line 78
    sget-object v15, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    invoke-direct {v8, v9, v11, v15}, Lcom/alibaba/fastjson/parser/deserializer/a;->n(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/Feature;)V

    const/16 v15, 0x99

    .line 79
    invoke-interface {v11, v15, v14}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 80
    invoke-virtual {v8, v11, v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->t(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/deserializer/a$a;I)V

    .line 81
    invoke-interface {v11, v14}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 82
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0x19

    invoke-interface {v11, v15, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v14, "stringDefaultValue"

    const-string v15, "()Ljava/lang/String;"

    move-object/from16 v28, v12

    const/16 v12, 0xb6

    .line 83
    invoke-interface {v11, v12, v0, v14, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object/from16 v28, v12

    move-object/from16 v27, v15

    const/4 v12, 0x1

    .line 84
    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    :goto_4
    const/16 v12, 0xc0

    .line 85
    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 86
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x3a

    invoke-interface {v11, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto :goto_6

    :cond_b
    :goto_5
    move-object/from16 v28, v12

    move-object/from16 v27, v15

    const/4 v12, 0x3

    .line 87
    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 88
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x36

    invoke-interface {v11, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move-object/from16 v12, v28

    goto/16 :goto_2

    :cond_c
    move-object/from16 v28, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v4, :cond_1b

    .line 89
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/alibaba/fastjson/util/e;

    .line 90
    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    move-result-object v14

    .line 91
    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 92
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 93
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move/from16 p1, v4

    const-string v4, "[C"

    move/from16 v29, v12

    const-string v12, "_asm_prefix__"

    if-ne v14, v15, :cond_d

    .line 94
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v14, 0x19

    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x0

    .line 95
    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xb4

    invoke-interface {v11, v14, v1, v12, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scanFieldBoolean"

    const-string v4, "([C)Z"

    const/16 v12, 0xb6

    .line 97
    invoke-interface {v11, v12, v0, v1, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x36

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    :goto_8
    move-object/from16 v30, v2

    :goto_9
    move-object/from16 v31, v10

    const/16 v4, 0xb6

    const/16 v12, 0x3a

    goto/16 :goto_a

    .line 99
    :cond_d
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_e

    .line 100
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v14, 0x19

    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x0

    .line 101
    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xb4

    invoke-interface {v11, v14, v1, v12, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scanFieldInt"

    const-string v4, "([C)I"

    const/16 v12, 0xb6

    .line 103
    invoke-interface {v11, v12, v0, v1, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x36

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto :goto_8

    .line 105
    :cond_e
    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_f

    .line 106
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v14, 0x19

    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x0

    .line 107
    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xb4

    invoke-interface {v11, v14, v1, v12, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scanFieldInt"

    const-string v4, "([C)I"

    const/16 v12, 0xb6

    .line 109
    invoke-interface {v11, v12, v0, v1, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x36

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto/16 :goto_8

    .line 111
    :cond_f
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_10

    .line 112
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v14, 0x19

    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x0

    .line 113
    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xb4

    invoke-interface {v11, v14, v1, v12, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scanFieldInt"

    const-string v4, "([C)I"

    const/16 v12, 0xb6

    .line 115
    invoke-interface {v11, v12, v0, v1, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x36

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto/16 :goto_8

    .line 117
    :cond_10
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_11

    .line 118
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v14, 0x19

    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x0

    .line 119
    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xb4

    invoke-interface {v11, v14, v1, v12, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scanFieldLong"

    const-string v4, "([C)J"

    const/16 v12, 0xb6

    .line 121
    invoke-interface {v11, v12, v0, v1, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v9, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->g(Ljava/lang/String;I)I

    move-result v1

    const/16 v4, 0x37

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto/16 :goto_8

    .line 123
    :cond_11
    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_12

    .line 124
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v14, 0x19

    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x0

    .line 125
    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xb4

    invoke-interface {v11, v14, v1, v12, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scanFieldFloat"

    const-string v4, "([C)F"

    const/16 v12, 0xb6

    .line 127
    invoke-interface {v11, v12, v0, v1, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x38

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto/16 :goto_8

    .line 129
    :cond_12
    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_13

    .line 130
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v14, 0x19

    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x0

    .line 131
    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xb4

    invoke-interface {v11, v14, v1, v12, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scanFieldDouble"

    const-string v4, "([C)D"

    const/16 v12, 0xb6

    .line 133
    invoke-interface {v11, v12, v0, v1, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x2

    invoke-virtual {v9, v1, v15}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->g(Ljava/lang/String;I)I

    move-result v1

    const/16 v4, 0x39

    invoke-interface {v11, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto/16 :goto_8

    .line 135
    :cond_13
    const-class v15, Ljava/lang/String;

    if-ne v14, v15, :cond_14

    .line 136
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    const/16 v14, 0x15

    .line 137
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v14, v15}, Lcom/alibaba/fastjson/asm/g;->i(II)V

    const/4 v14, 0x7

    .line 138
    invoke-interface {v11, v14}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    const/16 v14, 0xa0

    .line 139
    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 140
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0x19

    invoke-interface {v11, v15, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v14, "stringDefaultValue"

    const-string v15, "()Ljava/lang/String;"

    move-object/from16 v30, v2

    const/16 v2, 0xb6

    .line 141
    invoke-interface {v11, v2, v0, v14, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v2

    const/16 v14, 0x3a

    invoke-interface {v11, v14, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/16 v2, 0xa7

    .line 143
    invoke-interface {v11, v2, v3}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 144
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 145
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x0

    .line 146
    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0xb4

    invoke-interface {v11, v12, v1, v2, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scanFieldString"

    const-string v2, "([C)Ljava/lang/String;"

    const/16 v4, 0xb6

    .line 148
    invoke-interface {v11, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    goto/16 :goto_9

    :cond_14
    move-object/from16 v30, v2

    .line 150
    invoke-virtual {v14}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 151
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x0

    .line 152
    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0xb4

    invoke-interface {v11, v12, v1, v2, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    const/4 v2, 0x1

    .line 155
    invoke-interface {v11, v2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    const/16 v2, 0xc0

    .line 156
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x3a

    invoke-interface {v11, v4, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/16 v2, 0x19

    const/4 v15, 0x1

    .line 158
    invoke-interface {v11, v2, v15}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v2, "getSymbolTable"

    const-string v4, "()Lcom/alibaba/fastjson/parser/SymbolTable;"

    const/16 v12, 0xb6

    .line 159
    invoke-interface {v11, v12, v10, v2, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scanFieldSymbol"

    const-string v4, "([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;"

    .line 160
    invoke-interface {v11, v12, v0, v2, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x59

    .line 161
    invoke-interface {v11, v2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_asm_enumName"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x3a

    invoke-interface {v11, v4, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/16 v2, 0xc6

    .line 163
    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_asm_enumName"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x19

    invoke-interface {v11, v4, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 165
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(Ljava/lang/String;)"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0xb8

    const-string v14, "valueOf"

    .line 167
    invoke-interface {v11, v12, v2, v14, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x3a

    invoke-interface {v11, v4, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 169
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_9

    :cond_15
    const/4 v15, 0x1

    .line 170
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 171
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v2

    const/16 v15, 0x19

    invoke-interface {v11, v15, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v2, 0x0

    .line 172
    invoke-interface {v11, v15, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v10

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0xb4

    invoke-interface {v11, v12, v2, v10, v4}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {v8, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->y(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .line 175
    const-class v1, Ljava/lang/String;

    if-ne v10, v1, :cond_17

    .line 176
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "([CLjava/lang/Class;)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/util/Collection;

    .line 178
    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanFieldStringArray"

    const/16 v4, 0xb6

    .line 179
    invoke-interface {v11, v4, v0, v2, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v12, 0x3a

    invoke-interface {v11, v12, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 181
    :goto_a
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    move-object/from16 v15, v30

    const/16 v1, 0xb4

    .line 182
    invoke-interface {v11, v1, v0, v15, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v10, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    const/16 v13, 0x9e

    .line 184
    invoke-interface {v11, v13, v10}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    move/from16 v13, v29

    .line 185
    invoke-virtual {v8, v11, v9, v13}, Lcom/alibaba/fastjson/parser/deserializer/a;->t(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/deserializer/a$a;I)V

    .line 186
    invoke-interface {v11, v10}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 187
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v11, v2, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 188
    invoke-interface {v11, v1, v0, v15, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x59

    .line 189
    invoke-interface {v11, v10}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 190
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v10

    const/16 v14, 0x36

    invoke-interface {v11, v14, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v10, "NOT_MATCH"

    const/16 v14, 0xb2

    .line 191
    invoke-interface {v11, v14, v0, v10, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v28

    const/16 v14, 0x9f

    .line 192
    invoke-interface {v11, v14, v10}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 193
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v11, v2, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 194
    invoke-interface {v11, v1, v0, v15, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9e

    .line 195
    invoke-interface {v11, v1, v3}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    const-string v1, "matchedCount"

    .line 196
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x4

    .line 197
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    const/16 v1, 0x60

    .line 198
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    const-string v1, "matchedCount"

    .line 199
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x36

    invoke-interface {v11, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 200
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v14, 0x19

    invoke-interface {v11, v14, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/16 v1, 0xb4

    .line 201
    invoke-interface {v11, v1, v0, v15, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "END"

    const/16 v4, 0xb2

    .line 202
    invoke-interface {v11, v4, v0, v2, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v27

    const/16 v12, 0x9f

    .line 203
    invoke-interface {v11, v12, v2}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 204
    invoke-interface {v11, v3}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    add-int/lit8 v3, p1, -0x1

    if-ne v13, v3, :cond_16

    .line 205
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v14, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 206
    invoke-interface {v11, v1, v0, v15, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "END"

    .line 207
    invoke-interface {v11, v4, v0, v3, v5}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa0

    .line 208
    invoke-interface {v11, v3, v10}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    :cond_16
    move/from16 v16, p1

    move-object/from16 v19, v0

    move-object v12, v2

    move-object/from16 v17, v5

    move-object/from16 v30, v6

    move-object v14, v10

    move-object/from16 v20, v15

    const/16 v15, 0x19

    const/16 v18, 0x36

    const/16 v23, 0xb2

    const/16 v24, 0xb4

    const/16 v27, 0x3a

    move-object v10, v7

    move v7, v13

    const/16 v13, 0xb7

    goto/16 :goto_c

    :cond_17
    move-object/from16 v19, v0

    move-object/from16 v2, v27

    move/from16 v3, v29

    move-object/from16 v15, v30

    const/16 v1, 0xb4

    const/16 v4, 0xb2

    const/16 v12, 0x9f

    const/16 v21, 0x19

    move-object/from16 v0, p0

    const/16 v22, 0xb4

    move-object/from16 v1, p2

    move-object v12, v2

    move-object/from16 v20, v15

    const/4 v15, 0x2

    const/16 v24, 0x36

    move-object v2, v11

    const/4 v15, 0x1

    const/16 v18, 0x36

    const/16 v24, 0xb4

    move-object/from16 v3, v28

    move/from16 v16, p1

    const/16 v17, 0xb7

    const/16 v23, 0xb2

    const/16 v27, 0x3a

    move-object v4, v13

    move-object/from16 v17, v5

    const/16 v13, 0xb7

    move-object v5, v14

    move-object/from16 v30, v6

    move-object v6, v10

    move-object v10, v7

    const/16 v14, 0x19

    move/from16 v7, v29

    .line 209
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/asm/f;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;Ljava/lang/Class;I)V

    add-int/lit8 v4, v16, -0x1

    if-ne v7, v4, :cond_18

    move-object/from16 v6, v28

    .line 210
    invoke-direct {v8, v9, v11, v6}, Lcom/alibaba/fastjson/parser/deserializer/a;->f(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/asm/f;)V

    move-object v14, v6

    goto :goto_b

    :cond_18
    move-object/from16 v14, v28

    :goto_b
    const/16 v15, 0x19

    goto :goto_c

    :cond_19
    move/from16 v16, p1

    move-object/from16 v19, v0

    move-object/from16 v17, v5

    move-object/from16 v31, v10

    move-object/from16 v12, v27

    move-object/from16 v20, v30

    const/16 v4, 0x19

    const/16 v5, 0xb7

    const/16 v18, 0x36

    const/16 v23, 0xb2

    const/16 v24, 0xb4

    const/16 v27, 0x3a

    move-object/from16 v30, v6

    move-object v10, v7

    move-object/from16 v6, v28

    move/from16 v7, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v11

    move-object v3, v6

    const/16 v15, 0x19

    move-object v4, v13

    const/16 v13, 0xb7

    move-object v5, v14

    move-object v14, v6

    move v6, v7

    .line 211
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/a;->j(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/asm/f;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;I)V

    add-int/lit8 v4, v16, -0x1

    if-ne v7, v4, :cond_1a

    .line 212
    invoke-direct {v8, v9, v11, v14}, Lcom/alibaba/fastjson/parser/deserializer/a;->f(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/asm/f;)V

    :cond_1a
    :goto_c
    add-int/lit8 v0, v7, 0x1

    move-object v7, v10

    move-object/from16 v27, v12

    move-object/from16 v28, v14

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v2, v20

    move-object/from16 v6, v30

    move-object/from16 v10, v31

    move v12, v0

    move-object/from16 v0, v19

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v12, v27

    move-object/from16 v14, v28

    const/16 v13, 0xb7

    const/16 v15, 0x19

    .line 213
    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 215
    invoke-direct {v8, v9, v11}, Lcom/alibaba/fastjson/parser/deserializer/a;->a(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V

    :cond_1c
    move-object/from16 v0, v26

    .line 216
    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 217
    invoke-direct {v8, v9, v11}, Lcom/alibaba/fastjson/parser/deserializer/a;->s(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V

    const-string v0, "instance"

    .line 218
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v15, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/16 v0, 0xb0

    .line 219
    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 220
    invoke-interface {v11, v14}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 221
    invoke-direct {v8, v9, v11}, Lcom/alibaba/fastjson/parser/deserializer/a;->a(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V

    const/4 v0, 0x0

    .line 222
    invoke-interface {v11, v15, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v0, 0x1

    .line 223
    invoke-interface {v11, v15, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v0, 0x2

    .line 224
    invoke-interface {v11, v15, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v0, 0x3

    .line 225
    invoke-interface {v11, v15, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v0, "instance"

    .line 226
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v15, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v0, "parseRest"

    const-string v1, "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v2, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer"

    const/16 v3, 0xb6

    .line 227
    invoke-interface {v11, v3, v2, v0, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v11, v1, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    const/16 v0, 0xb0

    .line 229
    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    move-object/from16 v1, v25

    .line 230
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    const/4 v1, 0x0

    .line 231
    invoke-interface {v11, v15, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x1

    .line 232
    invoke-interface {v11, v15, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x2

    .line 233
    invoke-interface {v11, v15, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const/4 v1, 0x3

    .line 234
    invoke-interface {v11, v15, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    const-string v1, "deserialze"

    const-string v2, "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v3, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer"

    .line 235
    invoke-interface {v11, v13, v3, v1, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    const/4 v0, 0x5

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->e()I

    move-result v1

    invoke-interface {v11, v0, v1}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 238
    invoke-interface {v11}, Lcom/alibaba/fastjson/asm/g;->a()V

    return-void
.end method

.method h(Lcom/alibaba/fastjson/asm/b;Lcom/alibaba/fastjson/parser/deserializer/a$a;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const-string v4, "deserialzeArrayMapping"

    .line 7
    .line 8
    const-string v5, "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object/from16 v2, p1

    .line 13
    .line 14
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/a;->x(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/a;->d(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->a()Lcom/alibaba/fastjson/util/d;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/d;->m()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v6, 0x0

    .line 37
    :goto_0
    const-string v7, "COMMA"

    .line 38
    .line 39
    const-string v8, "com/alibaba/fastjson/parser/JSONLexerBase"

    .line 40
    .line 41
    const-string v9, "lexer"

    .line 42
    .line 43
    const-string v10, "I"

    .line 44
    .line 45
    const-string v11, "com/alibaba/fastjson/parser/JSONToken"

    .line 46
    .line 47
    if-ge v6, v4, :cond_10

    .line 48
    .line 49
    add-int/lit8 v15, v4, -0x1

    .line 50
    .line 51
    if-ne v6, v15, :cond_0

    .line 52
    .line 53
    const/4 v15, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const/4 v15, 0x0

    .line 56
    :goto_1
    if-eqz v15, :cond_1

    .line 57
    .line 58
    const/16 v16, 0x5d

    .line 59
    .line 60
    const/16 v12, 0x5d

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    const/16 v16, 0x2c

    .line 64
    .line 65
    const/16 v12, 0x2c

    .line 66
    .line 67
    :goto_2
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v16

    .line 71
    move-object/from16 v5, v16

    .line 72
    .line 73
    check-cast v5, Lcom/alibaba/fastjson/util/e;

    .line 74
    .line 75
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    move-object/from16 v17, v3

    .line 84
    .line 85
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 86
    .line 87
    move/from16 v18, v4

    .line 88
    .line 89
    const-string v4, "_asm"

    .line 90
    .line 91
    if-eq v13, v3, :cond_f

    .line 92
    .line 93
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    if-eq v13, v3, :cond_f

    .line 96
    .line 97
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    if-ne v13, v3, :cond_2

    .line 100
    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :cond_2
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 104
    .line 105
    move/from16 v20, v15

    .line 106
    .line 107
    const/4 v15, 0x2

    .line 108
    if-ne v13, v3, :cond_3

    .line 109
    .line 110
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    const/16 v7, 0x19

    .line 115
    .line 116
    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 117
    .line 118
    .line 119
    const/16 v3, 0x10

    .line 120
    .line 121
    invoke-interface {v2, v3, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 122
    .line 123
    .line 124
    const-string v3, "scanLong"

    .line 125
    .line 126
    const-string v7, "(C)J"

    .line 127
    .line 128
    const/16 v9, 0xb6

    .line 129
    .line 130
    invoke-interface {v2, v9, v8, v3, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v1, v3, v15}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->g(Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    const/16 v4, 0x37

    .line 157
    .line 158
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_7

    .line 162
    .line 163
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 164
    .line 165
    if-ne v13, v3, :cond_4

    .line 166
    .line 167
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    const/16 v7, 0x19

    .line 172
    .line 173
    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 174
    .line 175
    .line 176
    const/16 v3, 0x10

    .line 177
    .line 178
    invoke-interface {v2, v3, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 179
    .line 180
    .line 181
    const-string v3, "scanBoolean"

    .line 182
    .line 183
    const-string v7, "(C)Z"

    .line 184
    .line 185
    const/16 v9, 0xb6

    .line 186
    .line 187
    invoke-interface {v2, v9, v8, v3, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    const/16 v4, 0x36

    .line 214
    .line 215
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_7

    .line 219
    .line 220
    :cond_4
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 221
    .line 222
    if-ne v13, v3, :cond_5

    .line 223
    .line 224
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    const/16 v7, 0x19

    .line 229
    .line 230
    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 231
    .line 232
    .line 233
    const/16 v3, 0x10

    .line 234
    .line 235
    invoke-interface {v2, v3, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 236
    .line 237
    .line 238
    const-string v3, "scanFloat"

    .line 239
    .line 240
    const-string v7, "(C)F"

    .line 241
    .line 242
    const/16 v9, 0xb6

    .line 243
    .line 244
    invoke-interface {v2, v9, v8, v3, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    const/16 v4, 0x38

    .line 271
    .line 272
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_7

    .line 276
    .line 277
    :cond_5
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 278
    .line 279
    if-ne v13, v3, :cond_6

    .line 280
    .line 281
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    const/16 v7, 0x19

    .line 286
    .line 287
    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 288
    .line 289
    .line 290
    const/16 v3, 0x10

    .line 291
    .line 292
    invoke-interface {v2, v3, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 293
    .line 294
    .line 295
    const-string v3, "scanDouble"

    .line 296
    .line 297
    const-string v7, "(C)D"

    .line 298
    .line 299
    const/16 v9, 0xb6

    .line 300
    .line 301
    invoke-interface {v2, v9, v8, v3, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v1, v3, v15}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->g(Ljava/lang/String;I)I

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    const/16 v4, 0x39

    .line 328
    .line 329
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_7

    .line 333
    .line 334
    :cond_6
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 335
    .line 336
    const-string v15, "(C)Ljava/lang/String;"

    .line 337
    .line 338
    move-object/from16 v21, v7

    .line 339
    .line 340
    const-string v7, "scanString"

    .line 341
    .line 342
    if-ne v13, v3, :cond_7

    .line 343
    .line 344
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    const/16 v9, 0x19

    .line 349
    .line 350
    invoke-interface {v2, v9, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 351
    .line 352
    .line 353
    const/16 v3, 0x10

    .line 354
    .line 355
    invoke-interface {v2, v3, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 356
    .line 357
    .line 358
    const/16 v3, 0xb6

    .line 359
    .line 360
    invoke-interface {v2, v3, v8, v7, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const/4 v7, 0x3

    .line 364
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 365
    .line 366
    .line 367
    const-string v7, "charAt"

    .line 368
    .line 369
    const-string v8, "(I)C"

    .line 370
    .line 371
    const-string v9, "java/lang/String"

    .line 372
    .line 373
    invoke-interface {v2, v3, v9, v7, v8}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    const/16 v4, 0x36

    .line 400
    .line 401
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_7

    .line 405
    .line 406
    :cond_7
    const-class v3, Ljava/lang/String;

    .line 407
    .line 408
    move-object/from16 v19, v10

    .line 409
    .line 410
    const/16 v10, 0x3a

    .line 411
    .line 412
    if-ne v13, v3, :cond_8

    .line 413
    .line 414
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    const/16 v9, 0x19

    .line 419
    .line 420
    invoke-interface {v2, v9, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 421
    .line 422
    .line 423
    const/16 v3, 0x10

    .line 424
    .line 425
    invoke-interface {v2, v3, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 426
    .line 427
    .line 428
    const/16 v3, 0xb6

    .line 429
    .line 430
    invoke-interface {v2, v3, v8, v7, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    invoke-interface {v2, v10, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_7

    .line 460
    .line 461
    :cond_8
    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    const-string v15, "com/alibaba/fastjson/parser/DefaultJSONParser"

    .line 466
    .line 467
    if-eqz v7, :cond_9

    .line 468
    .line 469
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    const/16 v7, 0x19

    .line 474
    .line 475
    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 476
    .line 477
    .line 478
    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-static {v3}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    const/4 v3, 0x1

    .line 490
    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 491
    .line 492
    .line 493
    const-string v3, "getSymbolTable"

    .line 494
    .line 495
    const-string v7, "()Lcom/alibaba/fastjson/parser/SymbolTable;"

    .line 496
    .line 497
    const/16 v9, 0xb6

    .line 498
    .line 499
    invoke-interface {v2, v9, v15, v3, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    const/16 v3, 0x10

    .line 503
    .line 504
    invoke-interface {v2, v3, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 505
    .line 506
    .line 507
    const-string v3, "scanEnum"

    .line 508
    .line 509
    const-string v7, "(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;"

    .line 510
    .line 511
    invoke-interface {v2, v9, v8, v3, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    const/16 v3, 0xc0

    .line 515
    .line 516
    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v7

    .line 520
    invoke-interface {v2, v3, v7}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 521
    .line 522
    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    invoke-interface {v2, v10, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 547
    .line 548
    .line 549
    goto/16 :goto_7

    .line 550
    .line 551
    :cond_9
    const-class v7, Ljava/util/Collection;

    .line 552
    .line 553
    invoke-virtual {v7, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 554
    .line 555
    .line 556
    move-result v7

    .line 557
    const-string v10, "(II)V"

    .line 558
    .line 559
    move-object/from16 v22, v10

    .line 560
    .line 561
    const-string v10, "accept"

    .line 562
    .line 563
    move-object/from16 v23, v10

    .line 564
    .line 565
    const-string v10, "LBRACKET"

    .line 566
    .line 567
    if-eqz v7, :cond_c

    .line 568
    .line 569
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/a;->y(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 570
    .line 571
    .line 572
    move-result-object v7

    .line 573
    if-ne v7, v3, :cond_a

    .line 574
    .line 575
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    const/16 v7, 0x19

    .line 580
    .line 581
    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 582
    .line 583
    .line 584
    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-static {v3}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    const/16 v3, 0x10

    .line 596
    .line 597
    invoke-interface {v2, v3, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 598
    .line 599
    .line 600
    const-string v3, "scanStringArray"

    .line 601
    .line 602
    const-string v7, "(Ljava/lang/Class;C)Ljava/util/Collection;"

    .line 603
    .line 604
    const/16 v9, 0xb6

    .line 605
    .line 606
    invoke-interface {v2, v9, v8, v3, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v5

    .line 618
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    const/16 v4, 0x3a

    .line 633
    .line 634
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_7

    .line 638
    .line 639
    :cond_a
    const/4 v3, 0x1

    .line 640
    const/16 v8, 0x19

    .line 641
    .line 642
    invoke-interface {v2, v8, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 643
    .line 644
    .line 645
    if-nez v6, :cond_b

    .line 646
    .line 647
    move-object/from16 v3, v19

    .line 648
    .line 649
    const/16 v8, 0xb2

    .line 650
    .line 651
    invoke-interface {v2, v8, v11, v10, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    goto :goto_3

    .line 655
    :cond_b
    move-object/from16 v3, v19

    .line 656
    .line 657
    move-object/from16 v12, v21

    .line 658
    .line 659
    const/16 v8, 0xb2

    .line 660
    .line 661
    invoke-interface {v2, v8, v11, v12, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    :goto_3
    invoke-interface {v2, v8, v11, v10, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    move-object/from16 v8, v22

    .line 668
    .line 669
    move-object/from16 v9, v23

    .line 670
    .line 671
    const/16 v3, 0xb6

    .line 672
    .line 673
    invoke-interface {v2, v3, v15, v9, v8}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-direct {v0, v2, v13}, Lcom/alibaba/fastjson/parser/deserializer/a;->q(Lcom/alibaba/fastjson/asm/g;Ljava/lang/Class;)V

    .line 677
    .line 678
    .line 679
    const/16 v3, 0x59

    .line 680
    .line 681
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 682
    .line 683
    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    .line 685
    .line 686
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v8

    .line 693
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    move-result v3

    .line 707
    const/16 v4, 0x3a

    .line 708
    .line 709
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 710
    .line 711
    .line 712
    invoke-direct {v0, v1, v2, v5, v7}, Lcom/alibaba/fastjson/parser/deserializer/a;->k(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;)V

    .line 713
    .line 714
    .line 715
    const/4 v3, 0x1

    .line 716
    const/16 v4, 0x19

    .line 717
    .line 718
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 719
    .line 720
    .line 721
    invoke-static {v7}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    invoke-static {v3}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 730
    .line 731
    .line 732
    const/4 v3, 0x3

    .line 733
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 734
    .line 735
    .line 736
    const-string v3, "parseArray"

    .line 737
    .line 738
    const-string v4, "(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V"

    .line 739
    .line 740
    const/16 v5, 0xb8

    .line 741
    .line 742
    const-string v7, "com/alibaba/fastjson/util/ASMUtils"

    .line 743
    .line 744
    invoke-interface {v2, v5, v7, v3, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    goto/16 :goto_7

    .line 748
    .line 749
    :cond_c
    move-object/from16 v3, v19

    .line 750
    .line 751
    move-object/from16 v12, v21

    .line 752
    .line 753
    move-object/from16 v8, v22

    .line 754
    .line 755
    move-object/from16 v9, v23

    .line 756
    .line 757
    const/16 v4, 0x19

    .line 758
    .line 759
    const/4 v7, 0x1

    .line 760
    invoke-interface {v2, v4, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 761
    .line 762
    .line 763
    if-nez v6, :cond_d

    .line 764
    .line 765
    const/16 v14, 0xb2

    .line 766
    .line 767
    invoke-interface {v2, v14, v11, v10, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    goto :goto_4

    .line 771
    :cond_d
    const/16 v14, 0xb2

    .line 772
    .line 773
    invoke-interface {v2, v14, v11, v12, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    :goto_4
    invoke-interface {v2, v14, v11, v10, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    const/16 v14, 0xb6

    .line 780
    .line 781
    invoke-interface {v2, v14, v15, v9, v8}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-direct {v0, v1, v2, v5, v13}, Lcom/alibaba/fastjson/parser/deserializer/a;->e(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Ljava/lang/Class;)V

    .line 785
    .line 786
    .line 787
    invoke-interface {v2, v4, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 788
    .line 789
    .line 790
    if-nez v20, :cond_e

    .line 791
    .line 792
    const/16 v4, 0xb2

    .line 793
    .line 794
    invoke-interface {v2, v4, v11, v12, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    invoke-interface {v2, v4, v11, v10, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    goto :goto_5

    .line 801
    :cond_e
    const/16 v4, 0xb2

    .line 802
    .line 803
    const-string v5, "RBRACKET"

    .line 804
    .line 805
    invoke-interface {v2, v4, v11, v5, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    const-string v5, "EOF"

    .line 809
    .line 810
    invoke-interface {v2, v4, v11, v5, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    :goto_5
    const/16 v3, 0xb6

    .line 814
    .line 815
    invoke-interface {v2, v3, v15, v9, v8}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    goto :goto_7

    .line 819
    :cond_f
    :goto_6
    const/16 v3, 0xb6

    .line 820
    .line 821
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 822
    .line 823
    .line 824
    move-result v7

    .line 825
    const/16 v9, 0x19

    .line 826
    .line 827
    invoke-interface {v2, v9, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 828
    .line 829
    .line 830
    const/16 v7, 0x10

    .line 831
    .line 832
    invoke-interface {v2, v7, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 833
    .line 834
    .line 835
    const-string v7, "scanInt"

    .line 836
    .line 837
    const-string v9, "(C)I"

    .line 838
    .line 839
    invoke-interface {v2, v3, v8, v7, v9}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v3

    .line 861
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 862
    .line 863
    .line 864
    move-result v3

    .line 865
    const/16 v4, 0x36

    .line 866
    .line 867
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 868
    .line 869
    .line 870
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 871
    .line 872
    move-object/from16 v3, v17

    .line 873
    .line 874
    move/from16 v4, v18

    .line 875
    .line 876
    goto/16 :goto_0

    .line 877
    .line 878
    :cond_10
    move-object v12, v7

    .line 879
    move-object v3, v10

    .line 880
    const/4 v4, 0x0

    .line 881
    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson/parser/deserializer/a;->b(Lcom/alibaba/fastjson/parser/deserializer/a$a;Lcom/alibaba/fastjson/asm/g;Z)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 885
    .line 886
    .line 887
    move-result v4

    .line 888
    const/16 v5, 0x19

    .line 889
    .line 890
    invoke-interface {v2, v5, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 891
    .line 892
    .line 893
    const/16 v4, 0xb2

    .line 894
    .line 895
    invoke-interface {v2, v4, v11, v12, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    const-string v3, "nextToken"

    .line 899
    .line 900
    const-string v4, "(I)V"

    .line 901
    .line 902
    const/16 v6, 0xb6

    .line 903
    .line 904
    invoke-interface {v2, v6, v8, v3, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    const-string v3, "instance"

    .line 908
    .line 909
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    invoke-interface {v2, v5, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 914
    .line 915
    .line 916
    const/16 v3, 0xb0

    .line 917
    .line 918
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 919
    .line 920
    .line 921
    const/4 v3, 0x5

    .line 922
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->e()I

    .line 923
    .line 924
    .line 925
    move-result v1

    .line 926
    invoke-interface {v2, v3, v1}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 927
    .line 928
    .line 929
    invoke-interface {v2}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 930
    .line 931
    .line 932
    return-void
.end method

.method o(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/deserializer/a$a;ILcom/alibaba/fastjson/asm/f;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_asm_flag_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    div-int/lit8 v1, p3, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/16 v0, 0x15

    .line 25
    .line 26
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    shl-int/2addr p2, p3

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/16 p2, 0x7e

    .line 39
    .line 40
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 41
    .line 42
    .line 43
    const/16 p2, 0x99

    .line 44
    .line 45
    invoke-interface {p1, p2, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method t(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/parser/deserializer/a$a;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_asm_flag_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    div-int/lit8 v1, p3, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0x15

    .line 25
    .line 26
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    shl-int p3, v1, p3

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/16 p3, 0x80

    .line 40
    .line 41
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 42
    .line 43
    .line 44
    const/16 p3, 0x36

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/a$a;->f(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public u(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/e;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const-class v1, Ljava/lang/String;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/k;->b(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->w(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public v(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/x0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->z(Ljava/lang/Class;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v7, Lcom/alibaba/fastjson/asm/b;

    .line 12
    .line 13
    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/b;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x31

    .line 17
    .line 18
    const/16 v3, 0x21

    .line 19
    .line 20
    const-string v5, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer"

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v1, v7

    .line 24
    move-object v4, v0

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/asm/b;->o(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/util/d;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/d;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/a$a;

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    invoke-direct {v1, v0, p1, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;Lcom/alibaba/fastjson/util/d;I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->m(Lcom/alibaba/fastjson/asm/b;Lcom/alibaba/fastjson/parser/deserializer/a$a;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/a$a;

    .line 42
    .line 43
    invoke-direct {v1, v0, p1, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;Lcom/alibaba/fastjson/util/d;I)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->c(Lcom/alibaba/fastjson/asm/b;Lcom/alibaba/fastjson/parser/deserializer/a$a;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/a$a;

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    invoke-direct {v1, v0, p1, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;Lcom/alibaba/fastjson/util/d;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->g(Lcom/alibaba/fastjson/asm/b;Lcom/alibaba/fastjson/parser/deserializer/a$a;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/a$a;

    .line 59
    .line 60
    invoke-direct {v1, v0, p1, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/a$a;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;Lcom/alibaba/fastjson/util/d;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->h(Lcom/alibaba/fastjson/asm/b;Lcom/alibaba/fastjson/parser/deserializer/a$a;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/alibaba/fastjson/asm/b;->n()[B

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    sget-object v1, Lcom/alibaba/fastjson/a;->DUMP_CLASS:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v4, Lcom/alibaba/fastjson/a;->DUMP_CLASS:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v4, ".class"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catch_0
    move-exception v1

    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    goto :goto_2

    .line 118
    :catch_1
    move-exception v2

    .line 119
    move-object v8, v2

    .line 120
    move-object v2, v1

    .line 121
    move-object v1, v8

    .line 122
    :goto_1
    :try_start_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 123
    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v5, "FASTJSON dump class:"

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v5, "\u5931\u8d25:"

    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    .line 155
    .line 156
    if-eqz v2, :cond_1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :catchall_1
    move-exception p1

    .line 160
    move-object v1, v2

    .line 161
    :goto_2
    if-eqz v1, :cond_0

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 164
    .line 165
    .line 166
    :cond_0
    throw p1

    .line 167
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/a;->Z0:Lcom/alibaba/fastjson/util/a;

    .line 168
    .line 169
    array-length v2, p3

    .line 170
    const/4 v3, 0x0

    .line 171
    invoke-virtual {v1, v0, p3, v3, v2}, Lcom/alibaba/fastjson/util/a;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    const/4 v0, 0x2

    .line 176
    new-array v1, v0, [Ljava/lang/Class;

    .line 177
    .line 178
    const-class v2, Lcom/alibaba/fastjson/parser/k;

    .line 179
    .line 180
    aput-object v2, v1, v3

    .line 181
    .line 182
    const-class v2, Ljava/lang/Class;

    .line 183
    .line 184
    const/4 v4, 0x1

    .line 185
    aput-object v2, v1, v4

    .line 186
    .line 187
    invoke-virtual {p3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    new-array v0, v0, [Ljava/lang/Object;

    .line 192
    .line 193
    aput-object p1, v0, v3

    .line 194
    .line 195
    aput-object p2, v0, v4

    .line 196
    .line 197
    invoke-virtual {p3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 202
    .line 203
    return-object p1

    .line 204
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    new-instance p3, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v0, "not support type :"

    .line 212
    .line 213
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1
.end method

.method public w(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/e;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/a;->A(Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    new-instance v12, Lcom/alibaba/fastjson/asm/b;

    .line 20
    .line 21
    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/b;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    if-ne v3, v13, :cond_0

    .line 27
    .line 28
    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/s;

    .line 29
    .line 30
    :goto_0
    move-object v14, v5

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    if-ne v3, v5, :cond_1

    .line 35
    .line 36
    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/t0;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/b1;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isInterface()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    const/16 v5, 0xb9

    .line 49
    .line 50
    const/16 v15, 0xb9

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v5, 0xb6

    .line 54
    .line 55
    const/16 v15, 0xb6

    .line 56
    .line 57
    :goto_2
    const/16 v6, 0x31

    .line 58
    .line 59
    const/16 v7, 0x21

    .line 60
    .line 61
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    const/4 v10, 0x0

    .line 66
    move-object v5, v12

    .line 67
    move-object v8, v11

    .line 68
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->o(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    const-string v7, "<init>"

    .line 73
    .line 74
    const-string v8, "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V"

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const/16 v10, 0x19

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    invoke-interface {v5, v10, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 85
    .line 86
    .line 87
    const/4 v8, 0x1

    .line 88
    invoke-interface {v5, v10, v8}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 89
    .line 90
    .line 91
    const/4 v7, 0x2

    .line 92
    invoke-interface {v5, v10, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 93
    .line 94
    .line 95
    const/4 v6, 0x3

    .line 96
    invoke-interface {v5, v10, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 97
    .line 98
    .line 99
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    const-string v6, "<init>"

    .line 104
    .line 105
    const-string v7, "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V"

    .line 106
    .line 107
    const/16 v8, 0xb7

    .line 108
    .line 109
    invoke-interface {v5, v8, v14, v6, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/16 v14, 0xb1

    .line 113
    .line 114
    invoke-interface {v5, v14}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 115
    .line 116
    .line 117
    const/4 v6, 0x6

    .line 118
    const/4 v8, 0x4

    .line 119
    invoke-interface {v5, v8, v6}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v5}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 123
    .line 124
    .line 125
    if-eqz v4, :cond_5

    .line 126
    .line 127
    const/16 v7, 0xc0

    .line 128
    .line 129
    if-ne v3, v13, :cond_3

    .line 130
    .line 131
    const/4 v6, 0x1

    .line 132
    const-string v3, "setValue"

    .line 133
    .line 134
    const-string v8, "(Ljava/lang/Object;I)V"

    .line 135
    .line 136
    const/4 v13, 0x0

    .line 137
    const/16 v18, 0x0

    .line 138
    .line 139
    move-object v5, v12

    .line 140
    const/16 v14, 0xc0

    .line 141
    .line 142
    move-object v7, v3

    .line 143
    const/4 v3, 0x1

    .line 144
    move-object v9, v13

    .line 145
    const/16 v13, 0x19

    .line 146
    .line 147
    move-object/from16 v10, v18

    .line 148
    .line 149
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-interface {v5, v13, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-interface {v5, v14, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/16 v6, 0x15

    .line 168
    .line 169
    const/4 v10, 0x2

    .line 170
    invoke-interface {v5, v6, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-interface {v5, v15, v6, v7, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/16 v4, 0xb1

    .line 193
    .line 194
    invoke-interface {v5, v4}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 195
    .line 196
    .line 197
    const/4 v9, 0x3

    .line 198
    invoke-interface {v5, v9, v9}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v5}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_3

    .line 205
    .line 206
    :cond_3
    const/4 v7, 0x1

    .line 207
    const/4 v9, 0x3

    .line 208
    const/4 v10, 0x2

    .line 209
    const/16 v13, 0x19

    .line 210
    .line 211
    const/16 v14, 0xc0

    .line 212
    .line 213
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 214
    .line 215
    if-ne v3, v5, :cond_4

    .line 216
    .line 217
    const/4 v6, 0x1

    .line 218
    const-string v3, "setValue"

    .line 219
    .line 220
    const-string v16, "(Ljava/lang/Object;J)V"

    .line 221
    .line 222
    const/16 v17, 0x0

    .line 223
    .line 224
    const/16 v18, 0x0

    .line 225
    .line 226
    move-object v5, v12

    .line 227
    const/4 v14, 0x1

    .line 228
    move-object v7, v3

    .line 229
    const/4 v3, 0x4

    .line 230
    move-object/from16 v8, v16

    .line 231
    .line 232
    move-object/from16 v9, v17

    .line 233
    .line 234
    const/4 v3, 0x2

    .line 235
    move-object/from16 v10, v18

    .line 236
    .line 237
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-interface {v5, v13, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    const/16 v7, 0xc0

    .line 253
    .line 254
    invoke-interface {v5, v7, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const/16 v6, 0x16

    .line 258
    .line 259
    invoke-interface {v5, v6, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-interface {v5, v15, v6, v7, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const/16 v4, 0xb1

    .line 282
    .line 283
    invoke-interface {v5, v4}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 284
    .line 285
    .line 286
    const/4 v4, 0x4

    .line 287
    const/4 v10, 0x3

    .line 288
    invoke-interface {v5, v10, v4}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v5}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 292
    .line 293
    .line 294
    const/4 v4, 0x3

    .line 295
    goto :goto_4

    .line 296
    :cond_4
    move-object/from16 v16, v3

    .line 297
    .line 298
    const/4 v3, 0x2

    .line 299
    const/4 v10, 0x3

    .line 300
    const/4 v14, 0x1

    .line 301
    const/4 v6, 0x1

    .line 302
    const-string v7, "setValue"

    .line 303
    .line 304
    const-string v8, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 305
    .line 306
    const/4 v9, 0x0

    .line 307
    const/16 v17, 0x0

    .line 308
    .line 309
    move-object v5, v12

    .line 310
    move-object/from16 v10, v17

    .line 311
    .line 312
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-interface {v5, v13, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    const/16 v7, 0xc0

    .line 328
    .line 329
    invoke-interface {v5, v7, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v5, v13, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 333
    .line 334
    .line 335
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-interface {v5, v7, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-interface {v5, v15, v6, v7, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const/16 v4, 0xb1

    .line 362
    .line 363
    invoke-interface {v5, v4}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 364
    .line 365
    .line 366
    const/4 v4, 0x3

    .line 367
    invoke-interface {v5, v4, v4}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 368
    .line 369
    .line 370
    invoke-interface {v5}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 371
    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_5
    :goto_3
    const/4 v3, 0x2

    .line 375
    const/4 v4, 0x3

    .line 376
    const/4 v14, 0x1

    .line 377
    :goto_4
    invoke-virtual {v12}, Lcom/alibaba/fastjson/asm/b;->n()[B

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/a;->Z0:Lcom/alibaba/fastjson/util/a;

    .line 382
    .line 383
    array-length v7, v5

    .line 384
    const/4 v8, 0x0

    .line 385
    invoke-virtual {v6, v11, v5, v8, v7}, Lcom/alibaba/fastjson/util/a;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    new-array v6, v4, [Ljava/lang/Class;

    .line 390
    .line 391
    const-class v7, Lcom/alibaba/fastjson/parser/k;

    .line 392
    .line 393
    aput-object v7, v6, v8

    .line 394
    .line 395
    const-class v7, Ljava/lang/Class;

    .line 396
    .line 397
    aput-object v7, v6, v14

    .line 398
    .line 399
    const-class v7, Lcom/alibaba/fastjson/util/e;

    .line 400
    .line 401
    aput-object v7, v6, v3

    .line 402
    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    new-array v4, v4, [Ljava/lang/Object;

    .line 408
    .line 409
    aput-object p1, v4, v8

    .line 410
    .line 411
    aput-object v1, v4, v14

    .line 412
    .line 413
    aput-object v2, v4, v3

    .line 414
    .line 415
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 420
    .line 421
    return-object v1
.end method

.method public z(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Fastjson_ASM_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, "_"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/a;->a1:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
