.class public Lcom/byazt/sy/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x210,
        0x2e
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/ic;

.field public tt:Lcom/byazt/ma/tt;

.field public ve:Lcom/byazt/ma/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/byazt/sy/n;->c:Lcom/byazt/ete/ic;

    .line 3
    new-instance v0, Lcom/byazt/ma/tt;

    invoke-direct {v0, p1, p2}, Lcom/byazt/ma/tt;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V

    iput-object v0, p0, Lcom/byazt/sy/n;->tt:Lcom/byazt/ma/tt;

    .line 4
    new-instance v0, Lcom/byazt/ma/ve;

    iget-object v1, p0, Lcom/byazt/sy/n;->c:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, p2}, Lcom/byazt/ma/ve;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V

    iput-object v0, p0, Lcom/byazt/sy/n;->ve:Lcom/byazt/ma/ve;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/byazt/ete/p;->c(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 8
    invoke-static {p1}, Lcom/byazt/ete/p;->tt(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/byazt/rgb/a;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/byazt/sy/n;->c:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/p;->uj(Lcom/byazt/ete/ic;)I

    move-result p2

    .line 11
    invoke-static {}, Lcom/byazt/rgb/a;->c()Lcom/byazt/lh/sp;

    move-result-object v0

    invoke-static {p1}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/byazt/sy/n$1;

    invoke-direct {v1, p0, p2}, Lcom/byazt/sy/n$1;-><init>(Lcom/byazt/sy/n;I)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/dj/tt;Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/byazt/sy/n;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V

    .line 13
    iget-object p1, p0, Lcom/byazt/sy/n;->tt:Lcom/byazt/ma/tt;

    invoke-virtual {p1, p3}, Lcom/byazt/ma/c;->c(Lcom/byazt/dj/tt;)V

    .line 14
    iget-object p1, p0, Lcom/byazt/sy/n;->tt:Lcom/byazt/ma/tt;

    invoke-virtual {p1, p4}, Lcom/byazt/ma/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/sy/n;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/sy/n;->tt(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private tt(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    const-string v0, "easy_play_tag"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    instance-of p1, p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 7
    check-cast p2, Landroid/view/ViewGroup;

    .line 8
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/sy/sp;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/sy/n;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/p;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/sy/n;->tt:Lcom/byazt/ma/tt;

    invoke-virtual {v0}, Lcom/byazt/ma/c;->c()Lcom/byazt/sy/sp;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/sy/n;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/p;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/sy/n;->ve:Lcom/byazt/ma/ve;

    invoke-virtual {v0}, Lcom/byazt/ma/ve;->c()Lcom/byazt/sy/sp;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Lcom/byazt/sy/n$3;

    invoke-direct {v0, p0}, Lcom/byazt/sy/n$3;-><init>(Lcom/byazt/sy/n;)V

    return-object v0
.end method

.method public c(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/byazt/sy/n$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/sy/n$2;-><init>(Lcom/byazt/sy/n;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/byazt/lsp/tt;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/sy/n;->ve:Lcom/byazt/ma/ve;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/sy/tt;->c(Lcom/byazt/lsp/tt;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/sy/n;->tt:Lcom/byazt/ma/tt;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/sy/tt;->c(Lcom/byazt/lsp/tt;)V

    :cond_1
    return-void
.end method

.method public tt()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/sy/n;->tt:Lcom/byazt/ma/tt;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/byazt/ma/c;->n()V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/sy/n;->ve:Lcom/byazt/ma/ve;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/byazt/ma/ve;->ve()V

    :cond_1
    return-void
.end method
