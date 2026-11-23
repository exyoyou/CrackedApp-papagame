.class Lcom/aggmoread/sdk/z/a/o/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/o/a$e;->a(I[BLcom/aggmoread/sdk/z/a/g/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/o/a$e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/o/a$e;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/o/a;->d(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/o/a$j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/o/a;->d(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/o/a$j;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/o/a;->f(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/s/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/a/o/a$j;->a(Lcom/aggmoread/sdk/z/a/s/a;)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/o/a;->g(Lcom/aggmoread/sdk/z/a/o/a;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/o/a;->e(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/u/g;

    move-result-object v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/g/h;

    move-result-object v2

    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/g/h;->f:Lcom/aggmoread/sdk/z/a/i/b;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/g/h;

    move-result-object v3

    iget-wide v3, v3, Lcom/aggmoread/sdk/z/a/g/h;->h:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/a/i/b;D)Lcom/aggmoread/sdk/z/a/u/q;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/o/a;->f(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/s/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/s/a;->a(Lcom/aggmoread/sdk/z/a/u/q;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/o/a;->e(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/u/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/g;->a()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a$e$a;->c:Lcom/aggmoread/sdk/z/a/o/a$e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/o/a$e;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/o/a;->h(Lcom/aggmoread/sdk/z/a/o/a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
