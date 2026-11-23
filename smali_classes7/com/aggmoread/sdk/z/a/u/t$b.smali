.class Lcom/aggmoread/sdk/z/a/u/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/t;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/u/t;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/t;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/t$b;->b:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t$b;->b:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/t$b;->b:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/t$b;->b:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/t$b;->b:Lcom/aggmoread/sdk/z/a/u/t;

    new-instance v4, Lcom/aggmoread/sdk/z/a/u/s;

    invoke-direct {v4, v0, v1}, Lcom/aggmoread/sdk/z/a/u/s;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v4}, Lcom/aggmoread/sdk/z/a/u/t;->a(Lcom/aggmoread/sdk/z/a/u/t;Lcom/aggmoread/sdk/z/a/u/s;)Lcom/aggmoread/sdk/z/a/u/s;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/t$b;->b:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/u/t;->i(Lcom/aggmoread/sdk/z/a/u/t;)Lcom/aggmoread/sdk/z/a/u/s;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/aggmoread/sdk/z/a/u/f;

    invoke-direct {v3, v0, v1}, Lcom/aggmoread/sdk/z/a/u/f;-><init>(Landroid/content/Context;I)V

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t$b;->b:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
