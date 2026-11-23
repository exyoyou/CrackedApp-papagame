.class public final Lcom/kuaishou/weapon/p0/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kuaishou/weapon/p0/dk$a;
    }
.end annotation


# static fields
.field private static a:Lcom/kuaishou/weapon/p0/dk$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kuaishou/weapon/p0/dk;->b(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "arm64-v8a"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "armeabi-v7a"

    .line 11
    .line 12
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/kuaishou/weapon/p0/dk;->c(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dk$a;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    sget-object v1, Lcom/kuaishou/weapon/p0/dk$a;->c:Lcom/kuaishou/weapon/p0/dk$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-ne p0, v1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :catchall_0
    :cond_0
    return v0
.end method

.method private static c(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dk$a;
    .locals 5

    .line 1
    sget-object v0, Lcom/kuaishou/weapon/p0/dk;->a:Lcom/kuaishou/weapon/p0/dk$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x17

    .line 9
    .line 10
    if-lt v0, v1, :cond_2

    .line 11
    .line 12
    invoke-static {}, Lt1/a;->a()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    sget-object p0, Lcom/kuaishou/weapon/p0/dk$a;->c:Lcom/kuaishou/weapon/p0/dk$a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object p0, Lcom/kuaishou/weapon/p0/dk$a;->b:Lcom/kuaishou/weapon/p0/dk$a;

    .line 22
    .line 23
    :goto_0
    sput-object p0, Lcom/kuaishou/weapon/p0/dk;->a:Lcom/kuaishou/weapon/p0/dk$a;

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    :try_start_0
    const-class v0, Ldalvik/system/VMRuntime;

    .line 27
    .line 28
    const-string v1, "getRuntime"

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    new-array v3, v2, [Ljava/lang/Class;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v3, "is64Bit"

    .line 38
    .line 39
    new-array v4, v2, [Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-array v4, v2, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-array v1, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    sget-object v0, Lcom/kuaishou/weapon/p0/dk$a;->c:Lcom/kuaishou/weapon/p0/dk$a;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    sget-object v0, Lcom/kuaishou/weapon/p0/dk$a;->b:Lcom/kuaishou/weapon/p0/dk$a;

    .line 69
    .line 70
    :goto_1
    sput-object v0, Lcom/kuaishou/weapon/p0/dk;->a:Lcom/kuaishou/weapon/p0/dk$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 82
    .line 83
    const-string v0, "arm64"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_4

    .line 90
    .line 91
    sget-object p0, Lcom/kuaishou/weapon/p0/dk$a;->c:Lcom/kuaishou/weapon/p0/dk$a;

    .line 92
    .line 93
    sput-object p0, Lcom/kuaishou/weapon/p0/dk;->a:Lcom/kuaishou/weapon/p0/dk$a;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    sget-object p0, Lcom/kuaishou/weapon/p0/dk$a;->a:Lcom/kuaishou/weapon/p0/dk$a;

    .line 97
    .line 98
    sput-object p0, Lcom/kuaishou/weapon/p0/dk;->a:Lcom/kuaishou/weapon/p0/dk$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    sget-object p0, Lcom/kuaishou/weapon/p0/dk$a;->a:Lcom/kuaishou/weapon/p0/dk$a;

    .line 106
    .line 107
    sput-object p0, Lcom/kuaishou/weapon/p0/dk;->a:Lcom/kuaishou/weapon/p0/dk$a;

    .line 108
    .line 109
    :goto_2
    sget-object p0, Lcom/kuaishou/weapon/p0/dk;->a:Lcom/kuaishou/weapon/p0/dk$a;

    .line 110
    .line 111
    return-object p0
.end method
