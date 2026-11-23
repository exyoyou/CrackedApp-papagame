.class Lcom/sigmob/sdk/base/views/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/f;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/f;->a(Lcom/sigmob/sdk/base/views/f;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "downloadId"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/f;->a(Lcom/sigmob/sdk/base/views/f;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/b;->b(ZJ)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/f;->e()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/f;->f()V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/f;->a(Lcom/sigmob/sdk/base/views/f;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/b;->b(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/f;->i()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/f;->f()V

    :goto_0
    return-void
.end method

.method public b(ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "downloadId"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/f;->a(Lcom/sigmob/sdk/base/views/f;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/b;->b(ZJ)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/f;->h()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/f;->f()V

    :goto_0
    return-void
.end method

.method public c(ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "downloadId"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/f;->a(Lcom/sigmob/sdk/base/views/f;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/b;->c(ZJ)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/f$2;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/f;->g()V

    return-void
.end method
