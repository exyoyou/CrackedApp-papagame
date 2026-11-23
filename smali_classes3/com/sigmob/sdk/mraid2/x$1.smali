.class Lcom/sigmob/sdk/mraid2/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/x;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/x;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid2/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/x;->h()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/x;->e()V

    :goto_0
    return-void
.end method

.method public a(ZJ)V
    .locals 0
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
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/x;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/x;->e()V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/x;->i()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/x;->e()V

    :goto_0
    return-void
.end method

.method public b(ZJ)V
    .locals 0
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
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/x;->g()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/x;->e()V

    :goto_0
    return-void
.end method

.method public c(ZJ)V
    .locals 0
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

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$1;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/x;->f()V

    return-void
.end method
