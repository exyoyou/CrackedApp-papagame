.class public Lcom/byazt/ma/tt;
.super Lcom/byazt/ma/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28e,
        0xd
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/byazt/ete/p;->x(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ir;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/ma/c;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/ete/ir;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/byazt/kyz/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/ete/p;->x(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ir;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p2, p1, v0}, Lcom/byazt/kyz/c;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/byazt/sy/tt;->ve:Lcom/byazt/kyz/c;

    .line 18
    .line 19
    return-void
.end method
