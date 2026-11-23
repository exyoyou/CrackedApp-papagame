.class Lcom/sigmob/sdk/base/views/w$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/w;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Paint;

.field final synthetic b:Lcom/sigmob/sdk/base/views/w;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/w;Landroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$paint"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/w$2;->b:Lcom/sigmob/sdk/base/views/w;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/w$2;->a:Landroid/graphics/Paint;

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

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/w$2;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/w$2;->b:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
