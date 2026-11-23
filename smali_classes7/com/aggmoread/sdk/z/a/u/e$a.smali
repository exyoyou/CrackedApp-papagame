.class Lcom/aggmoread/sdk/z/a/u/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Lcom/aggmoread/sdk/z/a/u/e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/e;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/e$a;->b:Lcom/aggmoread/sdk/z/a/u/e;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/u/e$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e$a;->b:Lcom/aggmoread/sdk/z/a/u/e;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "anim canCel"

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e$a;->b:Lcom/aggmoread/sdk/z/a/u/e;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/e;->a(Lcom/aggmoread/sdk/z/a/u/e;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/e$a;->b:Lcom/aggmoread/sdk/z/a/u/e;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
