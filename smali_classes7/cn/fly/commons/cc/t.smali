.class public Lcn/fly/commons/cc/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcn/fly/commons/cc/z;

.field private c:[Ljava/lang/Object;

.field private d:I

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:Lcn/fly/commons/cc/t;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/fly/commons/cc/t;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lcn/fly/commons/cc/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/fly/commons/cc/z;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcn/fly/commons/cc/t;->b:Lcn/fly/commons/cc/z;

    .line 5
    .line 6
    const/16 p2, 0x10

    .line 7
    .line 8
    new-array p2, p2, [Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lcn/fly/commons/cc/t;->c:[Ljava/lang/Object;

    .line 11
    .line 12
    new-instance p2, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcn/fly/commons/cc/t;->e:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance p1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcn/fly/commons/cc/t;->f:Ljava/util/HashMap;

    .line 25
    .line 26
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/fly/commons/cc/t;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/Object;Z[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcn/fly/commons/cc/t$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/fly/commons/cc/t$1;-><init>(Lcn/fly/commons/cc/t;Ljava/lang/Object;Z)V

    invoke-static {v0, p3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 48
    iget-object v1, v0, Lcn/fly/commons/cc/t;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v0, v0, Lcn/fly/commons/cc/t;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    iget-object v0, v0, Lcn/fly/commons/cc/t;->g:Lcn/fly/commons/cc/t;

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 3

    const-string v0, "Object"

    .line 2
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Class"

    .line 3
    const-class v1, Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Method"

    .line 4
    const-class v1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "String"

    .line 5
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Thread"

    .line 6
    const-class v1, Ljava/lang/Thread;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "008Qhkeh+ffe:ggOhg"

    .line 7
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "006GfmfdgjTjg@eg"

    .line 8
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/System;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "File"

    .line 9
    const-class v1, Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "URL"

    .line 10
    const-class v1, Ljava/net/URL;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Double"

    .line 11
    const-class v1, Ljava/lang/Double;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Float"

    .line 12
    const-class v1, Ljava/lang/Float;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Long"

    .line 13
    const-class v1, Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Integer"

    .line 14
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "005]fmGiMelek=j"

    .line 15
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Byte"

    .line 16
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Number"

    .line 17
    const-class v1, Ljava/lang/Number;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "009\'feNieCekBedjgCek"

    .line 18
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Boolean"

    .line 19
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "006XedelehggLhg"

    .line 20
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "005QfgHhPel+ej"

    .line 21
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "long"

    .line 22
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "003Hej%fj"

    .line 23
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "short"

    .line 24
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "byte"

    .line 25
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "004die[ek"

    .line 26
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "boolean"

    .line 27
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "bigInt"

    .line 28
    const-class v1, Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "BigInteger"

    .line 29
    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "bigDec"

    .line 30
    const-class v1, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "BigDecimal"

    .line 31
    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "List"

    .line 32
    const-class v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Map"

    .line 33
    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Function"

    .line 34
    const-class v1, Lcn/fly/commons/cc/ab;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "fun"

    .line 35
    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Range"

    .line 36
    const-class v1, Lcn/fly/commons/cc/c;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Array"

    .line 37
    const-class v1, Ljava/lang/reflect/Array;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Suba"

    .line 38
    const-class v1, Lcn/fly/commons/cc/aa;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "VM"

    .line 39
    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    sget-object v0, Lcn/fly/commons/cc/t;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v2, v1}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 42
    iget v0, p0, Lcn/fly/commons/cc/t;->d:I

    iget-object v1, p0, Lcn/fly/commons/cc/t;->c:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 43
    array-length v0, v1

    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/t;->c:[Ljava/lang/Object;

    .line 44
    :cond_0
    iget-object v0, p0, Lcn/fly/commons/cc/t;->c:[Ljava/lang/Object;

    iget v1, p0, Lcn/fly/commons/cc/t;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/fly/commons/cc/t;->d:I

    aput-object p1, v0, v1

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcn/fly/commons/cc/t;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcn/fly/commons/cc/t;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 47
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has defined"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Ljava/lang/reflect/Method;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcn/fly/commons/cc/t;->b()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 57
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_5

    .line 58
    aget-object v0, p2, v1

    .line 59
    array-length v3, p2

    sub-int/2addr v3, v2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 60
    aget-object v7, p2, v6

    aput-object v7, v4, v5

    move v5, v6

    goto :goto_0

    :cond_1
    move-object p2, v4

    .line 61
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 62
    :goto_2
    array-length v4, p2

    if-ge v3, v4, :cond_3

    .line 63
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, p2, v3

    instance-of v5, v4, Lcn/fly/commons/cc/ab;

    if-eqz v5, :cond_2

    new-array v5, v2, [Ljava/lang/Class;

    .line 64
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aget-object v6, v6, v3

    aput-object v6, v5, v1

    invoke-virtual {p0, v4, v2, v5}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;Z[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    .line 66
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 67
    :cond_4
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    :goto_3
    return-void

    .line 68
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "receiver not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    iget-object v1, v0, Lcn/fly/commons/cc/t;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v0, v0, Lcn/fly/commons/cc/t;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 14
    :cond_0
    iget-object v0, v0, Lcn/fly/commons/cc/t;->g:Lcn/fly/commons/cc/t;

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcn/fly/commons/cc/t;->d:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcn/fly/commons/cc/t;->d:I

    .line 3
    iget-object v1, p0, Lcn/fly/commons/cc/t;->c:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    .line 4
    aput-object v3, v1, v0

    return-object v2

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stack is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcn/fly/commons/cc/t;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcn/fly/commons/cc/t;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcn/fly/commons/cc/t;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/fly/commons/cc/t;->g:Lcn/fly/commons/cc/t;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1, p2}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has not defined"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c()Lcn/fly/commons/cc/t;
    .locals 3

    .line 1
    new-instance v0, Lcn/fly/commons/cc/t;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcn/fly/commons/cc/t;->b:Lcn/fly/commons/cc/z;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcn/fly/commons/cc/t;-><init>(Ljava/util/HashMap;Lcn/fly/commons/cc/z;)V

    .line 11
    .line 12
    .line 13
    iput-object p0, v0, Lcn/fly/commons/cc/t;->g:Lcn/fly/commons/cc/t;

    .line 14
    .line 15
    return-object v0
.end method

.method public d()Lcn/fly/commons/cc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/t;->g:Lcn/fly/commons/cc/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/fly/commons/cc/t;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/fly/commons/cc/t;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/fly/commons/cc/t;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()Lcn/fly/commons/cc/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/t;->b:Lcn/fly/commons/cc/z;

    .line 2
    .line 3
    return-object v0
.end method
