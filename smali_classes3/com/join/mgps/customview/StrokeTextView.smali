.class public Lcom/join/mgps/customview/StrokeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/facebook/rebound/m;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:I

.field private e:Lcom/facebook/rebound/i;

.field private f:Lcom/facebook/rebound/o;

.field g:Landroid/content/Context;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    const/16 v1, 0x14

    .line 3
    iput v1, p0, Lcom/join/mgps/customview/StrokeTextView;->c:I

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/StrokeTextView;->d:I

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/StrokeTextView;->h:Landroid/os/Handler;

    .line 6
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/StrokeTextView;->e(Landroid/util/AttributeSet;)V

    .line 8
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->g:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    const/16 v0, 0x14

    .line 11
    iput v0, p0, Lcom/join/mgps/customview/StrokeTextView;->c:I

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/join/mgps/customview/StrokeTextView;->d:I

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->h:Landroid/os/Handler;

    .line 14
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/StrokeTextView;->e(Landroid/util/AttributeSet;)V

    .line 16
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->g:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    const/16 v0, 0x14

    .line 19
    iput v0, p0, Lcom/join/mgps/customview/StrokeTextView;->c:I

    const/4 v0, 0x3

    .line 20
    iput v0, p0, Lcom/join/mgps/customview/StrokeTextView;->d:I

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->h:Landroid/os/Handler;

    .line 22
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/StrokeTextView;->e(Landroid/util/AttributeSet;)V

    .line 24
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->g:Landroid/content/Context;

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

.method public e(Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->StrokeTextView:[I

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/high16 v2, 0x40800000    # 4.0f

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-static {}, Lcom/facebook/rebound/o;->m()Lcom/facebook/rebound/o;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->f:Lcom/facebook/rebound/o;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/facebook/rebound/c;->d()Lcom/facebook/rebound/i;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->e:Lcom/facebook/rebound/i;

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lcom/facebook/rebound/i;->a(Lcom/facebook/rebound/m;)Lcom/facebook/rebound/i;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->e:Lcom/facebook/rebound/i;

    .line 71
    .line 72
    const-wide/16 v0, 0x0

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 5
    .line 6
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 37
    .line 38
    .line 39
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
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->e:Lcom/facebook/rebound/i;

    .line 20
    .line 21
    invoke-virtual {p1, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->h:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/customview/StrokeTextView$b;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/StrokeTextView$b;-><init>(Lcom/join/mgps/customview/StrokeTextView;)V

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
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->e:Lcom/facebook/rebound/i;

    .line 36
    .line 37
    invoke-virtual {p1, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->h:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v2, Lcom/join/mgps/customview/StrokeTextView$a;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/StrokeTextView$a;-><init>(Lcom/join/mgps/customview/StrokeTextView;)V

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
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->e:Lcom/facebook/rebound/i;

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

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
