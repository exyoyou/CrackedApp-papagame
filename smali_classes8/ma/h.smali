.class public Lma/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lma/h;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/os/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lma/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lma/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lma/h;->b:Lma/h;

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

.method public static a()Lma/h;
    .locals 1

    .line 1
    sget-object v0, Lma/h;->b:Lma/h;

    .line 2
    .line 3
    return-object v0
.end method

.method private b()Lcom/xinzhu/overmind/server/os/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lma/h;->a:Lcom/xinzhu/overmind/server/os/d;

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
    iget-object v0, p0, Lma/h;->a:Lcom/xinzhu/overmind/server/os/d;

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
    const-string v1, "storage_manager"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/xinzhu/overmind/server/os/d$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/os/d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lma/h;->a:Lcom/xinzhu/overmind/server/os/d;

    .line 33
    .line 34
    invoke-direct {p0}, Lma/h;->b()Lcom/xinzhu/overmind/server/os/d;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lma/h;->b()Lcom/xinzhu/overmind/server/os/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/os/d;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public d(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lma/h;->b()Lcom/xinzhu/overmind/server/os/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/os/d;->getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    new-array p1, p1, [Landroid/os/storage/StorageVolume;

    .line 16
    .line 17
    return-object p1
.end method
