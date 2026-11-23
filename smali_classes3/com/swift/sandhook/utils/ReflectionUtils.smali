.class public Lcom/swift/sandhook/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static addWhiteListMethod:Ljava/lang/reflect/Method;

.field public static forNameMethod:Ljava/lang/reflect/Method;

.field public static getMethodMethod:Ljava/lang/reflect/Method;

.field static vmRuntime:Ljava/lang/Object;

.field static vmRuntimeClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Class;

    .line 4
    .line 5
    :try_start_0
    const-string v2, "getDeclaredMethod"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    new-array v4, v3, [Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v0, v4, v5

    .line 12
    .line 13
    const-class v6, [Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    aput-object v6, v4, v7

    .line 17
    .line 18
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sput-object v2, Lcom/swift/sandhook/utils/ReflectionUtils;->getMethodMethod:Ljava/lang/reflect/Method;

    .line 23
    .line 24
    const-string v2, "forName"

    .line 25
    .line 26
    new-array v4, v7, [Ljava/lang/Class;

    .line 27
    .line 28
    aput-object v0, v4, v5

    .line 29
    .line 30
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->forNameMethod:Ljava/lang/reflect/Method;

    .line 35
    .line 36
    new-array v1, v7, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v2, "dalvik.system.VMRuntime"

    .line 39
    .line 40
    aput-object v2, v1, v5

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Class;

    .line 48
    .line 49
    sput-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->vmRuntimeClass:Ljava/lang/Class;

    .line 50
    .line 51
    sget-object v1, Lcom/swift/sandhook/utils/ReflectionUtils;->getMethodMethod:Ljava/lang/reflect/Method;

    .line 52
    .line 53
    new-array v4, v3, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v6, "setHiddenApiExemptions"

    .line 56
    .line 57
    aput-object v6, v4, v5

    .line 58
    .line 59
    new-array v6, v7, [Ljava/lang/Class;

    .line 60
    .line 61
    const-class v8, [Ljava/lang/String;

    .line 62
    .line 63
    aput-object v8, v6, v5

    .line 64
    .line 65
    aput-object v6, v4, v7

    .line 66
    .line 67
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/reflect/Method;

    .line 72
    .line 73
    sput-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->addWhiteListMethod:Ljava/lang/reflect/Method;

    .line 74
    .line 75
    sget-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->getMethodMethod:Ljava/lang/reflect/Method;

    .line 76
    .line 77
    sget-object v1, Lcom/swift/sandhook/utils/ReflectionUtils;->vmRuntimeClass:Ljava/lang/Class;

    .line 78
    .line 79
    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    .line 81
    const-string v4, "getRuntime"

    .line 82
    .line 83
    aput-object v4, v3, v5

    .line 84
    .line 85
    aput-object v2, v3, v7

    .line 86
    .line 87
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/reflect/Method;

    .line 92
    .line 93
    new-array v1, v5, [Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->vmRuntime:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static varargs addReflectionWhiteList([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->addWhiteListMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    sget-object v1, Lcom/swift/sandhook/utils/ReflectionUtils;->vmRuntime:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p0, v2, v3

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static passApiCheck()Z
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "Landroid/"

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const-string v2, "Lcom/android/"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v2, v0, v3

    .line 13
    .line 14
    const-string v2, "Ljava/lang/"

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    aput-object v2, v0, v4

    .line 18
    .line 19
    const-string v2, "Ldalvik/system/"

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    aput-object v2, v0, v4

    .line 23
    .line 24
    const-string v2, "Llibcore/io/"

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    aput-object v2, v0, v4

    .line 28
    .line 29
    invoke-static {v0}, Lcom/swift/sandhook/utils/ReflectionUtils;->addReflectionWhiteList([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return v1
.end method
