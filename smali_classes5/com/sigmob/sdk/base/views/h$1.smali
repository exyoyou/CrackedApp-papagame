.class Lcom/sigmob/sdk/base/views/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/h;->a(Lcom/sigmob/sdk/base/views/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/i;

.field final synthetic b:Lcom/sigmob/sdk/base/views/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/h;Lcom/sigmob/sdk/base/views/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/h$1;->b:Lcom/sigmob/sdk/base/views/h;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/h$1;->a:Lcom/sigmob/sdk/base/views/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueAnimator"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/h$1;->a:Lcom/sigmob/sdk/base/views/i;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/i;->setLineWidth(F)V

    return-void
.end method
