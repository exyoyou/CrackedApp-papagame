.class Lcom/aggmoread/sdk/z/a/u/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/u;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/u/u;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/u;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u$b;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u$b;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/u;->a(Lcom/aggmoread/sdk/z/a/u/u;)Lcom/aggmoread/sdk/z/a/u/o;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u$b;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/u;->a(Lcom/aggmoread/sdk/z/a/u/u;)Lcom/aggmoread/sdk/z/a/u/o;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u$b;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/u;->b(Lcom/aggmoread/sdk/z/a/u/u;)Lcom/aggmoread/sdk/z/a/u/u$f;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/u/u$f;->onClose()V

    :goto_0
    return-void
.end method
