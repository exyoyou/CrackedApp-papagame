.class Lcom/aggmoread/sdk/z/a/s/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/s/g;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/s/g;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/s/g;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$e;->a:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$e;->a:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/s/g;->f(Lcom/aggmoread/sdk/z/a/s/g;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-le p1, v1, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$e;->a:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/s/g;->k(Lcom/aggmoread/sdk/z/a/s/g;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$e;->a:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/s/g;->i(Lcom/aggmoread/sdk/z/a/s/g;)Lcom/aggmoread/sdk/z/a/s/e;

    move-result-object p1

    instance-of p1, p1, Lcom/aggmoread/sdk/z/a/s/f;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$e;->a:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/s/g;->i(Lcom/aggmoread/sdk/z/a/s/g;)Lcom/aggmoread/sdk/z/a/s/e;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/a/s/f;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/s/f;->e()V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$e;->a:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/s/g;->e(Lcom/aggmoread/sdk/z/a/s/g;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$e;->a:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/s/g;->i(Lcom/aggmoread/sdk/z/a/s/g;)Lcom/aggmoread/sdk/z/a/s/e;

    move-result-object p1

    sget-object v0, Lcom/aggmoread/sdk/z/a/g/f;->f:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/i/h;->a(Lcom/aggmoread/sdk/z/a/g/f;)V

    :goto_0
    return-void
.end method
