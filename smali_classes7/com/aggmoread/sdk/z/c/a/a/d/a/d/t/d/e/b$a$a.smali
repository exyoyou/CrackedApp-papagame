.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;

    move-result-object p1

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;

    invoke-interface {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;->d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
