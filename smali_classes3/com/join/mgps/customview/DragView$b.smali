.class Lcom/join/mgps/customview/DragView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/DragView;->f(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/customview/DragView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/DragView;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$isLeft",
            "val$start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DragView$b;->d:Lcom/join/mgps/customview/DragView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/customview/DragView$b;->b:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/customview/DragView$b;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/DragView$b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$b;->d:Lcom/join/mgps/customview/DragView;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/join/mgps/customview/DragView$b;->c:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sub-float/2addr v2, p1

    .line 21
    mul-float v1, v1, v2

    .line 22
    .line 23
    float-to-int p1, v1

    .line 24
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$b;->d:Lcom/join/mgps/customview/DragView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, p0, Lcom/join/mgps/customview/DragView$b;->c:I

    .line 34
    .line 35
    int-to-float v1, v1

    .line 36
    iget-object v2, p0, Lcom/join/mgps/customview/DragView$b;->d:Lcom/join/mgps/customview/DragView;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/join/mgps/customview/DragView;->d(Lcom/join/mgps/customview/DragView;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget v3, p0, Lcom/join/mgps/customview/DragView$b;->c:I

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    iget-object v3, p0, Lcom/join/mgps/customview/DragView$b;->d:Lcom/join/mgps/customview/DragView;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v2, v3

    .line 52
    int-to-float v2, v2

    .line 53
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    mul-float v2, v2, p1

    .line 58
    .line 59
    add-float/2addr v1, v2

    .line 60
    float-to-int p1, v1

    .line 61
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 62
    .line 63
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/DragView$b;->d:Lcom/join/mgps/customview/DragView;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
