.class public Lcom/join/mgps/service/UpdateLodingService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/UpdateLodingService$b;,
        Lcom/join/mgps/service/UpdateLodingService$c;,
        Lcom/join/mgps/service/UpdateLodingService$d;
    }
.end annotation


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:J

.field private d:I

.field private e:Lcom/join/mgps/service/UpdateLodingService$b;

.field private f:Lcom/join/mgps/service/UpdateLodingService$c;

.field g:Lcom/join/mgps/service/UpdateLodingService$d;

.field h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 2
    .line 3
    sput-object v0, Lcom/join/mgps/service/UpdateLodingService;->i:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateLodingService;->b:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/join/mgps/service/UpdateLodingService;->c:J

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/service/UpdateLodingService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/service/UpdateLodingService;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/service/UpdateLodingService;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/service/UpdateLodingService;->d:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/service/UpdateLodingService;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateLodingService;->e:Lcom/join/mgps/service/UpdateLodingService$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/service/UpdateLodingService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/service/UpdateLodingService;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/service/UpdateLodingService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/service/UpdateLodingService;->b:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/join/mgps/service/UpdateLodingService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/service/UpdateLodingService;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic h(Lcom/join/mgps/service/UpdateLodingService;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/service/UpdateLodingService;->c:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic i(Lcom/join/mgps/service/UpdateLodingService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/service/UpdateLodingService;->j(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/service/UpdateLodingService$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/service/UpdateLodingService$a;-><init>(Lcom/join/mgps/service/UpdateLodingService;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public k()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateLodingService;->b:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public l(Lcom/join/mgps/service/UpdateLodingService$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lodingMessage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->g:Lcom/join/mgps/service/UpdateLodingService$d;

    .line 2
    .line 3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$c;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/join/mgps/service/UpdateLodingService$c;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/join/mgps/service/UpdateLodingService$c;-><init>(Lcom/join/mgps/service/UpdateLodingService;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$c;

    .line 11
    .line 12
    :cond_0
    new-instance p1, Lcom/join/mgps/service/UpdateLodingService$b;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, p0, v0, p0}, Lcom/join/mgps/service/UpdateLodingService$b;-><init>(Lcom/join/mgps/service/UpdateLodingService;Landroid/os/Looper;Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->e:Lcom/join/mgps/service/UpdateLodingService$b;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$c;

    .line 24
    .line 25
    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/service/UpdateLodingService$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/service/UpdateLodingService$c;-><init>(Lcom/join/mgps/service/UpdateLodingService;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$c;

    .line 7
    .line 8
    iput-object p0, p0, Lcom/join/mgps/service/UpdateLodingService;->h:Landroid/content/Context;

    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateLodingService;->b:Z

    .line 6
    .line 7
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
