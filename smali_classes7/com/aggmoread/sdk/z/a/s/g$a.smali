.class Lcom/aggmoread/sdk/z/a/s/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/p/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/s/g;->a(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/s/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/s/e;

.field final synthetic b:Lcom/aggmoread/sdk/z/a/g/c;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/s/g;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/s/g;Lcom/aggmoread/sdk/z/a/s/e;Lcom/aggmoread/sdk/z/a/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->c:Lcom/aggmoread/sdk/z/a/s/g;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->a:Lcom/aggmoread/sdk/z/a/s/e;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->b:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[BLcom/aggmoread/sdk/z/a/g/f;)V
    .locals 1

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->c:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/s/g;->a(Lcom/aggmoread/sdk/z/a/s/g;[B)[B

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->c:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/s/g;->a(Lcom/aggmoread/sdk/z/a/s/g;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/aggmoread/sdk/z/a/m/p;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/aggmoread/sdk/z/a/s/g$a$a;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/s/g$a$a;-><init>(Lcom/aggmoread/sdk/z/a/s/g$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->b:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/i/e;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->c:Lcom/aggmoread/sdk/z/a/s/g;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/s/g;->a(Lcom/aggmoread/sdk/z/a/s/g;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->c:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/s/g;->f(Lcom/aggmoread/sdk/z/a/s/g;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object p3, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->c:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {p3}, Lcom/aggmoread/sdk/z/a/s/g;->g(Lcom/aggmoread/sdk/z/a/s/g;)Landroid/view/ViewGroup;

    move-result-object p3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->c:Lcom/aggmoread/sdk/z/a/s/g;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/s/g;->h(Lcom/aggmoread/sdk/z/a/s/g;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/aggmoread/sdk/z/a/s/g;->a(Lcom/aggmoread/sdk/z/a/s/g;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->a:Lcom/aggmoread/sdk/z/a/s/e;

    sget-object p2, Lcom/aggmoread/sdk/z/a/g/f;->e:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g$a;->a:Lcom/aggmoread/sdk/z/a/s/e;

    sget-object p2, Lcom/aggmoread/sdk/z/a/g/f;->e:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void
.end method
