.class public Lcom/join/mgps/task/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:Ljava/lang/String; = "a"

.field private static final e:I = 0x3a98


# instance fields
.field private b:Landroid/content/Context;

.field c:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/join/mgps/task/a$a;

    .line 5
    .line 6
    const-wide/16 v2, 0x3a98

    .line 7
    .line 8
    const-wide/16 v4, 0x3e8

    .line 9
    .line 10
    move-object v0, v6

    .line 11
    move-object v1, p0

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/task/a$a;-><init>(Lcom/join/mgps/task/a;JJ)V

    .line 13
    .line 14
    .line 15
    iput-object v6, p0, Lcom/join/mgps/task/a;->c:Landroid/os/CountDownTimer;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/mgps/task/a;->b:Landroid/content/Context;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/task/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method b()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/event/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/event/e;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/join/mgps/event/e;->a:I

    .line 8
    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/task/a;->c:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/task/a;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/i;->f(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/event/e;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/mgps/event/e;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput v1, v0, Lcom/join/mgps/event/e;->a:I

    .line 16
    .line 17
    sget-object v1, Lcom/join/mgps/Util/i;->a:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/join/mgps/event/e;->b:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v1, Lcom/join/mgps/Util/i;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/join/mgps/event/e;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/task/a;->c:Landroid/os/CountDownTimer;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/task/a;->c:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 4
    .line 5
    .line 6
    return-void
.end method
