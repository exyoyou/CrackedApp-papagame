.class public Lma/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lma/e;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/am/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lma/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lma/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lma/e;->b:Lma/e;

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

.method public static c()Lma/e;
    .locals 1

    .line 1
    sget-object v0, Lma/e;->b:Lma/e;

    .line 2
    .line 3
    return-object v0
.end method

.method private d()Lcom/xinzhu/overmind/server/am/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lma/e;->a:Lcom/xinzhu/overmind/server/am/e;

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
    iget-object v0, p0, Lma/e;->a:Lcom/xinzhu/overmind/server/am/e;

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
    const-string v1, "job_manager"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/xinzhu/overmind/server/am/e$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/e;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lma/e;->a:Lcom/xinzhu/overmind/server/am/e;

    .line 33
    .line 34
    invoke-direct {p0}, Lma/e;->d()Lcom/xinzhu/overmind/server/am/e;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lma/e;->d()Lcom/xinzhu/overmind/server/am/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, p1, p2, v1}, Lcom/xinzhu/overmind/server/am/e;->cancel(Ljava/lang/String;II)I

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lma/e;->d()Lcom/xinzhu/overmind/server/am/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/xinzhu/overmind/server/am/e;->cancelAll(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/JobRecord;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lma/e;->d()Lcom/xinzhu/overmind/server/am/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, p1, p2, v1}, Lcom/xinzhu/overmind/server/am/e;->queryJobRecord(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/JobRecord;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public f(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lma/e;->d()Lcom/xinzhu/overmind/server/am/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/xinzhu/overmind/server/am/e;->schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method
