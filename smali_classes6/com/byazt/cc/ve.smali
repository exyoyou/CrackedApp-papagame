.class public abstract Lcom/byazt/cc/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x36
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public tt:Landroid/view/ViewGroup;

.field public uj:Lcom/byazt/cc/i$c;

.field public ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/cc/ve;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/byazt/cc/ve;->tt:Landroid/view/ViewGroup;

    .line 4
    iput-object p3, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    return-void
.end method

.method public abstract c(Lcom/byazt/hkv/c;)V
.end method

.method public c(Lcom/byazt/un/uj;Lcom/byazt/cc/i$c;)V
    .locals 2

    .line 5
    iget-object p1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    const-string v0, "splash_ad"

    invoke-virtual {p0}, Lcom/byazt/cc/ve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/byazt/ddx/uj;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/cc/ve;->tt:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iput-object p2, p0, Lcom/byazt/cc/ve;->uj:Lcom/byazt/cc/i$c;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/ve;->uj:Lcom/byazt/cc/i$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/cc/i$c;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
