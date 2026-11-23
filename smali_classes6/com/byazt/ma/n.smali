.class public Lcom/byazt/ma/n;
.super Lcom/byazt/ma/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28e,
        0x2e
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/ete/ir;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ma/c;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/ete/ir;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ir;->uj()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Lcom/byazt/sy/uj;->c(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {p1}, Lcom/byazt/sy/uj;->ve(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-virtual {p0, p1, p1}, Lcom/byazt/ma/c;->tt(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    :goto_0
    return-void
.end method
