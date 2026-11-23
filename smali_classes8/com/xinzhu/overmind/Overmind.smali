.class public Lcom/xinzhu/overmind/Overmind;
.super Lcom/xinzhu/overmind/client/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/Overmind$ProcessType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "Overmind"

.field private static hostPm:Lcom/xinzhu/haunted/android/content/pm/f;

.field private static hostRealUid:I

.field private static sContext:Landroid/content/Context;

.field private static sOvermind:Lcom/xinzhu/overmind/Overmind;


# instance fields
.field private mActivityLifecycleCallback:Lcom/xinzhu/overmind/client/hook/delegate/a;

.field private mAppLifecycleCallback:Lcom/xinzhu/overmind/client/hook/a;

.field private mClientConfiguration:Lcom/xinzhu/overmind/client/a;

.field private mCustomCallback:Lcom/xinzhu/overmind/custom/CustomCallback;

.field private mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

.field private mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/Overmind;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/Overmind;->sOvermind:Lcom/xinzhu/overmind/Overmind;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sput v0, Lcom/xinzhu/overmind/Overmind;->hostRealUid:I

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mServices:Ljava/util/Map;

    .line 10
    .line 11
    sget-object v0, Lcom/xinzhu/overmind/client/hook/a;->a:Lcom/xinzhu/overmind/client/hook/a;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mAppLifecycleCallback:Lcom/xinzhu/overmind/client/hook/a;

    .line 14
    .line 15
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/a;->b:Lcom/xinzhu/overmind/client/hook/delegate/a;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mActivityLifecycleCallback:Lcom/xinzhu/overmind/client/hook/delegate/a;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mCustomCallback:Lcom/xinzhu/overmind/custom/CustomCallback;

    .line 21
    .line 22
    return-void
.end method

