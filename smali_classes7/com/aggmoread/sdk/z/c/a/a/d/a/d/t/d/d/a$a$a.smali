.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;

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

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;

    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    iget-object p3, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p2, p3, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p1

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;

    iget-object p3, p3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    iget-object p3, p3, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->a()V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
