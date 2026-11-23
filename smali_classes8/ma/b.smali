.class public Lma/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lma/b;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/content/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lma/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lma/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lma/b;->b:Lma/b;

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

.method public static a()Lma/b;
    .locals 1

    .line 1
    sget-object v0, Lma/b;->b:Lma/b;

    .line 2
    .line 3
    return-object v0
.end method

.method private b()Lcom/xinzhu/overmind/server/content/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lma/b;->a:Lcom/xinzhu/overmind/server/content/a;

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
    iget-object v0, p0, Lma/b;->a:Lcom/xinzhu/overmind/server/content/a;

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
    const-string v1, "content_manager"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/xinzhu/overmind/server/content/a$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/content/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lma/b;->a:Lcom/xinzhu/overmind/server/content/a;

    .line 33
    .line 34
    invoke-direct {p0}, Lma/b;->b()Lcom/xinzhu/overmind/server/content/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method


# virtual methods
.method public c(Landroid/net/Uri;Landroid/database/IContentObserver;ZZII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lma/b;->b()Lcom/xinzhu/overmind/server/content/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move v6, p6

    .line 11
    invoke-interface/range {v0 .. v6}, Lcom/xinzhu/overmind/server/content/a;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public d(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lma/b;->b()Lcom/xinzhu/overmind/server/content/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lcom/xinzhu/overmind/server/content/a;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public e(Landroid/database/IContentObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lma/b;->b()Lcom/xinzhu/overmind/server/content/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/content/a;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
