.class public Lcom/xinzhu/overmind/server/am/f;
.super Lcom/xinzhu/overmind/server/am/d$b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/g;


# static fields
.field public static final TAG:Ljava/lang/String; = "f"

.field private static sService:Lcom/xinzhu/overmind/server/am/f;


# instance fields
.field private final mPendingIntentRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/xinzhu/overmind/entity/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSpace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/am/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/am/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/am/f;->sService:Lcom/xinzhu/overmind/server/am/f;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/d$b;-><init>()V

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
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mUserSpace:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mPendingIntentRecords:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/am/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/am/f;->sService:Lcom/xinzhu/overmind/server/am/f;

    .line 2
    .line 3
    return-object v0
.end method

.method private getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mUserSpace:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/f;->mUserSpace:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/xinzhu/overmind/server/am/i;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance v1, Lcom/xinzhu/overmind/server/am/i;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/xinzhu/overmind/server/am/i;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/xinzhu/overmind/server/am/f;->mUserSpace:Ljava/util/Map;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4, v0}, Lcom/xinzhu/overmind/server/h;->h(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, -0x1

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-virtual/range {v1 .. v7}, Lcom/xinzhu/overmind/server/h;->q(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/client/c;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "Unable to create process "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 9
    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    move-object v5, p3

    .line 13
    move v6, p4

    .line 14
    move v7, p5

    .line 15
    invoke-virtual/range {v2 .. v7}, Lcom/xinzhu/overmind/server/am/a;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;II)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    monitor-exit v1

    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public findPendingIntent(Landroid/os/IBinder;)Lcom/xinzhu/overmind/entity/PendingIntentRecord;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mPendingIntentRecords:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/xinzhu/overmind/entity/PendingIntentRecord;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/xinzhu/overmind/server/am/f;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "try findPendingIntent result "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " realIntent: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->f:Landroid/content/Intent;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " uid: "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v2, p1, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->c:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :cond_0
    const/4 p1, 0x0

    .line 59
    return-object p1
.end method

.method public findProcessRecordByPid(I)Lcom/xinzhu/overmind/server/ProcessRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 27
    .line 28
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 29
    .line 30
    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->j(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    monitor-exit v2

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 27
    .line 28
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 29
    .line 30
    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->k(ILandroid/os/IBinder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    monitor-exit v2

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/am/c;->l(Landroid/os/IBinder;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    monitor-exit v1

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    return p1

    .line 17
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/am/c;->m(Landroid/os/IBinder;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    monitor-exit v1

    .line 33
    return p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public getTaskInfo(I)Lcom/xinzhu/overmind/server/am/MindTaskInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v2, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/am/c;->g(I)Lcom/xinzhu/overmind/server/am/h;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v3, v0, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    monitor-exit v2

    .line 46
    return-object v1

    .line 47
    :cond_2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    .line 48
    .line 49
    add-int/lit8 v3, v3, -0x1

    .line 50
    .line 51
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/xinzhu/overmind/server/am/b;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 58
    .line 59
    new-instance v3, Lcom/xinzhu/overmind/server/am/MindTaskInfo;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/h;->d:Landroid/content/Intent;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v3, p1, v0, v4, v1}, Lcom/xinzhu/overmind/server/am/MindTaskInfo;-><init>(ILandroid/content/Intent;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v2

    .line 71
    return-object v3

    .line 72
    :cond_3
    :goto_0
    monitor-exit v2

    .line 73
    return-object v1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/ClientConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v4, -0x1

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move v3, p3

    .line 17
    invoke-virtual/range {v0 .. v6}, Lcom/xinzhu/overmind/server/h;->q(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    check-cast p3, Lcom/xinzhu/overmind/server/am/b;

    .line 17
    .line 18
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 19
    .line 20
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 28
    .line 29
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/c;->s(Lcom/xinzhu/overmind/server/ProcessRecord;ILandroid/os/IBinder;Lcom/xinzhu/overmind/server/am/b;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v2

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public onActivityDestroyed(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 26
    .line 27
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 28
    .line 29
    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->t(ILandroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v2

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public onActivityResumed(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 26
    .line 27
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 28
    .line 29
    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->u(ILandroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v2

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public onFinishActivity(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 26
    .line 27
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 28
    .line 29
    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->v(ILandroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v2

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public onFinishActivityAffinity(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 26
    .line 27
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 28
    .line 29
    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->w(ILandroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v2

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/a;->f(Landroid/content/Intent;I)V

    .line 11
    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method

.method public onServiceUnbind(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/a;->g(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-exit v1

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public onStartCommand(Landroid/content/Intent;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/a;->h(Landroid/content/Intent;I)V

    .line 11
    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/a;->i(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-exit v1

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public registerPendingIntent(Lcom/xinzhu/overmind/entity/PendingIntentRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mPendingIntentRecords:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->e:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/h;->o(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x80

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->queryIntentBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 26
    .line 27
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 32
    .line 33
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v5, -0x1

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    move v4, p3

    .line 47
    invoke-virtual/range {v1 .. v7}, Lcom/xinzhu/overmind/server/h;->q(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/xinzhu/overmind/client/c;->bindApplication()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    :cond_2
    return-object p1
.end method

.method public startActivities(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 13
    .line 14
    iget v6, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 15
    .line 16
    move v4, p1

    .line 17
    move-object v5, p2

    .line 18
    move-object v7, p3

    .line 19
    move-object v8, p4

    .line 20
    move-object/from16 v9, p5

    .line 21
    .line 22
    move-object/from16 v10, p6

    .line 23
    .line 24
    invoke-virtual/range {v3 .. v10}, Lcom/xinzhu/overmind/server/am/c;->A(ILjava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    monitor-exit v2

    .line 29
    return v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v0
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v0, p2

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iget-object v14, v2, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 13
    .line 14
    monitor-enter v14

    .line 15
    :try_start_0
    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    iget v5, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, -0x1

    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x1

    .line 27
    move/from16 v3, p2

    .line 28
    .line 29
    move-object/from16 v6, p1

    .line 30
    .line 31
    invoke-virtual/range {v2 .. v13}, Lcom/xinzhu/overmind/server/am/c;->E(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;Z)I

    .line 32
    .line 33
    .line 34
    monitor-exit v14

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0
.end method

.method public startActivityAms(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 13
    .line 14
    iget v6, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 15
    .line 16
    const/4 v14, 0x0

    .line 17
    move/from16 v4, p1

    .line 18
    .line 19
    move-object/from16 v5, p2

    .line 20
    .line 21
    move-object/from16 v7, p3

    .line 22
    .line 23
    move-object/from16 v8, p4

    .line 24
    .line 25
    move-object/from16 v9, p5

    .line 26
    .line 27
    move-object/from16 v10, p6

    .line 28
    .line 29
    move/from16 v11, p7

    .line 30
    .line 31
    move/from16 v12, p8

    .line 32
    .line 33
    move-object/from16 v13, p9

    .line 34
    .line 35
    invoke-virtual/range {v3 .. v14}, Lcom/xinzhu/overmind/server/am/c;->E(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;Z)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    monitor-exit v2

    .line 40
    return v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0
.end method

.method public startActivityFromExistTask(Landroid/content/Intent;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p2, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p2, p2, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/server/am/c;->B(Landroid/content/Intent;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    monitor-exit v0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/am/a;->startService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-exit v1

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public stopPackage(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/h;->l(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/a;->stopService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-exit v1

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/a;->unbindService(Landroid/os/IBinder;I)V

    .line 11
    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method

.method public unregisterPendingIntent(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mPendingIntentRecords:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
