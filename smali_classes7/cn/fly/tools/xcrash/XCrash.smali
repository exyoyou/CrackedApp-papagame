.class public final Lcn/fly/tools/xcrash/XCrash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tools/xcrash/XCrash$a;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcn/fly/tools/xcrash/a;

.field private static appId:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static initialized:Z

.field private static logDir:Ljava/lang/String;

.field public static nativeLibDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/fly/tools/xcrash/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/fly/tools/xcrash/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/fly/tools/xcrash/XCrash;->LOGGER:Lcn/fly/tools/xcrash/a;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcn/fly/tools/xcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    .line 10
    .line 11
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

.method public static fC(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/fly/tools/xcrash/NativeHandler;->nrInited()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcn/fly/tools/xcrash/NativeHandler;->fC(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static get0(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/fly/tools/xcrash/NativeHandler;->nrInited()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3}, Lcn/fly/tools/xcrash/NativeHandler;->get0(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method static getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/fly/tools/xcrash/XCrash;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/fly/tools/xcrash/XCrash;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getLogDir()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/fly/tools/xcrash/XCrash;->logDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static getLogger()Lcn/fly/tools/xcrash/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/fly/tools/xcrash/XCrash;->LOGGER:Lcn/fly/tools/xcrash/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getP(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcn/fly/tools/xcrash/NativeHandler;->getP(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static init(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcn/fly/tools/xcrash/XCrash;->init(Landroid/content/Context;Lcn/fly/tools/xcrash/XCrash$a;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcn/fly/tools/xcrash/XCrash$a;)I
    .locals 12

    const-class v0, Lcn/fly/tools/xcrash/XCrash;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcn/fly/tools/xcrash/XCrash;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 4
    :try_start_1
    sput-boolean v1, Lcn/fly/tools/xcrash/XCrash;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    .line 5
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    .line 6
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v4, p0

    :goto_0
    if-nez p1, :cond_3

    .line 7
    new-instance p1, Lcn/fly/tools/xcrash/XCrash$a;

    invoke-direct {p1}, Lcn/fly/tools/xcrash/XCrash$a;-><init>()V

    .line 8
    :cond_3
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/fly/tools/xcrash/XCrash;->appId:Ljava/lang/String;

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "007Teh\'f$fi:fHelgh0f"

    .line 10
    invoke-static {p0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/fly/tools/xcrash/XCrash;->appId:Ljava/lang/String;

    .line 11
    :cond_4
    iget-object p0, p1, Lcn/fly/tools/xcrash/XCrash$a;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 12
    sget-object p0, Lcn/fly/FlySDK;->SDK_VERSION_NAME:Ljava/lang/String;

    iput-object p0, p1, Lcn/fly/tools/xcrash/XCrash$a;->a:Ljava/lang/String;

    .line 13
    :cond_5
    iget-object p0, p1, Lcn/fly/tools/xcrash/XCrash$a;->a:Ljava/lang/String;

    sput-object p0, Lcn/fly/tools/xcrash/XCrash;->appVersion:Ljava/lang/String;

    .line 14
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sput-object p0, Lcn/fly/tools/xcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    .line 15
    iget-object p0, p1, Lcn/fly/tools/xcrash/XCrash$a;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "001m"

    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fvv"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/fly_tombstones"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lcn/fly/tools/utils/ResHelper;->checkAndCreateDir(Ljava/lang/String;)Z

    .line 18
    iput-object p0, p1, Lcn/fly/tools/xcrash/XCrash$a;->b:Ljava/lang/String;

    .line 19
    :cond_6
    iget-object p0, p1, Lcn/fly/tools/xcrash/XCrash$a;->b:Ljava/lang/String;

    sput-object p0, Lcn/fly/tools/xcrash/XCrash;->logDir:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 21
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getCurrentProcessName()Ljava/lang/String;

    .line 22
    invoke-static {}, Lcn/fly/tools/xcrash/b;->a()Lcn/fly/tools/xcrash/b;

    move-result-object v5

    iget-object v6, p1, Lcn/fly/tools/xcrash/XCrash$a;->b:Ljava/lang/String;

    iget v7, p1, Lcn/fly/tools/xcrash/XCrash$a;->h:I

    iget v8, p1, Lcn/fly/tools/xcrash/XCrash$a;->t:I

    iget v9, p1, Lcn/fly/tools/xcrash/XCrash$a;->d:I

    iget v10, p1, Lcn/fly/tools/xcrash/XCrash$a;->e:I

    iget v11, p1, Lcn/fly/tools/xcrash/XCrash$a;->c:I

    invoke-virtual/range {v5 .. v11}, Lcn/fly/tools/xcrash/b;->a(Ljava/lang/String;IIIII)V

    .line 23
    iget-boolean p0, p1, Lcn/fly/tools/xcrash/XCrash$a;->r:Z

    if-eqz p0, :cond_7

    .line 24
    invoke-static {}, Lcn/fly/tools/xcrash/NativeHandler;->getInstance()Lcn/fly/tools/xcrash/NativeHandler;

    move-result-object v3

    sget-object v5, Lcn/fly/tools/xcrash/XCrash;->appId:Ljava/lang/String;

    iget-object v6, p1, Lcn/fly/tools/xcrash/XCrash$a;->a:Ljava/lang/String;

    iget-object v7, p1, Lcn/fly/tools/xcrash/XCrash$a;->b:Ljava/lang/String;

    iget-boolean v8, p1, Lcn/fly/tools/xcrash/XCrash$a;->r:Z

    iget-boolean v9, p1, Lcn/fly/tools/xcrash/XCrash$a;->s:Z

    invoke-virtual/range {v3 .. v9}, Lcn/fly/tools/xcrash/NativeHandler;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v2

    .line 25
    :cond_7
    invoke-static {}, Lcn/fly/tools/xcrash/b;->a()Lcn/fly/tools/xcrash/b;

    move-result-object p0

    invoke-virtual {p0}, Lcn/fly/tools/xcrash/b;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs inv0(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/fly/tools/xcrash/NativeHandler;->nrInited()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static/range {p0 .. p5}, Lcn/fly/tools/xcrash/NativeHandler;->inv0(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static nrInited()Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcn/fly/tools/b/c;->a(Landroid/content/Context;)Lcn/fly/tools/b/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcn/fly/tools/b/c;->d()Lcn/fly/tools/b/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Lcn/fly/tools/b/a;->ar()Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 22
    .line 23
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "[HH] nrIni. a: "

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, ", tgV: "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x0

    .line 53
    new-array v5, v4, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v2, v3, v5}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x1e

    .line 59
    .line 60
    if-lt v0, v2, :cond_0

    .line 61
    .line 62
    if-lt v1, v2, :cond_0

    .line 63
    .line 64
    invoke-static {}, Lcn/fly/tools/xcrash/NativeHandler;->nrInited()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    return v0

    .line 69
    :cond_0
    return v4
.end method

.method public static set0(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/fly/tools/xcrash/NativeHandler;->nrInited()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3, p4}, Lcn/fly/tools/xcrash/NativeHandler;->set0(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
