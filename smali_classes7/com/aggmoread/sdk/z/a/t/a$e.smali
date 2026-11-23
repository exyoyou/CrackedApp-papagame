.class Lcom/aggmoread/sdk/z/a/t/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/t/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/t/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$e;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$e;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/a;->e(Lcom/aggmoread/sdk/z/a/t/a;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$e;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/a;->i()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$e;->a:Lcom/aggmoread/sdk/z/a/t/a;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/a/t/a;->a:Lcom/aggmoread/sdk/z/a/t/a$f;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/t/a$f;->d()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$e;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/a;->c(Lcom/aggmoread/sdk/z/a/t/a;)Lcom/aggmoread/sdk/z/a/t/a$g;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$e;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/a;->c(Lcom/aggmoread/sdk/z/a/t/a;)Lcom/aggmoread/sdk/z/a/t/a$g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/t/a$g;->a(I)V

    :cond_0
    return-void
.end method
