.class public Lcom/byazt/biq/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc,
        0x36
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/kcl/a;

.field public c:I

.field public n:I

.field public final sp:Lcom/byazt/fcd/c;

.field public tt:I

.field public final uj:I

.field public ve:I


# direct methods
.method public constructor <init>(ZLcom/byazt/ete/ic;Lcom/byazt/kcl/a;Lcom/byazt/fcd/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/biq/ve;->c:I

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/biq/ve;->tt:I

    .line 8
    .line 9
    const/16 v0, 0x3e8

    .line 10
    .line 11
    iput v0, p0, Lcom/byazt/biq/ve;->ve:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/byazt/biq/ve;->a:Lcom/byazt/kcl/a;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/byazt/biq/ve;->sp:Lcom/byazt/fcd/c;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Lcom/byazt/ogz/sl;->uj(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p2}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/byazt/ogz/sl;->n(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_0
    iput p1, p0, Lcom/byazt/biq/ve;->uj:I

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/biq/ve;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/biq/ve;->a:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(I)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/biq/ve;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/byazt/biq/ve;->n:I

    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/biq/ve;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/biq/ve;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/biq/ve;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/byazt/biq/ve;->c:I

    .line 6
    .line 7
    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/biq/ve;->n:I

    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/biq/ve;->tt:I

    return-void
.end method

.method public uj()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/biq/ve;->sp:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->pf()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/biq/ve;->uj:I

    return v0
.end method

.method public ve(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/biq/ve;->ve:I

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/biq/ve;->tt:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/byazt/biq/ve;->tt:I

    .line 6
    .line 7
    return-void
.end method
