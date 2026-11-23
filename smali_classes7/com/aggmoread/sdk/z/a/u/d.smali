.class public Lcom/aggmoread/sdk/z/a/u/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/u/d$d;,
        Lcom/aggmoread/sdk/z/a/u/d$e;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public c:Lcom/aggmoread/sdk/z/a/g/d;

.field private d:Lcom/aggmoread/sdk/z/a/u/d$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->a:I

    new-instance v0, Lcom/aggmoread/sdk/z/a/u/d$a;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/u/d$a;-><init>(Lcom/aggmoread/sdk/z/a/u/d;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v0, Lcom/aggmoread/sdk/z/a/g/d;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/g/d;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/u/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/d;)Lcom/aggmoread/sdk/z/a/u/d$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/d;->d:Lcom/aggmoread/sdk/z/a/u/d$e;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;I)Z
    .locals 5

    .line 8
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/view/ViewGroup;

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/aggmoread/sdk/z/a/u/d;->a(Landroid/view/View;Landroid/view/ViewGroup;I)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_1
    if-ne v3, p1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/d;Landroid/view/View;Landroid/view/ViewGroup;I)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/aggmoread/sdk/z/a/u/d;->a(Landroid/view/View;Landroid/view/ViewGroup;I)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->d:Lcom/aggmoread/sdk/z/a/u/d$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/aggmoread/sdk/z/a/g/d;->e:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/aggmoread/sdk/z/a/g/d;->f:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->d:Lcom/aggmoread/sdk/z/a/u/d$e;

    invoke-interface {v0, p0}, Lcom/aggmoread/sdk/z/a/u/d$e;->onClick(Landroid/view/View;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/h/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->d:Lcom/aggmoread/sdk/z/a/u/d$e;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/u/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/d;->b()V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/u/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aggmoread/sdk/z/a/u/d;->a:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/d;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/d;->a:I

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/u/d$e;)V
    .locals 1

    .line 5
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/d;->d:Lcom/aggmoread/sdk/z/a/u/d$e;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/u/q;)V
    .locals 1

    .line 6
    if-eqz p1, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/a/u/d$c;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/u/d$c;-><init>(Lcom/aggmoread/sdk/z/a/u/d;)V

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/u/q;->a(Lcom/aggmoread/sdk/z/a/u/q$b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/a/u/d$b;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/a/u/d$b;-><init>(Lcom/aggmoread/sdk/z/a/u/d;Ljava/util/List;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->b(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/d;->b()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->d:Lcom/aggmoread/sdk/z/a/u/d$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/u/d$e;->d()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "ApiViewStatusLayout"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/aggmoread/sdk/z/a/g/d;->h:J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/aggmoread/sdk/z/a/g/d;->e:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/aggmoread/sdk/z/a/g/d;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch ux = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget v2, v2, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , uy = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget v2, v2, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iput v0, v3, Lcom/aggmoread/sdk/z/a/g/d;->a:I

    iput v2, v3, Lcom/aggmoread/sdk/z/a/g/d;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/aggmoread/sdk/z/a/g/d;->g:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch dx = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget v2, v2, Lcom/aggmoread/sdk/z/a/g/d;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , dy = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    iget v2, v2, Lcom/aggmoread/sdk/z/a/g/d;->b:I

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d;->d:Lcom/aggmoread/sdk/z/a/u/d$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/u/d$e;->a(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method
