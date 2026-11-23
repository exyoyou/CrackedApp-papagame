.class public Lcom/byazt/zu/uj$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zq/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x65
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/uj;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zu/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/uj$4;->c:Lcom/byazt/zu/uj;

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
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/uj$4;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->tt(Lcom/byazt/zu/uj;)Lcom/byazt/yl/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getDislikeCallback()Lcom/byazt/dhf/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/zu/uj$4;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->tt(Lcom/byazt/zu/uj;)Lcom/byazt/yl/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getDislikeCallback()Lcom/byazt/dhf/c;

    move-result-object v0

    const-string v1, "banner ad closed"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/byazt/dhf/c;->c(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/zu/uj$4;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->n(Lcom/byazt/zu/uj;)Lcom/byazt/ft/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/zu/uj$4;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->n(Lcom/byazt/zu/uj;)Lcom/byazt/ft/tt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ft/tt;->c(Landroid/view/View;I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/zu/uj$4;->c:Lcom/byazt/zu/uj;

    invoke-static {p1}, Lcom/byazt/zu/uj;->a(Lcom/byazt/zu/uj;)V

    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 0
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj$4;->c:Lcom/byazt/zu/uj;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
