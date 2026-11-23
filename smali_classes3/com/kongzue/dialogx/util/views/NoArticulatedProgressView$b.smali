.class Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$b;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$b;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

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
    invoke-static {v0, p1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->g(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;F)F

    .line 14
    .line 15
    .line 16
    return-void
.end method
