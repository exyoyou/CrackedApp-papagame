.class public abstract Lcom/byazt/qq/c;
.super Lcom/byazt/qq/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58,
        0x14
    }
.end annotation


# instance fields
.field public a:Z

.field public c:I

.field public n:Z

.field public tt:I

.field public uj:Z

.field public ve:Z


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
.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/qq/c;->c:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/qq/c;->ve:Z

    return-void
.end method

.method public tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 3

    .line 3
    new-instance v0, Lcom/byazt/qq/u;

    iget-object v1, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    iget-object v2, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2}, Lcom/byazt/qq/u;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 4
    iget-boolean v1, p0, Lcom/byazt/qq/c;->uj:Z

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->tt(Z)V

    .line 5
    iget-boolean v1, p0, Lcom/byazt/qq/c;->ve:Z

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->c(Z)V

    .line 6
    iget v1, p0, Lcom/byazt/qq/c;->c:I

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->c(I)V

    .line 7
    iget v1, p0, Lcom/byazt/qq/c;->tt:I

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->tt(I)V

    .line 8
    iget-object v1, p0, Lcom/byazt/qq/tt;->sl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/qq/tt;->uj(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/byazt/qq/tt;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/qq/tt;->ve(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/byazt/qq/tt;->m:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/byazt/qq/tt;->c(Ljava/util/Map;)V

    .line 11
    iget-object v1, p0, Lcom/byazt/qq/tt;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/qq/u;->tt(Ljava/lang/String;)V

    .line 12
    iget-boolean v1, p0, Lcom/byazt/qq/c;->a:Z

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->ve(Z)V

    .line 13
    iget-boolean v1, p0, Lcom/byazt/qq/c;->n:Z

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->uj(Z)V

    .line 14
    invoke-virtual {v0, p1}, Lcom/byazt/qq/u;->tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object p1

    return-object p1
.end method

.method public tt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/qq/c;->tt:I

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/qq/c;->uj:Z

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/qq/c;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/qq/c;->a:Z

    .line 2
    .line 3
    return-void
.end method
