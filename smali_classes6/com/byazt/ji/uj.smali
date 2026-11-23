.class public Lcom/byazt/ji/uj;
.super Lcom/byazt/ji/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xde,
        0xf
    }
.end annotation


# instance fields
.field public m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public my:Lcom/byazt/pm/u;

.field public nu:I

.field public rh:Ljava/lang/String;

.field public sl:F

.field public t:F

.field public u:I

.field public yp:Ljava/util/concurrent/atomic/AtomicInteger;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ji/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/byazt/ji/uj;->u:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    const v1, 0x7fffffff

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/byazt/ji/uj;->yp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    iput v1, p0, Lcom/byazt/ji/uj;->z:I

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/ji/uj;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    iput p1, p0, Lcom/byazt/ji/uj;->nu:I

    .line 28
    .line 29
    const-string p1, "up"

    .line 30
    .line 31
    iput-object p1, p0, Lcom/byazt/ji/uj;->rh:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method private c()V
    .locals 5

    .line 24
    iget v0, p0, Lcom/byazt/ji/uj;->z:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    iget-object v2, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    invoke-virtual {v2}, Lcom/byazt/xj/ve;->gu()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/byazt/ji/uj;->z:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 27
    iget-object v0, p0, Lcom/byazt/ji/uj;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Landroid/view/View;FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    cmpl-float p2, p3, v0

    if-ltz p2, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lcom/byazt/xj/ve;FF)Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/byazt/ji/uj;->yp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/byazt/ji/uj;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 49
    :cond_1
    iget v0, p0, Lcom/byazt/ji/uj;->nu:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/byazt/ji/uj;->c(Landroid/view/View;FF)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 50
    :cond_2
    iget-object p2, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    iget-object p3, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-virtual {v0}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-interface {p2, p1, p3, v0, v1}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    .line 51
    iget-object p1, p0, Lcom/byazt/ji/uj;->yp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_3

    .line 52
    iget-object p1, p0, Lcom/byazt/ji/uj;->yp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_3
    return v2
.end method

.method private c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_a

    .line 31
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 33
    iget v4, p0, Lcom/byazt/ji/uj;->u:I

    if-nez v4, :cond_2

    .line 34
    iget-object v4, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    if-eqz v4, :cond_2

    .line 35
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/ji/uj;->c(Lcom/byazt/xj/ve;FF)Z

    move-result p1

    return p1

    .line 36
    :cond_2
    iget-object v4, p0, Lcom/byazt/ji/tt;->da:Landroid/content/Context;

    iget v5, p0, Lcom/byazt/ji/uj;->sl:F

    sub-float v5, v0, v5

    invoke-static {v4, v5}, Lcom/byazt/cd/x;->tt(Landroid/content/Context;F)I

    move-result v4

    .line 37
    iget-object v5, p0, Lcom/byazt/ji/tt;->da:Landroid/content/Context;

    iget v6, p0, Lcom/byazt/ji/uj;->t:F

    sub-float v6, p2, v6

    invoke-static {v5, v6}, Lcom/byazt/cd/x;->tt(Landroid/content/Context;F)I

    move-result v5

    .line 38
    iget-object v6, p0, Lcom/byazt/ji/uj;->rh:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "right"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v7, "left"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v7, "down"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "all"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_4
    const-string v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, -0x1

    :goto_1
    if-eqz v6, :cond_6

    if-eq v6, v1, :cond_5

    if-eq v6, v9, :cond_4

    if-eq v6, v2, :cond_7

    int-to-double v6, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 39
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v4, v5

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_2

    :cond_4
    neg-int v4, v4

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_2

    :cond_6
    neg-int v4, v5

    .line 40
    :cond_7
    :goto_2
    iget v2, p0, Lcom/byazt/ji/uj;->u:I

    if-lt v4, v2, :cond_8

    .line 41
    iget-object v2, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    if-eqz v2, :cond_a

    .line 42
    iput v3, p0, Lcom/byazt/ji/uj;->sl:F

    .line 43
    iput v3, p0, Lcom/byazt/ji/uj;->t:F

    .line 44
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/ji/uj;->c(Lcom/byazt/xj/ve;FF)Z

    move-result p1

    return p1

    :cond_8
    return v8

    .line 45
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/byazt/ji/uj;->sl:F

    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/byazt/ji/uj;->t:F

    :cond_a
    :goto_3
    return v1

    :sswitch_data_0
    .sparse-switch
        0xe9b -> :sswitch_4
        0x179a1 -> :sswitch_3
        0x2f24a2 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public c(Lcom/byazt/pm/u;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/byazt/ji/uj;->my:Lcom/byazt/pm/u;

    return-void
.end method

.method public varargs c([Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1
    array-length v1, p1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    if-eqz v1, :cond_7

    const-string v2, "direction"

    .line 3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "all"

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/byazt/ji/uj;->rh:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v2, "distance"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 6
    iput v0, p0, Lcom/byazt/ji/uj;->u:I

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/byazt/ji/uj;->u:I

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/byazt/ji/uj;->yp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_4

    .line 9
    iget-object v1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v3, "frequency"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v3, p0, Lcom/byazt/ji/uj;->yp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    :cond_4
    iget v1, p0, Lcom/byazt/ji/uj;->z:I

    if-ne v1, v2, :cond_5

    .line 12
    iget-object v1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v3, "effectiveDuration"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/byazt/ji/uj;->z:I

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v2, "inView"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/byazt/ji/uj;->nu:I

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/byazt/ji/uj;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    :cond_7
    aget-object p1, p1, v0

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 18
    invoke-direct {p0}, Lcom/byazt/ji/uj;->c()V

    .line 19
    iget-object v0, p0, Lcom/byazt/ji/uj;->my:Lcom/byazt/pm/u;

    if-eqz v0, :cond_8

    .line 20
    iget-object v1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    iget-object v3, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    iget-object v5, p0, Lcom/byazt/ji/uj;->rh:Ljava/lang/String;

    iget v6, p0, Lcom/byazt/ji/uj;->u:I

    iget-object v7, p0, Lcom/byazt/ji/uj;->yp:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v8, p0, Lcom/byazt/ji/uj;->nu:I

    iget-object p1, p0, Lcom/byazt/ji/uj;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    move-object v4, p0

    .line 22
    invoke-interface/range {v0 .. v9}, Lcom/byazt/pm/u;->c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;Lcom/byazt/pm/sl;Lcom/byazt/ji/tt;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;IZ)Z

    move-result p1

    return p1

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    invoke-direct {p0, p1, v2}, Lcom/byazt/ji/uj;->c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    :goto_2
    return v0
.end method
