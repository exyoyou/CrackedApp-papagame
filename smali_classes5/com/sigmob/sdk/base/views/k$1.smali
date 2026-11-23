.class Lcom/sigmob/sdk/base/views/k$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/k;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/k$1;->a:Lcom/sigmob/sdk/base/views/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/k$1;->a:Lcom/sigmob/sdk/base/views/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/k;->a(Lcom/sigmob/sdk/base/views/k;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/k$1;->a:Lcom/sigmob/sdk/base/views/k;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/k;->b(Lcom/sigmob/sdk/base/views/k;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/k$1;->a:Lcom/sigmob/sdk/base/views/k;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/k;->a(Lcom/sigmob/sdk/base/views/k;)Lcom/sigmob/sdk/base/views/k;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/k$1;->a:Lcom/sigmob/sdk/base/views/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/k;->a(Lcom/sigmob/sdk/base/views/k;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/k$1;->a:Lcom/sigmob/sdk/base/views/k;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/k;->b(Lcom/sigmob/sdk/base/views/k;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/k$1;->a:Lcom/sigmob/sdk/base/views/k;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/k;->a(Lcom/sigmob/sdk/base/views/k;)Lcom/sigmob/sdk/base/views/k;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
