.class public Lcom/xinzhu/overmind/server/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String; = "MindProcessManager"

.field public static f:Lcom/xinzhu/overmind/server/h;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/h;->f:Lcom/xinzhu/overmind/server/h;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/xinzhu/overmind/server/h;->a:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/xinzhu/overmind/server/h;->c:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/xinzhu/overmind/server/h;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    return-void
.end method

.method private a(Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/os/IBinder;I)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/xinzhu/overmind/client/c$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/client/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->kill()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    new-instance v1, Lcom/xinzhu/overmind/server/h$a;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1, p2}, Lcom/xinzhu/overmind/server/h$a;-><init>(Lcom/xinzhu/overmind/server/h;Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iput-object v0, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    .line 26
    .line 27
    iput p3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 28
    .line 29
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/xinzhu/overmind/client/c;->getActivityThread()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Lcom/xinzhu/haunted/android/app/r$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->appThread:Landroid/os/IInterface;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v0}, Lcom/xinzhu/overmind/client/c;->getActivityThread()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Lcom/xinzhu/haunted/android/app/k;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->appThread:Landroid/os/IInterface;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception p2

    .line 58
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static d()Lcom/xinzhu/overmind/server/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/h;->f:Lcom/xinzhu/overmind/server/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getRunningAppProcessesContainPlugin()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 24
    .line 25
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p0, -0x1

    .line 41
    return p0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getRunningAppProcessesContainPlugin()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 24
    .line 25
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 26
    .line 27
    if-ne v2, p0, :cond_0

    .line 28
    .line 29
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_0
    if-eqz p0, :cond_2

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    const-string v0, "processName = null"

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method private i()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/16 v2, 0x64

    .line 4
    .line 5
    if-ge v1, v2, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 28
    .line 29
    iget v3, v3, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 30
    .line 31
    if-ne v3, v1, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v2, 0x0

    .line 36
    :goto_1
    if-eqz v2, :cond_2

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v1

    .line 42
    :cond_3
    const/4 v0, -0x1

    .line 43
    return v0
.end method

.method private j(Lcom/xinzhu/overmind/server/ProcessRecord;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "initProcess: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "com.xinzhu.overmind.initprocess.clientconfig"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->getProviderAuthority()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "com.xinzhu.overmind.initprocess"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v0, v2, v3, v1}, Lcom/xinzhu/overmind/utils/wrappers/ContentProviderWrapper;->acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "com.xinzhu.overmind.initprocess.client"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lsa/s;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "com.xinzhu.overmind.initprocess.pid"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/xinzhu/overmind/server/h;->a(Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/os/IBinder;I)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 68
    return p1
.end method

.method private n(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ":p"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return p1

    .line 45
    :catch_0
    :cond_1
    return v0
.end method

.method private p()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public b(I)Lcom/xinzhu/overmind/server/ProcessRecord;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/16 v4, 0x3e8

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v1, p1

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/ProcessRecord;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;III)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-object p1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/ProcessRecord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getAppId(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p3, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p3, p0, Lcom/xinzhu/overmind/server/h;->a:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/Map;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1

    .line 33
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-object p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    iget p1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getAppId(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v3, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 43
    .line 44
    iget v5, v4, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 45
    .line 46
    invoke-static {v5}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne p1, v5, :cond_0

    .line 51
    .line 52
    iget-object v5, p0, Lcom/xinzhu/overmind/server/h;->a:Ljava/util/Map;

    .line 53
    .line 54
    iget v6, v4, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 55
    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget v5, v4, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 64
    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/xinzhu/overmind/server/ProcessRecord;->kill()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 84
    .line 85
    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    throw p1

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    throw p1
.end method

.method public l(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getAppId(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p2, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p2, p0, Lcom/xinzhu/overmind/server/h;->a:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/Map;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 51
    .line 52
    iget-boolean v1, p2, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget p2, p2, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 57
    .line 58
    invoke-static {p2}, Lcom/xinzhu/overmind/plugin/b;->l(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/ProcessRecord;->kill()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1
.end method

.method public m(Lcom/xinzhu/overmind/server/ProcessRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->kill()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/xinzhu/overmind/server/h;->a:Ljava/util/Map;

    .line 8
    .line 9
    iget v2, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/Map;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v2, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 29
    .line 30
    iget p1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v6

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    iget-object v1, p0, Lcom/xinzhu/overmind/server/h;->c:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    :try_start_2
    invoke-static {v7}, Lcom/xinzhu/overmind/server/h;->f(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/h;->n(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    move-object v1, p0

    .line 31
    move-object v2, p1

    .line 32
    move-object v3, p2

    .line 33
    move v4, p3

    .line 34
    invoke-virtual/range {v1 .. v7}, Lcom/xinzhu/overmind/server/h;->q(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 35
    .line 36
    .line 37
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    throw p1

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    throw p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/h;->p()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 5
    .line 6
    .line 7
    move-result-object p6

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p6, p1, v0, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 p6, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-object p6

    .line 17
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getAppId(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p3, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/xinzhu/overmind/server/h;->a:Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/Map;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    new-instance v1, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_1
    move-object v7, v1

    .line 49
    iget-object v8, p0, Lcom/xinzhu/overmind/server/h;->c:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v8

    .line 52
    const/4 v1, -0x1

    .line 53
    if-ne p4, v1, :cond_4

    .line 54
    .line 55
    :try_start_0
    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    check-cast p4, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 60
    .line 61
    if-eqz p4, :cond_3

    .line 62
    .line 63
    iget-object v3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    monitor-exit v8

    .line 75
    return-object p4

    .line 76
    :cond_3
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/h;->i()I

    .line 77
    .line 78
    .line 79
    move-result p4

    .line 80
    const-string v3, "MindProcessManager"

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v5, "init vUid = "

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v5, ", vPid = "

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v3, v4}, Lcom/xinzhu/overmind/utils/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    :goto_0
    move v5, p4

    .line 114
    if-eq v5, v1, :cond_6

    .line 115
    .line 116
    new-instance p4, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    move-object v1, p4

    .line 120
    move-object v3, p2

    .line 121
    move v6, p5

    .line 122
    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/ProcessRecord;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;III)V

    .line 123
    .line 124
    .line 125
    iput v0, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    .line 126
    .line 127
    iput v0, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 128
    .line 129
    iput p3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 130
    .line 131
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    iput p3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    .line 136
    .line 137
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-virtual {p3, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->E()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iput-boolean p1, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 150
    .line 151
    invoke-interface {v7, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/xinzhu/overmind/server/h;->a:Ljava/util/Map;

    .line 155
    .line 156
    iget p3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 157
    .line 158
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-interface {p1, p3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, p4}, Lcom/xinzhu/overmind/server/h;->j(Lcom/xinzhu/overmind/server/ProcessRecord;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_5

    .line 170
    .line 171
    invoke-interface {v7, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    iget p1, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 176
    .line 177
    iget-boolean p2, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 178
    .line 179
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/client/g;->d(IZ)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1}, Lcom/xinzhu/overmind/server/h;->e(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iput p1, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 188
    .line 189
    iget-object p2, p0, Lcom/xinzhu/overmind/server/h;->b:Ljava/util/Map;

    .line 190
    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-object p6, p4

    .line 199
    :goto_1
    monitor-exit v8

    .line 200
    return-object p6

    .line 201
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 202
    .line 203
    const-string p2, "No processes available"

    .line 204
    .line 205
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1

    .line 209
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    throw p1
.end method
