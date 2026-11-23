.class public Lcom/aggmoread/sdk/z/a/s/a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/aggmoread/sdk/z/a/u/q$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/s/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/aggmoread/sdk/z/a/g/d;

.field private d:Lcom/aggmoread/sdk/z/a/s/a$a;

.field private e:Landroid/view/GestureDetector;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/a/s/a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->f:I

    iput v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->g:I

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->d:Lcom/aggmoread/sdk/z/a/s/a$a;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;Lcom/aggmoread/sdk/z/a/s/a$a;)Lcom/aggmoread/sdk/z/a/s/a;
    .locals 3

    .line 2
    new-instance v0, Lcom/aggmoread/sdk/z/a/s/a;

    invoke-direct {v0, p2}, Lcom/aggmoread/sdk/z/a/s/a;-><init>(Lcom/aggmoread/sdk/z/a/s/a$a;)V

    iput-object p0, v0, Lcom/aggmoread/sdk/z/a/s/a;->a:Landroid/view/View;

    iput-object p1, v0, Lcom/aggmoread/sdk/z/a/s/a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v0, Lcom/aggmoread/sdk/z/a/s/a;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v0, Lcom/aggmoread/sdk/z/a/s/a;->g:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adView left "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickView left "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offsetX "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/aggmoread/sdk/z/a/s/a;->f:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AdTouchCollector"

    invoke-static {v1, p2}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adView top "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", clickView top "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", offsetY "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/aggmoread/sdk/z/a/s/a;->g:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/aggmoread/sdk/z/a/g/d;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/g/d;-><init>()V

    iput-object p0, v0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    new-instance p0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p0, v0, Lcom/aggmoread/sdk/z/a/s/a;->e:Landroid/view/GestureDetector;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    sget-object p0, Lcom/aggmoread/sdk/z/a/i/c;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/aggmoread/sdk/z/a/u/q;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/aggmoread/sdk/z/a/u/q;

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/a/s/a;->a(Lcom/aggmoread/sdk/z/a/u/q;)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/view/View;Lcom/aggmoread/sdk/z/a/s/a$a;)Lcom/aggmoread/sdk/z/a/s/a;
    .locals 2

    .line 3
    new-instance v0, Lcom/aggmoread/sdk/z/a/s/a;

    invoke-direct {v0, p1}, Lcom/aggmoread/sdk/z/a/s/a;-><init>(Lcom/aggmoread/sdk/z/a/s/a$a;)V

    iput-object p0, v0, Lcom/aggmoread/sdk/z/a/s/a;->a:Landroid/view/View;

    iput-object p0, v0, Lcom/aggmoread/sdk/z/a/s/a;->b:Landroid/view/View;

    new-instance p1, Lcom/aggmoread/sdk/z/a/g/d;

    invoke-direct {p1}, Lcom/aggmoread/sdk/z/a/g/d;-><init>()V

    iput-object p1, v0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, v0, Lcom/aggmoread/sdk/z/a/s/a;->e:Landroid/view/GestureDetector;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    sget-object p1, Lcom/aggmoread/sdk/z/a/i/c;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/aggmoread/sdk/z/a/u/q;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/aggmoread/sdk/z/a/u/q;

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/a/s/a;->a(Lcom/aggmoread/sdk/z/a/u/q;)V

    :cond_0
    return-object v0
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->d:Lcom/aggmoread/sdk/z/a/s/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/aggmoread/sdk/z/a/g/d;->e:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/aggmoread/sdk/z/a/g/d;->f:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->d:Lcom/aggmoread/sdk/z/a/s/a$a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/a;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-interface {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/s/a$a;->a(Landroid/view/View;Lcom/aggmoread/sdk/z/a/g/d;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/h/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->d:Lcom/aggmoread/sdk/z/a/s/a$a;

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()Lcom/aggmoread/sdk/z/a/g/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    return-object v0
.end method

.method public a(Lcom/aggmoread/sdk/z/a/u/q;)V
    .locals 0

    .line 4
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/aggmoread/sdk/z/a/u/q;->a(Lcom/aggmoread/sdk/z/a/u/q$b;)V

    :cond_0
    return-void
.end method

.method public a([F)V
    .locals 2

    .line 5
    const-string v0, "onShake click "

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    const/4 v1, 0x2

    iput v1, v0, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/g/d;->a([F)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/a;->b()Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    const/4 v0, 0x0

    iput v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/a;->b()Z

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string v0, "AdTouchCollector"

    const-string v1, "onFling enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/a;->b:Landroid/view/View;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/a/u/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/a/u/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aggmoread/sdk/z/a/u/h;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    const/4 p2, 0x1

    iput p2, p1, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/a;->b()Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "AdTouchCollector"

    const-string v0, "onSingleTapUp enter"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    const/4 v0, 0x0

    iput v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/a;->b()Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v0, "AdTouchCollector"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touch mx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , my = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/aggmoread/sdk/z/a/s/a;->f:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/aggmoread/sdk/z/a/s/a;->g:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/aggmoread/sdk/z/a/g/d;->h:J

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p1, Lcom/aggmoread/sdk/z/a/g/d;->e:I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p1, Lcom/aggmoread/sdk/z/a/g/d;->f:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touch ux = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget v1, v1, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , uy = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget v1, v1, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/aggmoread/sdk/z/a/s/a;->f:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/aggmoread/sdk/z/a/g/d;->a:I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/aggmoread/sdk/z/a/s/a;->g:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/aggmoread/sdk/z/a/g/d;->b:I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/aggmoread/sdk/z/a/g/d;->g:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touch dx = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget v1, v1, Lcom/aggmoread/sdk/z/a/g/d;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , dy = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/a;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget v1, v1, Lcom/aggmoread/sdk/z/a/g/d;->b:I

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/a;->e:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
