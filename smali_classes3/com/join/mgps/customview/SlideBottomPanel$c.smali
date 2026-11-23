.class Lcom/join/mgps/customview/SlideBottomPanel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlideBottomPanel;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/join/mgps/customview/SlideBottomPanel;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->b:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setY(Landroid/view/View;F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->c(Lcom/join/mgps/customview/SlideBottomPanel;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/customview/DarkFrameLayout;->getCurrentAlpha()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v1, 0x9f

    .line 43
    .line 44
    if-eq v0, v1, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/join/mgps/customview/SlideBottomPanel;->g(Lcom/join/mgps/customview/SlideBottomPanel;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    int-to-float v1, v1

    .line 59
    iget-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/join/mgps/customview/SlideBottomPanel;->h(Lcom/join/mgps/customview/SlideBottomPanel;)F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    sub-float/2addr v1, v2

    .line 66
    div-float/2addr p1, v1

    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    .line 69
    sub-float/2addr v1, p1

    .line 70
    const/high16 p1, 0x431f0000    # 159.0f

    .line 71
    .line 72
    mul-float v1, v1, p1

    .line 73
    .line 74
    float-to-int p1, v1

    .line 75
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/DarkFrameLayout;->b(I)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method
