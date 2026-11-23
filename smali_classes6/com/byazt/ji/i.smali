.class public Lcom/byazt/ji/i;
.super Lcom/byazt/ji/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cd/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xde,
        0x2a
    }
.end annotation


# instance fields
.field public sl:I

.field public t:Z

.field public u:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ji/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x1f4

    .line 5
    .line 6
    iput p1, p0, Lcom/byazt/ji/i;->sl:I

    .line 7
    .line 8
    new-instance p1, Lcom/byazt/cd/i;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0, p0}, Lcom/byazt/cd/i;-><init>(Landroid/os/Looper;Lcom/byazt/cd/i$c;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/ji/i;->u:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method

.method private c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/16 v0, 0x44e

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/ji/i;->u:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    :cond_1
    iput-boolean v1, p0, Lcom/byazt/ji/i;->t:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean p1, p0, Lcom/byazt/ji/i;->t:Z

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    if-eqz p1, :cond_4

    .line 13
    iget-object v2, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    iget-object v3, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-virtual {v4}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    .line 14
    iput-boolean v1, p0, Lcom/byazt/ji/i;->t:Z

    .line 15
    iget-object p1, p0, Lcom/byazt/ji/i;->u:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return p2

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/byazt/ji/i;->u:Landroid/os/Handler;

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    :cond_5
    iput-boolean v1, p0, Lcom/byazt/ji/i;->t:Z

    return v1

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/byazt/ji/i;->u:Landroid/os/Handler;

    iget v1, p0, Lcom/byazt/ji/i;->sl:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return p2
.end method


# virtual methods
.method public c(Landroid/os/Message;)V
    .locals 1

    .line 21
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x44e

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/byazt/ji/i;->t:Z

    .line 23
    iget-object p1, p0, Lcom/byazt/ji/i;->u:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs c([Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/MotionEvent;

    .line 3
    iget-object v0, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f4

    if-nez v0, :cond_1

    .line 4
    iput v1, p0, Lcom/byazt/ji/i;->sl:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/ji/i;->sl:I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    invoke-direct {p0, v0, p1}, Lcom/byazt/ji/i;->c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    return v0
.end method
