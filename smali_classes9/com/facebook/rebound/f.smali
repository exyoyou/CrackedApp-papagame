.class public Lcom/facebook/rebound/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/f$a;
    }
.end annotation


# static fields
.field private static final c:J = 0x11L

.field private static final d:Z

.field private static e:Lcom/facebook/rebound/f;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/facebook/rebound/f;->d:Z

    .line 3
    .line 4
    new-instance v0, Lcom/facebook/rebound/f;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/facebook/rebound/f;-><init>()V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/facebook/rebound/f;->e:Lcom/facebook/rebound/f;

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/facebook/rebound/f;->d:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/facebook/rebound/f;->d()Landroid/view/Choreographer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/facebook/rebound/f;->b:Landroid/view/Choreographer;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/facebook/rebound/f;->a:Landroid/os/Handler;

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private a(Landroid/view/Choreographer$FrameCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/f;->b:Landroid/view/Choreographer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private b(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/f;->b:Landroid/view/Choreographer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private c(Landroid/view/Choreographer$FrameCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/f;->b:Landroid/view/Choreographer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private d()Landroid/view/Choreographer;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static e()Lcom/facebook/rebound/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/rebound/f;->e:Lcom/facebook/rebound/f;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public f(Lcom/facebook/rebound/f$a;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/facebook/rebound/f;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/facebook/rebound/f$a;->b()Landroid/view/Choreographer$FrameCallback;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/rebound/f;->a(Landroid/view/Choreographer$FrameCallback;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/f;->a:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/rebound/f$a;->c()Ljava/lang/Runnable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public g(Lcom/facebook/rebound/f$a;J)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/facebook/rebound/f;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/facebook/rebound/f$a;->b()Landroid/view/Choreographer$FrameCallback;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rebound/f;->b(Landroid/view/Choreographer$FrameCallback;J)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/f;->a:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/rebound/f$a;->c()Ljava/lang/Runnable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-wide/16 v1, 0x11

    .line 20
    .line 21
    add-long/2addr p2, v1

    .line 22
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public h(Lcom/facebook/rebound/f$a;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/facebook/rebound/f;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/facebook/rebound/f$a;->b()Landroid/view/Choreographer$FrameCallback;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/rebound/f;->c(Landroid/view/Choreographer$FrameCallback;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/f;->a:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/rebound/f$a;->c()Ljava/lang/Runnable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
