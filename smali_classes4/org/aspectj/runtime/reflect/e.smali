.class public final Lorg/aspectj/runtime/reflect/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static e:Ljava/util/Hashtable;

.field private static f:[Ljava/lang/Object;

.field static synthetic g:Ljava/lang/Class;


# instance fields
.field a:Ljava/lang/Class;

.field b:Ljava/lang/ClassLoader;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 7
    .line 8
    const-string v1, "void"

    .line 9
    .line 10
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 16
    .line 17
    const-string v1, "boolean"

    .line 18
    .line 19
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 25
    .line 26
    const-string v1, "byte"

    .line 27
    .line 28
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 34
    .line 35
    const-string v1, "char"

    .line 36
    .line 37
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    sget-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 43
    .line 44
    const-string v1, "short"

    .line 45
    .line 46
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    sget-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 52
    .line 53
    const-string v1, "int"

    .line 54
    .line 55
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 61
    .line 62
    const-string v1, "long"

    .line 63
    .line 64
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    sget-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 70
    .line 71
    const-string v1, "float"

    .line 72
    .line 73
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    sget-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 79
    .line 80
    const-string v1, "double"

    .line 81
    .line 82
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    .line 90
    sput-object v0, Lorg/aspectj/runtime/reflect/e;->f:[Ljava/lang/Object;

    .line 91
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/e;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/aspectj/runtime/reflect/e;->a:Ljava/lang/Class;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method static h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    .line 1
    const-string v0, "*"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lorg/aspectj/runtime/reflect/e;->e:Ljava/util/Hashtable;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Class;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    if-nez p1, :cond_2

    .line 23
    .line 24
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p0

    .line 35
    :catch_0
    nop

    .line 36
    sget-object p0, Lorg/aspectj/runtime/reflect/e;->g:Ljava/lang/Class;

    .line 37
    .line 38
    if-nez p0, :cond_3

    .line 39
    .line 40
    const-string p0, "java.lang.ClassNotFoundException"

    .line 41
    .line 42
    invoke-static {p0}, Lorg/aspectj/runtime/reflect/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sput-object p0, Lorg/aspectj/runtime/reflect/e;->g:Ljava/lang/Class;

    .line 47
    .line 48
    :cond_3
    return-object p0
.end method

.method public static o(Ljava/lang/reflect/Member;)Lorg/aspectj/lang/c$b;
    .locals 9

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/reflect/Method;

    .line 6
    .line 7
    new-instance v8, Lorg/aspectj/runtime/reflect/k;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    array-length v0, v0

    .line 30
    new-array v5, v0, [Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    move-object v0, v8

    .line 41
    invoke-direct/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/k;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "method-execution"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 52
    .line 53
    new-instance v8, Lorg/aspectj/runtime/reflect/d;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    array-length v0, v0

    .line 72
    new-array v4, v0, [Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    move-object v0, v8

    .line 79
    invoke-direct/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/d;-><init>(ILjava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    .line 80
    .line 81
    .line 82
    const-string p0, "constructor-execution"

    .line 83
    .line 84
    :goto_0
    new-instance v0, Lorg/aspectj/runtime/reflect/h$a;

    .line 85
    .line 86
    const/4 v1, -0x1

    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-direct {v0, v1, p0, v8, v2}, Lorg/aspectj/runtime/reflect/h$a;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lad/z;)V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    const-string v0, "member must be either a method or constructor"

    .line 95
    .line 96
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public static v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;
    .locals 2

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h;

    .line 2
    .line 3
    sget-object v1, Lorg/aspectj/runtime/reflect/e;->f:[Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/aspectj/runtime/reflect/h;-><init>(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;
    .locals 3

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p3, v1, v2

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/aspectj/runtime/reflect/h;-><init>(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static x(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;
    .locals 3

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p3, v1, v2

    .line 8
    .line 9
    const/4 p3, 0x1

    .line 10
    aput-object p4, v1, p3

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/aspectj/runtime/reflect/h;-><init>(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static y(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/c;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/aspectj/runtime/reflect/h;-><init>(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/Class;)Lad/r;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/i;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/i;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public B(Ljava/lang/String;)Lad/r;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/i;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/i;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public C(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Lad/t;
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/k;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/k;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    iget-object v1, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 17
    .line 18
    invoke-virtual {v8, v1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 19
    .line 20
    .line 21
    return-object v8
.end method

.method public D(Ljava/lang/String;)Lad/t;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/k;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/k;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v1, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 10
    .line 11
    move-object v2, p3

    .line 12
    invoke-static {p3, v1}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    new-instance v1, Ljava/util/StringTokenizer;

    .line 17
    .line 18
    const-string v2, ":"

    .line 19
    .line 20
    move-object v4, p4

    .line 21
    invoke-direct {v1, p4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    new-array v6, v4, [Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    :goto_0
    if-ge v8, v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    iget-object v10, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 39
    .line 40
    invoke-static {v9, v10}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    aput-object v9, v6, v8

    .line 45
    .line 46
    add-int/lit8 v8, v8, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    .line 50
    .line 51
    move-object/from16 v4, p5

    .line 52
    .line 53
    invoke-direct {v1, v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    new-array v8, v4, [Ljava/lang/String;

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    :goto_1
    if-ge v9, v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    aput-object v10, v8, v9

    .line 70
    .line 71
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    .line 75
    .line 76
    move-object/from16 v4, p6

    .line 77
    .line 78
    invoke-direct {v1, v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    new-array v9, v2, [Ljava/lang/Class;

    .line 86
    .line 87
    :goto_2
    if-ge v7, v2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v10, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 94
    .line 95
    invoke-static {v4, v10}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    aput-object v4, v9, v7

    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget-object v1, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 105
    .line 106
    move-object/from16 v2, p7

    .line 107
    .line 108
    invoke-static {v2, v1}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v10, Lorg/aspectj/runtime/reflect/k;

    .line 113
    .line 114
    move-object v2, v10

    .line 115
    move-object v4, p2

    .line 116
    move-object v7, v8

    .line 117
    move-object v8, v9

    .line 118
    move-object v9, v1

    .line 119
    invoke-direct/range {v2 .. v9}, Lorg/aspectj/runtime/reflect/k;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 120
    .line 121
    .line 122
    return-object v10
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/aspectj/lang/c$b;
    .locals 9

    .line 1
    move-object v8, p0

    .line 2
    const-string v6, ""

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p2

    .line 6
    move-object v2, p3

    .line 7
    move-object v3, p4

    .line 8
    move-object v4, p5

    .line 9
    move-object v5, p6

    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lorg/aspectj/runtime/reflect/h$b;

    .line 17
    .line 18
    iget v2, v8, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 19
    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    iput v3, v8, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    move/from16 v4, p8

    .line 26
    .line 27
    invoke-virtual {p0, v4, v3}, Lorg/aspectj/runtime/reflect/e;->K(II)Lad/z;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move-object v4, p1

    .line 32
    invoke-direct {v1, v2, p1, v0, v3}, Lorg/aspectj/runtime/reflect/h$b;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lad/z;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/aspectj/lang/c$b;
    .locals 9

    .line 1
    move-object v8, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p2

    .line 4
    move-object v2, p3

    .line 5
    move-object v3, p4

    .line 6
    move-object v4, p5

    .line 7
    move-object v5, p6

    .line 8
    move-object/from16 v6, p7

    .line 9
    .line 10
    move-object/from16 v7, p8

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lorg/aspectj/runtime/reflect/h$b;

    .line 17
    .line 18
    iget v2, v8, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 19
    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    iput v3, v8, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    move/from16 v4, p9

    .line 26
    .line 27
    invoke-virtual {p0, v4, v3}, Lorg/aspectj/runtime/reflect/e;->K(II)Lad/z;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move-object v4, p1

    .line 32
    invoke-direct {v1, v2, p1, v0, v3}, Lorg/aspectj/runtime/reflect/h$b;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lad/z;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;
    .locals 3

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h$b;

    .line 2
    .line 3
    iget v1, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {p0, p3, v2}, Lorg/aspectj/runtime/reflect/e;->K(II)Lad/z;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/aspectj/runtime/reflect/h$b;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lad/z;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public I(Ljava/lang/String;Lorg/aspectj/lang/e;II)Lorg/aspectj/lang/c$b;
    .locals 3

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h$b;

    .line 2
    .line 3
    iget v1, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 8
    .line 9
    invoke-virtual {p0, p3, p4}, Lorg/aspectj/runtime/reflect/e;->K(II)Lad/z;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/aspectj/runtime/reflect/h$b;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lad/z;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public J(Ljava/lang/String;Lorg/aspectj/lang/e;Lad/z;)Lorg/aspectj/lang/c$b;
    .locals 3

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h$b;

    .line 2
    .line 3
    iget v1, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 8
    .line 9
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/aspectj/runtime/reflect/h$b;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lad/z;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public K(II)Lad/z;
    .locals 2

    .line 1
    new-instance p2, Lorg/aspectj/runtime/reflect/m;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/e;->a:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/e;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p2, v0, v1, p1}, Lorg/aspectj/runtime/reflect/m;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method

.method public L()Lad/c0;
    .locals 2

    .line 1
    const-string v0, "Ljava/lang/Object;"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lorg/aspectj/runtime/reflect/o;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lorg/aspectj/runtime/reflect/o;-><init>(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

.method public M(Ljava/lang/Class;)Lad/c0;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/o;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/o;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public N(Ljava/lang/String;)Lad/c0;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/o;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/o;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public b(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Lad/b;
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/a;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/a;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    iget-object v1, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 17
    .line 18
    invoke-virtual {v8, v1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 19
    .line 20
    .line 21
    return-object v8
.end method

.method public c(Ljava/lang/String;)Lad/b;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/b;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v1, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 10
    .line 11
    move-object v2, p3

    .line 12
    invoke-static {p3, v1}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    new-instance v1, Ljava/util/StringTokenizer;

    .line 17
    .line 18
    const-string v2, ":"

    .line 19
    .line 20
    move-object v4, p4

    .line 21
    invoke-direct {v1, p4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    new-array v6, v4, [Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    :goto_0
    if-ge v8, v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    iget-object v10, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 39
    .line 40
    invoke-static {v9, v10}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    aput-object v9, v6, v8

    .line 45
    .line 46
    add-int/lit8 v8, v8, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    .line 50
    .line 51
    move-object/from16 v4, p5

    .line 52
    .line 53
    invoke-direct {v1, v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    new-array v8, v4, [Ljava/lang/String;

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    :goto_1
    if-ge v9, v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    aput-object v10, v8, v9

    .line 70
    .line 71
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    .line 75
    .line 76
    move-object/from16 v4, p6

    .line 77
    .line 78
    invoke-direct {v1, v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    new-array v9, v2, [Ljava/lang/Class;

    .line 86
    .line 87
    :goto_2
    if-ge v7, v2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v10, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 94
    .line 95
    invoke-static {v4, v10}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    aput-object v4, v9, v7

    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget-object v1, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 105
    .line 106
    move-object/from16 v2, p7

    .line 107
    .line 108
    invoke-static {v2, v1}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v10, Lorg/aspectj/runtime/reflect/a;

    .line 113
    .line 114
    move-object v2, v10

    .line 115
    move-object v4, p2

    .line 116
    move-object v7, v8

    .line 117
    move-object v8, v9

    .line 118
    move-object v9, v1

    .line 119
    invoke-direct/range {v2 .. v9}, Lorg/aspectj/runtime/reflect/a;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 123
    .line 124
    invoke-virtual {v10, v1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 125
    .line 126
    .line 127
    return-object v10
.end method

.method public e(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lad/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lorg/aspectj/runtime/reflect/b;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public f(Ljava/lang/String;)Lad/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/b;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/StringTokenizer;

    .line 8
    .line 9
    const-string v1, ":"

    .line 10
    .line 11
    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 19
    .line 20
    invoke-static {p2, v0}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance v0, Ljava/util/StringTokenizer;

    .line 25
    .line 26
    invoke-direct {v0, p3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    new-instance v0, Lorg/aspectj/runtime/reflect/b;

    .line 34
    .line 35
    invoke-direct {v0, p1, p2, p3}, Lorg/aspectj/runtime/reflect/b;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public i(ILjava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)Lad/g;
    .locals 7

    .line 1
    new-instance v6, Lorg/aspectj/runtime/reflect/d;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/d;-><init>(ILjava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 13
    .line 14
    invoke-virtual {v6, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 15
    .line 16
    .line 17
    return-object v6
.end method

.method public j(Ljava/lang/String;)Lad/g;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/d;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/d;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/g;
    .locals 7

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    invoke-static {p2, p1}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance p1, Ljava/util/StringTokenizer;

    .line 14
    .line 15
    const-string p2, ":"

    .line 16
    .line 17
    invoke-direct {p1, p3, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    new-array v4, p3, [Ljava/lang/Class;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, p3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    iget-object v6, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 35
    .line 36
    invoke-static {v5, v6}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    aput-object v5, v4, v1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/util/StringTokenizer;

    .line 46
    .line 47
    invoke-direct {p1, p4, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    new-array v5, p3, [Ljava/lang/String;

    .line 55
    .line 56
    const/4 p4, 0x0

    .line 57
    :goto_1
    if-ge p4, p3, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    aput-object v1, v5, p4

    .line 64
    .line 65
    add-int/lit8 p4, p4, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance p1, Ljava/util/StringTokenizer;

    .line 69
    .line 70
    invoke-direct {p1, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    new-array v6, p2, [Ljava/lang/Class;

    .line 78
    .line 79
    :goto_2
    if-ge v0, p2, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    iget-object p4, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 86
    .line 87
    invoke-static {p3, p4}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    aput-object p3, v6, v0

    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    new-instance p1, Lorg/aspectj/runtime/reflect/d;

    .line 97
    .line 98
    move-object v1, p1

    .line 99
    invoke-direct/range {v1 .. v6}, Lorg/aspectj/runtime/reflect/d;-><init>(ILjava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 105
    .line 106
    .line 107
    return-object p1
.end method

.method public l(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$a;
    .locals 3

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h$a;

    .line 2
    .line 3
    iget v1, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {p0, p3, v2}, Lorg/aspectj/runtime/reflect/e;->K(II)Lad/z;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/aspectj/runtime/reflect/h$a;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lad/z;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public m(Ljava/lang/String;Lorg/aspectj/lang/e;II)Lorg/aspectj/lang/c$a;
    .locals 3

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h$a;

    .line 2
    .line 3
    iget v1, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 8
    .line 9
    invoke-virtual {p0, p3, p4}, Lorg/aspectj/runtime/reflect/e;->K(II)Lad/z;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/aspectj/runtime/reflect/h$a;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lad/z;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public n(Ljava/lang/String;Lorg/aspectj/lang/e;Lad/z;)Lorg/aspectj/lang/c$a;
    .locals 3

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/h$a;

    .line 2
    .line 3
    iget v1, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lorg/aspectj/runtime/reflect/e;->d:I

    .line 8
    .line 9
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/aspectj/runtime/reflect/h$a;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lad/z;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public p(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lad/l;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/f;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lorg/aspectj/runtime/reflect/f;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public q(Ljava/lang/String;)Lad/l;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/f;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/f;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/l;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    invoke-static {p3, v0}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 14
    .line 15
    invoke-static {p4, v0}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    new-instance v0, Lorg/aspectj/runtime/reflect/f;

    .line 20
    .line 21
    invoke-direct {v0, p1, p2, p3, p4}, Lorg/aspectj/runtime/reflect/f;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public s(ILjava/lang/Class;)Lad/m;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/g;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/aspectj/runtime/reflect/g;-><init>(ILjava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public t(Ljava/lang/String;)Lad/m;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/g;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/g;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)Lad/m;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    invoke-static {p2, v0}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lorg/aspectj/runtime/reflect/g;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lorg/aspectj/runtime/reflect/g;-><init>(ILjava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public z()Lad/r;
    .locals 2

    .line 1
    const-string v0, "Ljava/lang/Object;"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/aspectj/runtime/reflect/e;->h(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lorg/aspectj/runtime/reflect/i;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lorg/aspectj/runtime/reflect/i;-><init>(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/e;->b:Ljava/lang/ClassLoader;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lorg/aspectj/runtime/reflect/l;->A(Ljava/lang/ClassLoader;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method
