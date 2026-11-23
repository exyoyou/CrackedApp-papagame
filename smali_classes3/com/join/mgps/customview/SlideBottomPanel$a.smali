.class Lcom/join/mgps/customview/SlideBottomPanel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlideBottomPanel;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/customview/SlideBottomPanel;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mPanel",
            "val$t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->d:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->b:Landroid/view/View;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->c:I

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
    .locals 2
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
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->b:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setY(Landroid/view/View;F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->d:Lcom/join/mgps/customview/SlideBottomPanel;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->d:Lcom/join/mgps/customview/SlideBottomPanel;

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
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->c:I

    .line 33
    .line 34
    int-to-float v0, v0

    .line 35
    cmpg-float v0, p1, v0

    .line 36
    .line 37
    if-gez v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->d:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->c:I

    .line 46
    .line 47
    int-to-float v1, v1

    .line 48
    div-float/2addr p1, v1

    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    .line 51
    sub-float/2addr v1, p1

    .line 52
    const/high16 p1, 0x431f0000    # 159.0f

    .line 53
    .line 54
    mul-float v1, v1, p1

    .line 55
    .line 56
    float-to-int p1, v1

    .line 57
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/DarkFrameLayout;->b(I)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
