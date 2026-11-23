.class public Lcom/byazt/yzg/n;
.super Lcom/byazt/yzg/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x308,
        0x2e
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/yzg/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ve()Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/byazt/yzg/c;->uj:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/byazt/yzg/c;->tt:Lcom/byazt/eia/sp;

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/byazt/eia/sp;->u_()Lcom/byazt/ete/gt;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/byazt/ete/gt;->tt(Lcom/byazt/ete/gt;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/byazt/yzg/c;->uj()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, -0x1

    .line 26
    if-eq v1, v3, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    return v2

    .line 30
    :cond_2
    return v0
.end method
