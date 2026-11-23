.class final Lcom/windmill/kuaishou/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/f;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/windmill/kuaishou/f;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/f;Landroid/view/ViewGroup;II)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/f$6;->d:Lcom/windmill/kuaishou/f;

    iput-object p2, p0, Lcom/windmill/kuaishou/f$6;->a:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/windmill/kuaishou/f$6;->b:I

    iput p4, p0, Lcom/windmill/kuaishou/f$6;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/windmill/kuaishou/f$6;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/windmill/kuaishou/f$6;->d:Lcom/windmill/kuaishou/f;

    invoke-static {v1}, Lcom/windmill/kuaishou/f;->d(Lcom/windmill/kuaishou/f;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/windmill/kuaishou/f$6;->d:Lcom/windmill/kuaishou/f;

    invoke-static {v1}, Lcom/windmill/kuaishou/f;->d(Lcom/windmill/kuaishou/f;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/windmill/kuaishou/f$6;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v2, -0x1

    :try_start_0
    iget v3, p0, Lcom/windmill/kuaishou/f$6;->b:I

    iget v4, p0, Lcom/windmill/kuaishou/f$6;->c:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/windmill/kuaishou/f$6;->a:Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/windmill/kuaishou/f$6;->c:I

    mul-int v0, v0, v5

    iget v5, p0, Lcom/windmill/kuaishou/f$6;->b:I

    div-int/2addr v0, v5

    invoke-direct {v4, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/windmill/kuaishou/f$6;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/windmill/kuaishou/f$6;->a:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
