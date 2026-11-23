.class Lcom/join/mgps/customview/WaterProgressView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/WaterProgressView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/WaterProgressView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/WaterProgressView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/WaterProgressView$a;->b:Lcom/join/mgps/customview/WaterProgressView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView$a;->b:Lcom/join/mgps/customview/WaterProgressView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Lcom/join/mgps/customview/WaterProgressView;->a(Lcom/join/mgps/customview/WaterProgressView;I)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/WaterProgressView$a;->b:Lcom/join/mgps/customview/WaterProgressView;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/customview/WaterProgressView$a;->b:Lcom/join/mgps/customview/WaterProgressView;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/join/mgps/customview/WaterProgressView;->b(Lcom/join/mgps/customview/WaterProgressView;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    add-int/2addr v1, v2

    .line 28
    iget-object v3, p0, Lcom/join/mgps/customview/WaterProgressView$a;->b:Lcom/join/mgps/customview/WaterProgressView;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/join/mgps/customview/WaterProgressView;->c(Lcom/join/mgps/customview/WaterProgressView;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, v2

    .line 35
    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
