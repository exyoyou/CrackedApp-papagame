.class public Lcom/byazt/dq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cd/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4bc,
        0x22
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/xj/ve;

.field public c:Z

.field public n:Lcom/byazt/sz/m;

.field public sp:Landroid/os/Handler;

.field public tt:I

.field public uj:Landroid/content/Context;

.field public ve:Lcom/byazt/sz/rh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/sz/m;Lcom/byazt/xj/ve;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/cd/i;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/byazt/cd/i;-><init>(Landroid/os/Looper;Lcom/byazt/cd/i$c;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/dq/a;->sp:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/dq/a;->uj:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/byazt/dq/a;->n:Lcom/byazt/sz/m;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/byazt/dq/a;->a:Lcom/byazt/xj/ve;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/dq/a;->n:Lcom/byazt/sz/m;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "interval"

    const-string v2, "8000"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/byazt/dq/a;->a:Lcom/byazt/xj/ve;

    invoke-virtual {v2}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/byazt/dq/a;->tt:I

    const-string v1, "repeat"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/dq/a;->c:Z

    .line 8
    iget-object v0, p0, Lcom/byazt/dq/a;->sp:Landroid/os/Handler;

    iget v1, p0, Lcom/byazt/dq/a;->tt:I

    int-to-long v1, v1

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 3

    .line 10
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/byazt/dq/a;->ve:Lcom/byazt/sz/rh;

    if-eqz p1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/byazt/dq/a;->n:Lcom/byazt/sz/m;

    iget-object v2, p0, Lcom/byazt/dq/a;->a:Lcom/byazt/xj/ve;

    invoke-interface {p1, v1, v2, v2}, Lcom/byazt/sz/rh;->c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    .line 13
    :cond_1
    iget-boolean p1, p0, Lcom/byazt/dq/a;->c:Z

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/byazt/dq/a;->sp:Landroid/os/Handler;

    iget v1, p0, Lcom/byazt/dq/a;->tt:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/byazt/dq/a;->sp:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/sz/rh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dq/a;->ve:Lcom/byazt/sz/rh;

    return-void
.end method
