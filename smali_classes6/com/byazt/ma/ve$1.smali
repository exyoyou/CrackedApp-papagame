.class public Lcom/byazt/ma/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sy/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28e,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ma/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ma/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ma/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

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
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    invoke-static {v0}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    invoke-static {v0}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/sy/PlayableFeedWebView;->a()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    invoke-static {v0}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    invoke-static {v0}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/sy/PlayableFeedWebView;->c(Z)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/sy/PlayableFeedWebView;->sp()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public uj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/ete/p;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/ma/ve;->tt(Lcom/byazt/ma/ve;)Lcom/byazt/kyz/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ma/ve;->uj(Lcom/byazt/ma/ve;)Lcom/byazt/kyz/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/byazt/ma/ve;->ve(Lcom/byazt/ma/ve;)Lcom/byazt/ete/ic;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/kyz/c;->c(Lcom/byazt/ete/ic;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ma/ve$1;->c:Lcom/byazt/ma/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/sy/PlayableFeedWebView;->x()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