.method public static critical(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public static get()Lcom/xinzhu/overmind/Overmind;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->sOvermind:Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->sContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getHostPkg()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getHostPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getHostPm()Lcom/xinzhu/haunted/android/content/pm/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getHostUid()I
    .locals 1

    .line 1
    sget v0, Lcom/xinzhu/overmind/Overmind;->hostRealUid:I

    .line 2
    .line 3
    return v0
.end method

.method public static getHostUserId()I
    .locals 1

    .line 1
    sget v0, Lcom/xinzhu/overmind/Overmind;->hostRealUid:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static getMainPkg()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getMainPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getMindActivityManager()Lma/a;
    .locals 1

    .line 1
    invoke-static {}, Lma/a;->d()Lma/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getMindJobManager()Lma/e;
    .locals 1

    .line 1
    invoke-static {}, Lma/e;->c()Lma/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getMindPackageManager()Lma/g;
    .locals 1

    .line 1
    invoke-static {}, Lma/g;->d()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getMindStorageManager()Lma/h;
    .locals 1

    .line 1
    invoke-static {}, Lma/h;->a()Lma/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getOvermindBuildDate()Ljava/lang/String;
    .locals 1

    const-string v0, "260104.174608"

    return-object v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->sContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getPluginPkg()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getPluginPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->J()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xinzhu/overmind/Overmind;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "get process name "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-string v1, "activity"

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/app/ActivityManager;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 63
    .line 64
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 65
    .line 66
    if-ne v2, v0, :cond_0

    .line 67
    .line 68
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 p0, 0x0

    .line 72
    :goto_0
    if-eqz p0, :cond_2

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 76
    .line 77
    const-string v0, "processName = null"

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public static getStackTraceElement()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    :goto_0
    array-length v2, v0

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    aget-object v2, v0, v1

    .line 14
    .line 15
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "\tat "

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v5, "."

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, "("

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, ":"

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ")"

    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method private initHostPm(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/xinzhu/haunted/android/content/pm/f;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->P()Landroid/os/IInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/content/pm/f;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sput-object p1, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/f;

    .line 11
    .line 12
    return-void
.end method

.method private initJarEnv()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "junit.jar"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/xinzhu/overmind/a;->h:Ljava/io/File;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/l;->e(Ljava/io/InputStream;Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public static initJavaHooks()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/VMCore;->initLibrary()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lda/a;->e()Lda/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lda/a;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lda/a;->e()Lda/a;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lda/a;->g()Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sput-boolean v1, Lcom/swift/sandhook/SandHookConfig;->DEBUG:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sput-boolean v0, Lcom/swift/sandhook/SandHookConfig;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_0
    sput-boolean v0, Lcom/swift/sandhook/HookLog;->DEBUG:Z

    .line 38
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    sput v1, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 42
    .line 43
    sget v1, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 44
    .line 45
    const/16 v2, 0x1a

    .line 46
    .line 47
    if-ge v1, v2, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_1
    sput-boolean v1, Lcom/swift/sandhook/SandHookConfig;->compiler:Z

    .line 53
    .line 54
    sput-boolean v0, Lcom/swift/sandhook/SandHookConfig;->delayHook:Z

    .line 55
    .line 56
    new-instance v0, Lcom/xinzhu/overmind/Overmind$b;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/xinzhu/overmind/Overmind$b;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/swift/sandhook/SandHook;->setHookModeCallBack(Lcom/swift/sandhook/SandHook$HookModeCallBack;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/swift/sandhook/SandHook;->disableVMInline()Z

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/io/File;

    .line 68
    .line 69
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "hook_cache"

    .line 78
    .line 79
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lcom/swift/sandhook/xposedcompat/XposedCompat;->cacheDir:Ljava/io/File;

    .line 83
    .line 84
    return-void
.end method

.method private initService()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "activity_manager"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "package_manager"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "storage_manager"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "job_manager"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static is64Bit()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lt1/a;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "arm64-v8a"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public static isInPlugin()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->is64Bit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private isMAppClientProcess(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/a;->getHostPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ":p"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :catch_0
    :cond_0
    return v2
.end method

.method public static isOvermindPkg(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public static isPkgInstalledOutside(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/f;

    .line 9
    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/xinzhu/haunted/android/content/pm/f;->g(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v1, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/f;

    .line 22
    .line 23
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, p0, v0, v2}, Lcom/xinzhu/haunted/android/content/pm/f;->f(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    if-eqz p0, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :catch_0
    :cond_1
    return v0
.end method

.method public static isPluginPkgInstalled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xinzhu/overmind/Overmind;->isPkgInstalledOutside(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isPluginValid()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public static mainThread()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->F()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private startLogcat()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, "_logcat.txt"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "logcat -c"

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/x;->b(Ljava/lang/String;Z)Lcom/xinzhu/overmind/utils/x$a;

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "logcat >> "

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " &"

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/x;->b(Ljava/lang/String;Z)Lcom/xinzhu/overmind/utils/x$a;

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private static unsealReflectionRestrictions()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "L"

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    filled-new-array {v3}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->addHiddenApiExemptions([Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->z()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    :try_start_0
    const-string v2, "forName"

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    new-array v5, v4, [Ljava/lang/Class;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    aput-object v0, v5, v6

    .line 34
    .line 35
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-array v5, v4, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v7, "dalvik.system.VMRuntime"

    .line 42
    .line 43
    aput-object v7, v5, v6

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/Class;

    .line 51
    .line 52
    const-string v5, "getDeclaredMethod"

    .line 53
    .line 54
    const/4 v8, 0x2

    .line 55
    new-array v9, v8, [Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v0, v9, v6

    .line 58
    .line 59
    const-class v0, [Ljava/lang/Class;

    .line 60
    .line 61
    aput-object v0, v9, v4

    .line 62
    .line 63
    invoke-virtual {v1, v5, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-array v1, v8, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v5, "getRuntime"

    .line 70
    .line 71
    aput-object v5, v1, v6

    .line 72
    .line 73
    new-array v5, v6, [Ljava/lang/Class;

    .line 74
    .line 75
    aput-object v5, v1, v4

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/reflect/Method;

    .line 82
    .line 83
    new-array v5, v8, [Ljava/lang/Object;

    .line 84
    .line 85
    const-string v8, "setHiddenApiExemptions"

    .line 86
    .line 87
    aput-object v8, v5, v6

    .line 88
    .line 89
    new-array v8, v4, [Ljava/lang/Class;

    .line 90
    .line 91
    const-class v9, [Ljava/lang/String;

    .line 92
    .line 93
    aput-object v9, v8, v6

    .line 94
    .line 95
    aput-object v8, v5, v4

    .line 96
    .line 97
    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/reflect/Method;

    .line 102
    .line 103
    new-array v2, v6, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {v1, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-array v2, v4, [Ljava/lang/Object;

    .line 110
    .line 111
    new-array v4, v4, [Ljava/lang/String;

    .line 112
    .line 113
    aput-object v3, v4, v6

    .line 114
    .line 115
    aput-object v4, v2, v6

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    const-string v0, "reflect unsealing failed"

    .line 126
    .line 127
    invoke-static {v0}, Lcom/xinzhu/overmind/Overmind;->critical(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
    .locals 1

    .line 1
    invoke-static {}, Lma/i;->d()Lma/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lma/i;->a(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public deleteUser(I)V
    .locals 1

    .line 1
    invoke-static {}, Lma/i;->d()Lma/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lma/i;->b(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public doAttachBaseContext(Landroid/content/Context;Lcom/xinzhu/overmind/client/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "doAttachBaseContext begin"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_b

    .line 9
    .line 10
    iget-object v1, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string p1, "doAttachBaseContext second time, skip."

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/Overmind;->initHostPm(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 24
    .line 25
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->unsealReflectionRestrictions()V

    .line 26
    .line 27
    .line 28
    sput-object p1, Lcom/xinzhu/overmind/Overmind;->sContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/xinzhu/overmind/Overmind;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Main:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string p2, ":mind"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Server:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string p2, ":plugin_monitor"

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->PluginMonitor:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 77
    .line 78
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->ifDisablePluginPackageAutoManage()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->p()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/Overmind;->isMAppClientProcess(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->MAppClient:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 101
    .line 102
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->initJavaHooks()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Others:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 109
    .line 110
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->isServerProcess()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->ifDisableDaemonService()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_8

    .line 125
    .line 126
    new-instance p1, Landroid/content/Intent;

    .line 127
    .line 128
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    const-class v0, Lcom/xinzhu/overmind/server/DaemonService;

    .line 136
    .line 137
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_6

    .line 145
    .line 146
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-static {p2, p1}, Landroidx/media/session/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    invoke-direct {p0}, Lcom/xinzhu/overmind/Overmind;->initService()V

    .line 163
    .line 164
    .line 165
    :cond_8
    :goto_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_9

    .line 174
    .line 175
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->isMonitorProcess()Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_a

    .line 184
    .line 185
    :cond_9
    :try_start_0
    const-string p1, "activity_manager"

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-instance p2, Lcom/xinzhu/overmind/Overmind$c;

    .line 192
    .line 193
    invoke-direct {p2, p0}, Lcom/xinzhu/overmind/Overmind$c;-><init>(Lcom/xinzhu/overmind/Overmind;)V

    .line 194
    .line 195
    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :catchall_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    :cond_a
    :goto_2
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/c;->c()Lcom/xinzhu/overmind/client/hook/c;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/hook/c;->d()V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    const-string p2, "ClientConfiguration is null!"

    .line 216
    .line 217
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1
.end method

.method public doCreate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/b;->d()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public doTransferInstalls()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lma/g;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public doTransferInstallsOnlyForMainPackage()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lma/g;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getActivityLifecycleCallback()Lcom/xinzhu/overmind/client/hook/delegate/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mActivityLifecycleCallback:Lcom/xinzhu/overmind/client/hook/delegate/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mAppLifecycleCallback:Lcom/xinzhu/overmind/client/hook/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomCallback()Lcom/xinzhu/overmind/custom/CustomCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mCustomCallback:Lcom/xinzhu/overmind/custom/CustomCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getHostPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lma/g;->g(II)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lma/g;->h(II)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getInstalledXPModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/entity/pm/InstalledModule;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainAuthorityPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getMainAuthorityPrefix()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMainPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getMainPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNotificationLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getNotificationLargeIcon()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNotificationSmallIcon()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getNotificationSmallIcon()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPluginAuthorityPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getPluginAuthorityPrefix()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPluginPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getPluginPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRecentTasksContainPlugin(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "activity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/ActivityManager;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/plugin/b;->j(II)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v0
.end method

.method public getRunningAppProcessesContainPlugin()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "activity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/ActivityManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->k()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->isServerProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/server/l;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mServices:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/os/IBinder;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "_VM_|_server_name_"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/xinzhu/overmind/client/g;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "VM"

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v1, v2, v3, v0}, Lcom/xinzhu/overmind/utils/wrappers/ContentProviderWrapper;->acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "_VM_|_server_"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lsa/s;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/xinzhu/overmind/Overmind;->mServices:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/user/MindUserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lma/i;->d()Lma/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lma/i;->f()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hostCheckPermission(Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    sget-object p2, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/f;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->getPluginPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p2, p1, v2, v3}, Lcom/xinzhu/haunted/android/content/pm/f;->a(Ljava/lang/String;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    .line 24
    :cond_1
    sget-object p2, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/f;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->getMainPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p2, p1, v2, v3}, Lcom/xinzhu/haunted/android/content/pm/f;->a(Ljava/lang/String;Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_1
    return v0
.end method

.method public ifDisableDaemonService()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->ifDisableDaemonService()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ifDisablePluginPackageAutoManage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->ifDisablePluginPackageAutoManage()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ifDisableVirtualDeviceForPackage(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/a;->ifDisableVirtualDeviceForPackage(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public installPackageAsUser_Exist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "installPackageAsUser_Exist pkg: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " user: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    new-instance p2, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 42
    .line 43
    invoke-direct {p2}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "installPackageAsUser_Exist package non-exist: "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, p1, p2}, Lma/g;->r(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method public installPackageAsUser_Storage(Landroid/net/Uri;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 2

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->w()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lma/g;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser_Storage(Ljava/io/File;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lma/g;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser_System(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->d()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1, v1, p2}, Lma/g;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 32
    .line 33
    invoke-direct {p2}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public installXPModule(Landroid/net/Uri;)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->y()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->w()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    const/4 v2, -0x4

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lma/g;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installXPModule(Ljava/io/File;)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->y()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    const/4 v2, -0x4

    invoke-virtual {v0, p1, v1, v2}, Lma/g;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installXPModule(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3

    .line 6
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 7
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->d()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->y()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    const/4 v2, -0x4

    invoke-virtual {v0, p1, v1, v2}, Lma/g;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public isHideRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isHideRoot()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isHideXposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isHideXposed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 5

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isServerProcess()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/user/c;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    move-result-object v4

    iget v3, v3, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    invoke-virtual {v4, p1, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    return v2

    .line 5
    :cond_2
    invoke-static {}, Lma/i;->d()Lma/i;

    move-result-object v0

    invoke-virtual {v0}, Lma/i;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    move-result-object v4

    iget v3, v3, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    invoke-virtual {v4, p1, v3}, Lma/g;->t(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_4
    return v2
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lma/g;->t(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isInstalledXposedModule(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMainProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 2
    .line 3
    sget-object v1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Main:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isModuleEnable(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMonitorProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 2
    .line 3
    sget-object v1, Lcom/xinzhu/overmind/Overmind$ProcessType;->PluginMonitor:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isPluginValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isPluginValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isServerProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 2
    .line 3
    sget-object v1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Server:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isUseGlobalFakePath()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isUseGlobalFakePath()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isVirtualProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 2
    .line 3
    sget-object v1, Lcom/xinzhu/overmind/Overmind$ProcessType;->MAppClient:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isXPEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isXposedModule(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public launchApk(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lma/g;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->E()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1, p2}, Lma/g;->j(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    .line 35
    .line 36
    new-instance v1, Lcom/xinzhu/overmind/Overmind$d;

    .line 37
    .line 38
    invoke-direct {v1, p0, p1, p2}, Lcom/xinzhu/overmind/Overmind$d;-><init>(Lcom/xinzhu/overmind/Overmind;Landroid/content/Intent;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1
.end method

.method public preStartMM()V
    .locals 2

    .line 1
    const-string v0, "com.tencent.mm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lna/e;->e()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/xinzhu/overmind/Overmind$a;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/Overmind$a;-><init>(Lcom/xinzhu/overmind/Overmind;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setActivityLifecycleCallback(Lcom/xinzhu/overmind/client/hook/delegate/a;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mActivityLifecycleCallback:Lcom/xinzhu/overmind/client/hook/delegate/a;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "activityLifecycleCallback is null!"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setAppLifecycleCallback(Lcom/xinzhu/overmind/client/hook/a;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mAppLifecycleCallback:Lcom/xinzhu/overmind/client/hook/a;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "AppLifecycleCallback is null!"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setCustomCallback(Lcom/xinzhu/overmind/custom/CustomCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mCustomCallback:Lcom/xinzhu/overmind/custom/CustomCallback;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "customCallback is null!"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    return-void
.end method

.method public setModuleEnable(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setXPEnable(Z)V
    .locals 0

    return-void
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lma/a;->startActivity(Landroid/content/Intent;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public stopApk(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lma/a;->d()Lma/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lma/a;->A(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lma/g;->E(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lma/g;->F(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public uninstallXPModule(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/Overmind;->uninstallPackage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public use32BitMainPackage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->use32BitMainPackage()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public useRandomGeneratedVirtualDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->useRandomGeneratedVirtualDevice()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
