.class Lcom/facebook/rebound/a$b;
.super Lcom/facebook/rebound/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/rebound/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/rebound/a$b;->b:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance p1, Lcom/facebook/rebound/a$b$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/facebook/rebound/a$b$a;-><init>(Lcom/facebook/rebound/a$b;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/facebook/rebound/a$b;->c:Ljava/lang/Runnable;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic d(Lcom/facebook/rebound/a$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/rebound/a$b;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/facebook/rebound/a$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/a$b;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic f(Lcom/facebook/rebound/a$b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/rebound/a$b;->e:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic g(Lcom/facebook/rebound/a$b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/a$b;->c:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/facebook/rebound/a$b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/a$b;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static i()Lcom/facebook/rebound/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/rebound/a$b;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/facebook/rebound/a$b;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/rebound/a$b;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/facebook/rebound/a$b;->d:Z

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/facebook/rebound/a$b;->e:J

    .line 14
    .line 15
    iget-object v0, p0, Lcom/facebook/rebound/a$b;->b:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/facebook/rebound/a$b;->c:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/facebook/rebound/a$b;->b:Landroid/os/Handler;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/facebook/rebound/a$b;->c:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/rebound/a$b;->d:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/rebound/a$b;->b:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/facebook/rebound/a$b;->c:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
