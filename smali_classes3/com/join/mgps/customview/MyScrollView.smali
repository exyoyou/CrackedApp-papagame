.class public Lcom/join/mgps/customview/MyScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MyScrollView$b;,
        Lcom/join/mgps/customview/MyScrollView$d;,
        Lcom/join/mgps/customview/MyScrollView$c;
    }
.end annotation


# instance fields
.field private b:Lcom/join/mgps/customview/MyScrollView$b;

.field private c:Z

.field private d:Lcom/join/mgps/customview/MyScrollView$c;

.field private e:I

.field private f:Landroid/view/GestureDetector;

.field g:Landroid/view/View$OnTouchListener;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->c:Z

    .line 3
    new-instance p1, Lcom/join/mgps/customview/MyScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyScrollView$a;-><init>(Lcom/join/mgps/customview/MyScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->c:Z

    .line 9
    new-instance p1, Lcom/join/mgps/customview/MyScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyScrollView$a;-><init>(Lcom/join/mgps/customview/MyScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->h:Landroid/os/Handler;

    .line 10
    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lcom/join/mgps/customview/MyScrollView$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/MyScrollView$d;-><init>(Lcom/join/mgps/customview/MyScrollView;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->f:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->c:Z

    .line 6
    new-instance p1, Lcom/join/mgps/customview/MyScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyScrollView$a;-><init>(Lcom/join/mgps/customview/MyScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/MyScrollView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/MyScrollView;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/MyScrollView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/MyScrollView;->e:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/MyScrollView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyScrollView;->h:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/MyScrollView;)Lcom/join/mgps/customview/MyScrollView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyScrollView;->b:Lcom/join/mgps/customview/MyScrollView$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/MyScrollView;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView;->f:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->c:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :cond_1
    :goto_0
    return v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p2, p1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-lt p2, p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->d:Lcom/join/mgps/customview/MyScrollView$c;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/join/mgps/customview/MyScrollView$c;->a()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView;->b:Lcom/join/mgps/customview/MyScrollView$b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/MyScrollView;->c:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iput v2, p0, Lcom/join/mgps/customview/MyScrollView;->e:I

    .line 13
    .line 14
    invoke-interface {v0, v2}, Lcom/join/mgps/customview/MyScrollView$b;->a(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView;->h:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-wide/16 v2, 0x14

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public setOnScrollListener(Lcom/join/mgps/customview/MyScrollView$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScrollListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->b:Lcom/join/mgps/customview/MyScrollView$b;

    .line 2
    .line 3
    return-void
.end method

.method public setOtherTouchEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherTouchEvent"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public setScrollBottomListener(Lcom/join/mgps/customview/MyScrollView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollBottomListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->d:Lcom/join/mgps/customview/MyScrollView$c;

    .line 2
    .line 3
    return-void
.end method
