.class public Lma/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lma/c;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/os/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lma/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lma/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lma/c;->b:Lma/c;

    .line 7
    .line 8
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

.method public static a()Lma/c;
    .locals 1

    .line 1
    sget-object v0, Lma/c;->b:Lma/c;

    .line 2
    .line 3
    return-object v0
.end method

.method private c()Lcom/xinzhu/overmind/server/os/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lma/c;->a:Lcom/xinzhu/overmind/server/os/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lma/c;->a:Lcom/xinzhu/overmind/server/os/a;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "device_manager"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/xinzhu/overmind/server/os/a$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/os/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lma/c;->a:Lcom/xinzhu/overmind/server/os/a;

    .line 33
    .line 34
    invoke-direct {p0}, Lma/c;->c()Lcom/xinzhu/overmind/server/os/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method


# virtual methods
.method public b(I)Lcom/xinzhu/overmind/server/os/MindDeviceInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v0, v1}, Lcom/xinzhu/overmind/Overmind;->ifDisableVirtualDeviceForPackage(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Lma/c;->c()Lcom/xinzhu/overmind/server/os/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/os/a;->getDeviceInfo(I)Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_0
    invoke-direct {p0}, Lma/c;->c()Lcom/xinzhu/overmind/server/os/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/os/a;->getDeviceInfo(I)Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    return-object p1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method public d(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lma/c;->c()Lcom/xinzhu/overmind/server/os/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/os/a;->setVirtualDeviceStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public e(ILcom/xinzhu/overmind/server/os/MindDeviceInfo;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lma/c;->c()Lcom/xinzhu/overmind/server/os/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/os/a;->updateMindDeviceInfo(ILcom/xinzhu/overmind/server/os/MindDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method
