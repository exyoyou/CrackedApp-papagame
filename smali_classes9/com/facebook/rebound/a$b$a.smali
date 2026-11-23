.class Lcom/facebook/rebound/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/a$b;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/rebound/a$b;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/a$b$a;->b:Lcom/facebook/rebound/a$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/a$b$a;->b:Lcom/facebook/rebound/a$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/rebound/a$b;->d(Lcom/facebook/rebound/a$b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/rebound/a$b$a;->b:Lcom/facebook/rebound/a$b;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/facebook/rebound/a$b$a;->b:Lcom/facebook/rebound/a$b;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/facebook/rebound/a$b;->e(Lcom/facebook/rebound/a$b;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    sub-long v4, v0, v4

    .line 29
    .line 30
    long-to-double v4, v4

    .line 31
    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/c;->i(D)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/facebook/rebound/a$b$a;->b:Lcom/facebook/rebound/a$b;

    .line 35
    .line 36
    invoke-static {v2, v0, v1}, Lcom/facebook/rebound/a$b;->f(Lcom/facebook/rebound/a$b;J)J

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/facebook/rebound/a$b$a;->b:Lcom/facebook/rebound/a$b;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/facebook/rebound/a$b;->h(Lcom/facebook/rebound/a$b;)Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/facebook/rebound/a$b$a;->b:Lcom/facebook/rebound/a$b;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/facebook/rebound/a$b;->g(Lcom/facebook/rebound/a$b;)Ljava/lang/Runnable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method
