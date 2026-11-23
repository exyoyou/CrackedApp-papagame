.class public Lcom/byazt/zu/tt$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/me/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x4da
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/tt;->sp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zu/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/tt$10;->c:Lcom/byazt/zu/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/byazt/zu/tt$10;->c:Lcom/byazt/zu/tt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/zu/tt;->tt(Lcom/byazt/zu/tt;Landroid/view/View;)V

    return-void
.end method

.method public c(FF)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/zu/tt$10;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->a(Lcom/byazt/zu/tt;)Lcom/byazt/lsp/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/zu/tt$10;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->a(Lcom/byazt/zu/tt;)Lcom/byazt/lsp/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/zu/tt$10;->c:Lcom/byazt/zu/tt;

    invoke-static {v1}, Lcom/byazt/zu/tt;->sp(Lcom/byazt/zu/tt;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/byazt/lsp/ve;->c(Landroid/view/View;FFZ)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/zu/tt$10;->c:Lcom/byazt/zu/tt;

    invoke-static {v0, p1}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt$10;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->a(Lcom/byazt/zu/tt;)Lcom/byazt/lsp/ve;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/am/n;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/tt$10;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->a(Lcom/byazt/zu/tt;)Lcom/byazt/lsp/ve;

    move-result-object v0

    check-cast v0, Lcom/byazt/am/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/am/n;->c(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
