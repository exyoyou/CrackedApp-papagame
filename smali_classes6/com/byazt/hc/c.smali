.class public abstract Lcom/byazt/hc/c;
.super Lcom/byazt/qq/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5e0,
        0x14
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/qq/tt;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/byazt/ete/ic;Lcom/byazt/ete/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/qq/tt;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;Lcom/byazt/ete/g;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 3

    .line 2
    new-instance v0, Lcom/byazt/hc/uj;

    iget-object v1, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    iget-object v2, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2}, Lcom/byazt/hc/uj;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 3
    iget-object v1, p0, Lcom/byazt/qq/tt;->sl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/qq/tt;->uj(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/byazt/qq/tt;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/qq/tt;->ve(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/byazt/qq/tt;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/qq/tt;->tt(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/byazt/hc/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/hc/c;->c(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/hc/c;->c(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hc/c;->c:Ljava/lang/String;

    return-void
.end method
