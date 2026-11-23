.class Lcom/aggmoread/sdk/z/a/t/a$c;
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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$c;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$c;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/a;->g(Lcom/aggmoread/sdk/z/a/t/a;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/t/a;->a(Lcom/aggmoread/sdk/z/a/t/a;Z)Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$c;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/a;->h(Lcom/aggmoread/sdk/z/a/t/a;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$c;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/a;->i(Lcom/aggmoread/sdk/z/a/t/a;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$c;->a:Lcom/aggmoread/sdk/z/a/t/a;

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/t/a;->a:Lcom/aggmoread/sdk/z/a/t/a$f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/a;->g(Lcom/aggmoread/sdk/z/a/t/a;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/t/a$f;->a(Z)V

    return-void
.end method
