.class public Lcom/byazt/but/TTCountdownViewForCircle$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a0,
        0x3da
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/but/TTCountdownViewForCircle;->getNumAnim()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/but/TTCountdownViewForCircle;


# direct methods
.method public constructor <init>(Lcom/byazt/but/TTCountdownViewForCircle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/but/TTCountdownViewForCircle$2;->c:Lcom/byazt/but/TTCountdownViewForCircle;

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
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle$2;->c:Lcom/byazt/but/TTCountdownViewForCircle;

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
    invoke-static {v0, p1}, Lcom/byazt/but/TTCountdownViewForCircle;->c(Lcom/byazt/but/TTCountdownViewForCircle;F)F

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/but/TTCountdownViewForCircle$2;->c:Lcom/byazt/but/TTCountdownViewForCircle;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
