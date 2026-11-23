.class Lcom/sigmob/sdk/base/views/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/k;->i()V
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

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/k$3;->a:Lcom/sigmob/sdk/base/views/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/k$3;->a:Lcom/sigmob/sdk/base/views/k;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/k;->a(Lcom/sigmob/sdk/base/views/k;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/k$3;->a:Lcom/sigmob/sdk/base/views/k;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/k;->a(Lcom/sigmob/sdk/base/views/k;)Lcom/sigmob/sdk/base/views/k;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/k$3;->a:Lcom/sigmob/sdk/base/views/k;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/k;->b(Lcom/sigmob/sdk/base/views/k;)V

    const-string p1, "startUpToDownAnimator end"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method
