.class public Lcom/join/mgps/customview/MyParentScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MyParentScrollView$b;
    }
.end annotation


# instance fields
.field private b:Lcom/join/mgps/customview/MyParentScrollView$b;

.field private c:I

.field public d:Z

.field private e:Landroid/os/Handler;

.field private f:F

.field private g:F

.field private h:F

.field private i:F


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

    .line 2
    new-instance p1, Lcom/join/mgps/customview/MyParentScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyParentScrollView$a;-><init>(Lcom/join/mgps/customview/MyParentScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->e:Landroid/os/Handler;

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

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Lcom/join/mgps/customview/MyParentScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyParentScrollView$a;-><init>(Lcom/join/mgps/customview/MyParentScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->e:Landroid/os/Handler;

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/join/mgps/customview/MyParentScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyParentScrollView$a;-><init>(Lcom/join/mgps/customview/MyParentScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/MyParentScrollView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/MyParentScrollView;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/MyParentScrollView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->c:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/MyParentScrollView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyParentScrollView;->e:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/MyParentScrollView;)Lcom/join/mgps/customview/MyParentScrollView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyParentScrollView;->b:Lcom/join/mgps/customview/MyParentScrollView$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, p0, Lcom/join/mgps/customview/MyParentScrollView;->f:F

    .line 20
    .line 21
    iget v3, p0, Lcom/join/mgps/customview/MyParentScrollView;->h:F

    .line 22
    .line 23
    sub-float v3, v0, v3

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-float/2addr v2, v3

    .line 30
    iput v2, p0, Lcom/join/mgps/customview/MyParentScrollView;->f:F

    .line 31
    .line 32
    iget v2, p0, Lcom/join/mgps/customview/MyParentScrollView;->g:F

    .line 33
    .line 34
    iget v3, p0, Lcom/join/mgps/customview/MyParentScrollView;->i:F

    .line 35
    .line 36
    sub-float v3, v1, v3

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-float/2addr v2, v3

    .line 43
    iput v2, p0, Lcom/join/mgps/customview/MyParentScrollView;->g:F

    .line 44
    .line 45
    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->h:F

    .line 46
    .line 47
    iput v1, p0, Lcom/join/mgps/customview/MyParentScrollView;->i:F

    .line 48
    .line 49
    iget v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->f:F

    .line 50
    .line 51
    cmpl-float v0, v0, v2

    .line 52
    .line 53
    if-lez v0, :cond_2

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    return p1

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->g:F

    .line 59
    .line 60
    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->f:F

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->h:F

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->i:F

    .line 73
    .line 74
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1
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
    iget-object v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->b:Lcom/join/mgps/customview/MyParentScrollView$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Lcom/join/mgps/customview/MyParentScrollView;->c:I

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/join/mgps/customview/MyParentScrollView$b;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->e:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-wide/16 v2, 0x14

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public setIsInnerScroll(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isInnerScroll"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollListener(Lcom/join/mgps/customview/MyParentScrollView$b;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->b:Lcom/join/mgps/customview/MyParentScrollView$b;

    .line 2
    .line 3
    return-void
.end method
