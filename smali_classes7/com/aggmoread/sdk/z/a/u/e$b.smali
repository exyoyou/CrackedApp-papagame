.class Lcom/aggmoread/sdk/z/a/u/e$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/aggmoread/sdk/z/a/u/e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/e;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/e$b;->b:Lcom/aggmoread/sdk/z/a/u/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/e$b;->a:I

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/e$b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/e$b;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e$b;->b:Lcom/aggmoread/sdk/z/a/u/e;

    new-instance v1, Lcom/aggmoread/sdk/z/a/u/e$b$a;

    invoke-direct {v1, p0, p1}, Lcom/aggmoread/sdk/z/a/u/e$b$a;-><init>(Lcom/aggmoread/sdk/z/a/u/e$b;Landroid/animation/Animator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
