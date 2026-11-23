.class Lcom/papa91/view/RoundedRectangularProgressView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RoundedRectangularProgressView;


# direct methods
.method constructor <init>(Lcom/papa91/view/RoundedRectangularProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

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

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$002(Lcom/papa91/view/RoundedRectangularProgressView;F)F

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 17
    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-static {p1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$000(Lcom/papa91/view/RoundedRectangularProgressView;)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {p1, v0}, Lcom/papa91/view/RoundedRectangularProgressView;->access$002(Lcom/papa91/view/RoundedRectangularProgressView;F)F

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iget-object v2, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/papa91/view/RoundedRectangularProgressView;->access$200(Lcom/papa91/view/RoundedRectangularProgressView;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    sub-long/2addr v0, v2

    .line 44
    invoke-static {p1, v0, v1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$102(Lcom/papa91/view/RoundedRectangularProgressView;J)J

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method
