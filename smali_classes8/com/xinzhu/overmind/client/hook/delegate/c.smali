.class public Lcom/xinzhu/overmind/client/hook/delegate/c;
.super Landroid/app/IServiceConnection$Stub;
.source "SourceFile"


# static fields
.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/xinzhu/overmind/client/hook/delegate/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mConn:Landroid/app/IServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/client/hook/delegate/c;->m:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/delegate/c;->mConn:Landroid/app/IServiceConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/xinzhu/overmind/client/hook/delegate/c;->mComponentName:Landroid/content/ComponentName;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/c;->m:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static createProxy(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)Landroid/app/IServiceConnection;
    .locals 3

    .line 1
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xinzhu/overmind/client/hook/delegate/c;->m:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/xinzhu/overmind/client/hook/delegate/c;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v1, Lcom/xinzhu/overmind/client/hook/delegate/c$a;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/xinzhu/overmind/client/hook/delegate/c$a;-><init>(Landroid/os/IBinder;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    new-instance v1, Lcom/xinzhu/overmind/client/hook/delegate/c;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/c;-><init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lcom/xinzhu/overmind/client/hook/delegate/c;->m:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object v1
.end method

.method public static getDelegate(Landroid/os/IBinder;)Lcom/xinzhu/overmind/client/hook/delegate/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/c;->m:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xinzhu/overmind/client/hook/delegate/c;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/xinzhu/overmind/client/hook/delegate/c;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/xinzhu/haunted/android/app/s;

    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/c;->mConn:Landroid/app/IServiceConnection;

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/s;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/c;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2, p3}, Lcom/xinzhu/haunted/android/app/s;->b(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/delegate/c;->mConn:Landroid/app/IServiceConnection;

    invoke-interface {p3, p1, p2}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method
