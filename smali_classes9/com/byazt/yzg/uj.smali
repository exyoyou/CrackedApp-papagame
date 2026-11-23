.class public Lcom/byazt/yzg/uj;
.super Lcom/byazt/yzg/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x308,
        0xf
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
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/byazt/yzg/c;->uj:I

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/yzg/c;->n:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/yzg/c;->tt:Lcom/byazt/eia/sp;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/byazt/eia/sp;->u_()Lcom/byazt/ete/gt;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/byazt/ete/gt;->ve(Lcom/byazt/ete/gt;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    return v0
.end method
