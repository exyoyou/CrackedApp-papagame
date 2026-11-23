.class public Lcom/swift/sandhook/xposedcompat/utils/ApplicationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static application:Landroid/app/Application;

.field private static classActivityThread:Ljava/lang/Class;

.field private static currentApplicationMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 4

    .line 1
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/ApplicationUtils;->application:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/ApplicationUtils;->currentApplicationMethod:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/swift/sandhook/xposedcompat/utils/ApplicationUtils;->classActivityThread:Ljava/lang/Class;

    .line 18
    .line 19
    const-string v2, "currentApplication"

    .line 20
    .line 21
    new-array v3, v1, [Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/swift/sandhook/xposedcompat/utils/ApplicationUtils;->currentApplicationMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/ApplicationUtils;->currentApplicationMethod:Ljava/lang/reflect/Method;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_2
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/app/Application;

    .line 47
    .line 48
    sput-object v0, Lcom/swift/sandhook/xposedcompat/utils/ApplicationUtils;->application:Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    :catch_1
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/ApplicationUtils;->application:Landroid/app/Application;

    .line 51
    .line 52
    return-object v0
.end method
