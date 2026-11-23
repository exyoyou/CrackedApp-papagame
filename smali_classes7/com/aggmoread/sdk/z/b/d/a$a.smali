.class Lcom/aggmoread/sdk/z/b/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/p/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/b/d/a;->a(Lcom/aggmoread/sdk/z/b/a/a;Lcom/aggmoread/sdk/z/a/s/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/s/e;

.field final synthetic b:Lcom/aggmoread/sdk/z/b/a/a;

.field final synthetic c:Lcom/aggmoread/sdk/z/b/d/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/b/d/a;Lcom/aggmoread/sdk/z/a/s/e;Lcom/aggmoread/sdk/z/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->c:Lcom/aggmoread/sdk/z/b/d/a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->a:Lcom/aggmoread/sdk/z/a/s/e;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->b:Lcom/aggmoread/sdk/z/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[BLcom/aggmoread/sdk/z/a/g/f;)V
    .locals 0

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->c:Lcom/aggmoread/sdk/z/b/d/a;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/b/d/a;->a(Lcom/aggmoread/sdk/z/b/d/a;[B)[B

    iget-object p1, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->c:Lcom/aggmoread/sdk/z/b/d/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/b/d/a;->a(Lcom/aggmoread/sdk/z/b/d/a;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/aggmoread/sdk/z/a/m/p;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/aggmoread/sdk/z/b/d/a$a$a;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/b/d/a$a$a;-><init>(Lcom/aggmoread/sdk/z/b/d/a$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->b:Lcom/aggmoread/sdk/z/b/a/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/b/a/a;->e()Lcom/aggmoread/sdk/z/b/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/i/e;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->c:Lcom/aggmoread/sdk/z/b/d/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/b/d/a;->a(Lcom/aggmoread/sdk/z/b/d/a;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->c:Lcom/aggmoread/sdk/z/b/d/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/b/d/a;->k(Lcom/aggmoread/sdk/z/b/d/a;)Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->c:Lcom/aggmoread/sdk/z/b/d/a;

    invoke-static {p3}, Lcom/aggmoread/sdk/z/b/d/a;->l(Lcom/aggmoread/sdk/z/b/d/a;)Landroid/view/View;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/aggmoread/sdk/z/b/d/a;->a(Lcom/aggmoread/sdk/z/b/d/a;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->a:Lcom/aggmoread/sdk/z/a/s/e;

    sget-object p2, Lcom/aggmoread/sdk/z/a/g/f;->e:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/b/d/a$a;->a:Lcom/aggmoread/sdk/z/a/s/e;

    sget-object p2, Lcom/aggmoread/sdk/z/a/g/f;->e:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void
.end method
