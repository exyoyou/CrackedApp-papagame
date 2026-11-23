.class public Lcom/byazt/atv/uj$tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cd/i$c;
.implements Lcom/byazt/pm/yp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x99
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/atv/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tt"
.end annotation


# instance fields
.field public a:Lcom/byazt/ji/tt;

.field public c:F

.field public final i:Landroid/os/Handler;

.field public n:Lcom/byazt/xj/ve;

.field public sp:Lcom/byazt/pm/sl;

.field public tt:F

.field public final uj:I

.field public ve:Z

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/atomic/AtomicBoolean;)V
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
    iput-object v0, p0, Lcom/byazt/atv/uj$tt;->i:Landroid/os/Handler;

    .line 14
    .line 15
    iput p1, p0, Lcom/byazt/atv/uj$tt;->uj:I

    .line 16
    .line 17
    iput-object p2, p0, Lcom/byazt/atv/uj$tt;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public c(Landroid/os/Message;)V
    .locals 4

    .line 43
    iget-object p1, p0, Lcom/byazt/atv/uj$tt;->sp:Lcom/byazt/pm/sl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/atv/uj$tt;->n:Lcom/byazt/xj/ve;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/atv/uj$tt;->a:Lcom/byazt/ji/tt;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/byazt/atv/uj$tt;->ve:Z

    if-nez p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/byazt/atv/uj$tt;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/byazt/atv/uj$tt;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    iget-object p1, p0, Lcom/byazt/atv/uj$tt;->sp:Lcom/byazt/pm/sl;

    iget-object v0, p0, Lcom/byazt/atv/uj$tt;->n:Lcom/byazt/xj/ve;

    iget-object v1, p0, Lcom/byazt/atv/uj$tt;->a:Lcom/byazt/ji/tt;

    invoke-virtual {v1}, Lcom/byazt/ji/tt;->sp()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/atv/uj$tt;->a:Lcom/byazt/ji/tt;

    invoke-virtual {v2}, Lcom/byazt/ji/tt;->da()Lcom/byazt/pm/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/atv/uj$tt;->a:Lcom/byazt/ji/tt;

    invoke-virtual {v3}, Lcom/byazt/ji/tt;->da()Lcom/byazt/pm/a;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    :cond_0
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/byazt/atv/uj$tt;->n:Lcom/byazt/xj/ve;

    .line 48
    iput-object p1, p0, Lcom/byazt/atv/uj$tt;->a:Lcom/byazt/ji/tt;

    .line 49
    iput-object p1, p0, Lcom/byazt/atv/uj$tt;->sp:Lcom/byazt/pm/sl;

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;Lcom/byazt/ji/tt;Lcom/byazt/pm/sl;Z)Z
    .locals 6

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/high16 p5, 0x41700000    # 15.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/byazt/atv/uj$tt;->ve:Z

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/byazt/atv/uj$tt;->i:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iput-object v4, p0, Lcom/byazt/atv/uj$tt;->n:Lcom/byazt/xj/ve;

    .line 12
    iput-object v4, p0, Lcom/byazt/atv/uj$tt;->a:Lcom/byazt/ji/tt;

    .line 13
    iput-object v4, p0, Lcom/byazt/atv/uj$tt;->sp:Lcom/byazt/pm/sl;

    goto/16 :goto_1

    .line 14
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 16
    iget p3, p0, Lcom/byazt/atv/uj$tt;->c:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p5

    if-gez p1, :cond_2

    iget p1, p0, Lcom/byazt/atv/uj$tt;->tt:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p5

    if-ltz p1, :cond_8

    .line 17
    :cond_2
    iput-boolean v2, p0, Lcom/byazt/atv/uj$tt;->ve:Z

    goto/16 :goto_1

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/byazt/atv/uj$tt;->i:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iput-object v4, p0, Lcom/byazt/atv/uj$tt;->n:Lcom/byazt/xj/ve;

    .line 20
    iput-object v4, p0, Lcom/byazt/atv/uj$tt;->a:Lcom/byazt/ji/tt;

    .line 21
    iput-object v4, p0, Lcom/byazt/atv/uj$tt;->sp:Lcom/byazt/pm/sl;

    .line 22
    iget-boolean v0, p0, Lcom/byazt/atv/uj$tt;->ve:Z

    if-eqz v0, :cond_4

    .line 23
    iput-boolean v1, p0, Lcom/byazt/atv/uj$tt;->ve:Z

    .line 24
    iput v3, p0, Lcom/byazt/atv/uj$tt;->c:F

    .line 25
    iput v3, p0, Lcom/byazt/atv/uj$tt;->tt:F

    return v1

    .line 26
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 28
    iget v4, p0, Lcom/byazt/atv/uj$tt;->c:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p5

    if-gez v0, :cond_6

    iget v0, p0, Lcom/byazt/atv/uj$tt;->tt:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p5

    if-ltz p2, :cond_5

    goto :goto_0

    .line 29
    :cond_5
    iget-object p2, p0, Lcom/byazt/atv/uj$tt;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_8

    .line 30
    iget-object p2, p0, Lcom/byazt/atv/uj$tt;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p4, :cond_8

    .line 31
    invoke-virtual {p3}, Lcom/byazt/ji/tt;->sp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/byazt/ji/tt;->da()Lcom/byazt/pm/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object p3

    iget-object p5, p0, Lcom/byazt/atv/uj$tt;->a:Lcom/byazt/ji/tt;

    invoke-virtual {p5}, Lcom/byazt/ji/tt;->da()Lcom/byazt/pm/a;

    move-result-object p5

    invoke-interface {p4, p1, p2, p3, p5}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    .line 32
    iput v3, p0, Lcom/byazt/atv/uj$tt;->c:F

    .line 33
    iput v3, p0, Lcom/byazt/atv/uj$tt;->tt:F

    return v2

    .line 34
    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/byazt/atv/uj$tt;->ve:Z

    return v1

    .line 35
    :cond_7
    iget-object v0, p0, Lcom/byazt/atv/uj$tt;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/byazt/atv/uj$tt;->c:F

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/byazt/atv/uj$tt;->tt:F

    .line 38
    iput-object p1, p0, Lcom/byazt/atv/uj$tt;->n:Lcom/byazt/xj/ve;

    .line 39
    iput-object p3, p0, Lcom/byazt/atv/uj$tt;->a:Lcom/byazt/ji/tt;

    .line 40
    iput-object p4, p0, Lcom/byazt/atv/uj$tt;->sp:Lcom/byazt/pm/sl;

    if-eqz p5, :cond_8

    .line 41
    iget p1, p0, Lcom/byazt/atv/uj$tt;->uj:I

    if-lez p1, :cond_8

    .line 42
    iget-object p2, p0, Lcom/byazt/atv/uj$tt;->i:Landroid/os/Handler;

    int-to-long p3, p1

    invoke-virtual {p2, v2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    :goto_1
    return v2
.end method

.method public c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;Lcom/byazt/pm/sl;Lcom/byazt/ji/tt;)Z
    .locals 7

    .line 1
    invoke-virtual {p4}, Lcom/byazt/ji/tt;->da()Lcom/byazt/pm/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/pm/a$c;

    .line 4
    invoke-virtual {v1}, Lcom/byazt/pm/a$c;->tt()Ljava/lang/String;

    move-result-object v1

    const-string v2, "convert"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/atv/uj$tt;->c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;Lcom/byazt/ji/tt;Lcom/byazt/pm/sl;Z)Z

    move-result p1

    return p1
.end method
