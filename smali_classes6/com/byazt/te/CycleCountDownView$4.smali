.class public Lcom/byazt/te/CycleCountDownView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xe,
        0x633
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/te/CycleCountDownView;->getArcAnim()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/te/CycleCountDownView;


# direct methods
.method public constructor <init>(Lcom/byazt/te/CycleCountDownView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/te/CycleCountDownView$4;->c:Lcom/byazt/te/CycleCountDownView;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/te/CycleCountDownView$4;->c:Lcom/byazt/te/CycleCountDownView;

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
    invoke-static {v0, p1}, Lcom/byazt/te/CycleCountDownView;->c(Lcom/byazt/te/CycleCountDownView;F)F

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/te/CycleCountDownView$4;->c:Lcom/byazt/te/CycleCountDownView;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
