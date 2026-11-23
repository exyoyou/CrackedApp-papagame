.class Lcom/aggmoread/sdk/z/a/f/b$b;
.super Lcom/aggmoread/sdk/z/a/u/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/f/b;->a(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/f/b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/f/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/f/b$b;->a:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-direct {p0, p2}, Lcom/aggmoread/sdk/z/a/u/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/f/b$b;->a:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/f/b;->g(Lcom/aggmoread/sdk/z/a/f/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/f/b$b;->a:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-static {p1, p0}, Lcom/aggmoread/sdk/z/a/f/b;->a(Lcom/aggmoread/sdk/z/a/f/b;Landroid/view/View;)V

    :cond_0
    return-void
.end method
