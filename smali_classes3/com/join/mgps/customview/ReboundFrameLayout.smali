.class public Lcom/join/mgps/customview/ReboundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/facebook/rebound/m;


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/facebook/rebound/i;

.field private e:Lcom/facebook/rebound/o;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->b:I

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->c:I

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->f:Landroid/os/Handler;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/ReboundFrameLayout;->e()V

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

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->b:I

    const/16 p1, 0xa

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->c:I

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->f:Landroid/os/Handler;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/ReboundFrameLayout;->e()V

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
            "defStyleAttr"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->b:I

    const/16 p1, 0xa

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->c:I

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->f:Landroid/os/Handler;

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/customview/ReboundFrameLayout;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x64

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->b:I

    const/16 p1, 0xa

    .line 18
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->c:I

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->f:Landroid/os/Handler;

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/customview/ReboundFrameLayout;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/rebound/o;->m()Lcom/facebook/rebound/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->e:Lcom/facebook/rebound/o;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/rebound/c;->d()Lcom/facebook/rebound/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->d:Lcom/facebook/rebound/i;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/facebook/rebound/i;->a(Lcom/facebook/rebound/m;)Lcom/facebook/rebound/i;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->d:Lcom/facebook/rebound/i;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spring"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/rebound/i;->f()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    double-to-float p1, v0

    .line 6
    const v0, 0x3e99999a    # 0.3f

    .line 7
    .line 8
    .line 9
    mul-float p1, p1, v0

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    sub-float/2addr v0, p1

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b(Lcom/facebook/rebound/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spring"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(Lcom/facebook/rebound/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spring"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public d(Lcom/facebook/rebound/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spring"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-wide/16 v0, 0xc8

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    if-eq p1, p2, :cond_1

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    if-eq p1, v4, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->d:Lcom/facebook/rebound/i;

    .line 20
    .line 21
    invoke-virtual {p1, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->f:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/customview/ReboundFrameLayout$b;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ReboundFrameLayout$b;-><init>(Lcom/join/mgps/customview/ReboundFrameLayout;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    return p2

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->d:Lcom/facebook/rebound/i;

    .line 36
    .line 37
    invoke-virtual {p1, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->f:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v2, Lcom/join/mgps/customview/ReboundFrameLayout$a;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ReboundFrameLayout$a;-><init>(Lcom/join/mgps/customview/ReboundFrameLayout;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    return p2

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->d:Lcom/facebook/rebound/i;

    .line 52
    .line 53
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 56
    .line 57
    .line 58
    return p2
.end method
