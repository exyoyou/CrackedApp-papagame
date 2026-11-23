.class Lcom/aggmoread/sdk/z/a/k/c$a;
.super Lcom/aggmoread/sdk/z/a/u/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/k/c;->a(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/k/c;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/k/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c$a;->a:Lcom/aggmoread/sdk/z/a/k/c;

    invoke-direct {p0, p2}, Lcom/aggmoread/sdk/z/a/u/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c$a;->a:Lcom/aggmoread/sdk/z/a/k/c;

    invoke-static {p1, p0}, Lcom/aggmoread/sdk/z/a/k/c;->a(Lcom/aggmoread/sdk/z/a/k/c;Landroid/view/View;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c$a;->a:Lcom/aggmoread/sdk/z/a/k/c;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/k/c;->f(Lcom/aggmoread/sdk/z/a/k/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c$a;->a:Lcom/aggmoread/sdk/z/a/k/c;

    invoke-static {p1, p0}, Lcom/aggmoread/sdk/z/a/k/c;->a(Lcom/aggmoread/sdk/z/a/k/c;Landroid/view/View;)V

    :cond_0
    return-void
.end method
