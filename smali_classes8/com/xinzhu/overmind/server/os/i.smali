.class public Lcom/xinzhu/overmind/server/os/i;
.super Lcom/xinzhu/overmind/server/os/d$b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/g;


# static fields
.field private static sService:Lcom/xinzhu/overmind/server/os/i;


# instance fields
.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/os/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/os/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/os/i;->sService:Lcom/xinzhu/overmind/server/os/i;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/os/d$b;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "storage"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/server/os/i;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 17
    .line 18
    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/os/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/os/i;->sService:Lcom/xinzhu/overmind/server/os/i;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getUriForFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/g;->h()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/provider/FileProvider;->f(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-static {p2, p1}, Lg9/c;->h(II)[Landroid/os/storage/StorageVolume;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    array-length p3, p2

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-ge v0, p3, :cond_1

    .line 17
    .line 18
    aget-object v1, p2, v0

    .line 19
    .line 20
    new-instance v2, Lg9/d;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Lg9/d;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p4}, Lcom/xinzhu/overmind/a;->F(I)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v2, v1}, Lg9/d;->f(Ljava/io/File;)Z

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->z()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-static {p4}, Lcom/xinzhu/overmind/a;->F(I)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v2, v1}, Lg9/d;->e(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object p2

    .line 49
    :catch_0
    move-exception p2

    .line 50
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    new-array p1, p1, [Landroid/os/storage/StorageVolume;

    .line 54
    .line 55
    return-object p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
