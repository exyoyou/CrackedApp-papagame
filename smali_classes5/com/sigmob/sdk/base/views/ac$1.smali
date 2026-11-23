.class Lcom/sigmob/sdk/base/views/ac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/ac;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/ac;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

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

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/views/ac;->a(Lcom/sigmob/sdk/base/views/ac;I)I

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/ac;->a(Lcom/sigmob/sdk/base/views/ac;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
