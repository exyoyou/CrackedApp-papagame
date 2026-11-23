.class public final Lcom/swift/sandhook/utils/Unsafe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Unsafe"

.field private static arrayBaseOffsetMethod:Ljava/lang/reflect/Method;

.field private static arrayIndexScaleMethod:Ljava/lang/reflect/Method;

.field private static getIntMethod:Ljava/lang/reflect/Method;

.field private static getLongMethod:Ljava/lang/reflect/Method;

.field private static objectArrayClass:Ljava/lang/Class;

.field private static volatile supported:Z

.field private static unsafe:Ljava/lang/Object;

.field private static unsafeClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Class;

    .line 4
    .line 5
    const-class v2, [Ljava/lang/Object;

    .line 6
    .line 7
    sput-object v2, Lcom/swift/sandhook/utils/Unsafe;->objectArrayClass:Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    :try_start_0
    const-class v4, Lsun/misc/Unsafe;

    .line 12
    .line 13
    sput-object v4, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    .line 14
    .line 15
    const-string v5, "theUnsafe"

    .line 16
    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sput-object v4, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    :try_start_1
    sget-object v4, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    .line 32
    .line 33
    const-string v5, "THE_ONE"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sput-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_1
    nop

    .line 50
    :goto_0
    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    :try_start_2
    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    .line 55
    .line 56
    const-string v4, "arrayBaseOffset"

    .line 57
    .line 58
    new-array v5, v3, [Ljava/lang/Class;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    aput-object v1, v5, v6

    .line 62
    .line 63
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sput-object v2, Lcom/swift/sandhook/utils/Unsafe;->arrayBaseOffsetMethod:Ljava/lang/reflect/Method;

    .line 68
    .line 69
    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    .line 70
    .line 71
    const-string v4, "arrayIndexScale"

    .line 72
    .line 73
    new-array v5, v3, [Ljava/lang/Class;

    .line 74
    .line 75
    aput-object v1, v5, v6

    .line 76
    .line 77
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sput-object v1, Lcom/swift/sandhook/utils/Unsafe;->arrayIndexScaleMethod:Ljava/lang/reflect/Method;

    .line 82
    .line 83
    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    .line 84
    .line 85
    const-string v2, "getInt"

    .line 86
    .line 87
    const/4 v4, 0x2

    .line 88
    new-array v5, v4, [Ljava/lang/Class;

    .line 89
    .line 90
    aput-object v0, v5, v6

    .line 91
    .line 92
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 93
    .line 94
    aput-object v7, v5, v3

    .line 95
    .line 96
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    sput-object v1, Lcom/swift/sandhook/utils/Unsafe;->getIntMethod:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    .line 103
    .line 104
    const-string v2, "getLong"

    .line 105
    .line 106
    new-array v4, v4, [Ljava/lang/Class;

    .line 107
    .line 108
    aput-object v0, v4, v6

    .line 109
    .line 110
    aput-object v7, v4, v3

    .line 111
    .line 112
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/swift/sandhook/utils/Unsafe;->getLongMethod:Ljava/lang/reflect/Method;

    .line 117
    .line 118
    sput-boolean v3, Lcom/swift/sandhook/utils/Unsafe;->supported:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    .line 120
    :catch_2
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static arrayBaseOffset(Ljava/lang/Class;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->arrayBaseOffsetMethod:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object p0, v3, v0

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    return v0
.end method

.method public static arrayIndexScale(Ljava/lang/Class;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->arrayIndexScaleMethod:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object p0, v3, v0

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    return v0
.end method

.method public static getInt(Ljava/lang/Object;J)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->getIntMethod:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object p0, v3, v0

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object p0, v3, p1

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p0

    .line 29
    :catch_0
    return v0
.end method

.method public static getLong(Ljava/lang/Object;J)J
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/swift/sandhook/utils/Unsafe;->getLongMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p0, v2, v3

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object p0, v2, p1

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/Long;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-wide p0

    .line 29
    :catch_0
    const-wide/16 p0, 0x0

    .line 30
    .line 31
    return-wide p0
.end method

.method public static getObjectAddress(Ljava/lang/Object;)J
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    sget-object p0, Lcom/swift/sandhook/utils/Unsafe;->objectArrayClass:Ljava/lang/Class;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/swift/sandhook/utils/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    .line 17
    sget-object p0, Lcom/swift/sandhook/utils/Unsafe;->objectArrayClass:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/swift/sandhook/utils/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-long v1, p0

    .line 24
    invoke-static {v0, v1, v2}, Lcom/swift/sandhook/utils/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    :cond_0
    sget-object p0, Lcom/swift/sandhook/utils/Unsafe;->objectArrayClass:Ljava/lang/Class;

    .line 30
    .line 31
    invoke-static {p0}, Lcom/swift/sandhook/utils/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    int-to-long v1, p0

    .line 36
    invoke-static {v0, v1, v2}, Lcom/swift/sandhook/utils/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    int-to-long v0, p0

    .line 41
    const-wide v2, 0xffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v0, v2

    .line 47
    return-wide v0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    const-string v0, "get object address error"

    .line 50
    .line 51
    invoke-static {v0, p0}, Lcom/swift/sandhook/HookLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    const-wide/16 v0, -0x1

    .line 55
    .line 56
    return-wide v0
.end method

.method public static support()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/swift/sandhook/utils/Unsafe;->supported:Z

    .line 2
    .line 3
    return v0
.end method
