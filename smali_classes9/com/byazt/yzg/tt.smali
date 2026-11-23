.class public Lcom/byazt/yzg/tt;
.super Lcom/byazt/yzg/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x308,
        0xd
    }
.end annotation


# instance fields
.field public a:Z

.field public sp:I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/yzg/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/yzg/tt;->a:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/yzg/tt;->sp:I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/byazt/yzg/tt;->x:I

    .line 11
    .line 12
    return-void
.end method

.method private n()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/yzg/c;->uj()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/byazt/yzg/c;->uj:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method


# virtual methods
.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/yzg/tt;->sp:I

    .line 2
    .line 3
    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/yzg/tt;->a:Z

    return-void
.end method

.method public ve()Z
    .locals 4

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/byazt/yzg/c;->uj:I

    .line 3
    sget-boolean v1, Lcom/byazt/yzg/a;->uj:Z

    .line 4
    iget-object v2, p0, Lcom/byazt/yzg/c;->tt:Lcom/byazt/eia/sp;

    invoke-interface {v2}, Lcom/byazt/eia/sp;->u_()Lcom/byazt/ete/gt;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/ete/gt;->c(Lcom/byazt/ete/gt;)I

    move-result v2

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 5
    sput-boolean v2, Lcom/byazt/yzg/a;->uj:Z

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/byazt/yzg/c;->n:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/byazt/yzg/tt;->n()Z

    move-result v0

    return v0

    .line 8
    :cond_1
    iget-boolean v1, p0, Lcom/byazt/yzg/tt;->a:Z

    if-eqz v1, :cond_3

    .line 9
    iget v1, p0, Lcom/byazt/yzg/tt;->sp:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/byazt/yzg/tt;->n()Z

    move-result v0

    return v0

    :cond_2
    if-ne v2, v3, :cond_3

    if-ne v1, v0, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/byazt/yzg/tt;->n()Z

    move-result v0

    return v0

    :cond_3
    if-nez v2, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/byazt/yzg/tt;->n()Z

    move-result v0

    :cond_4
    return v0
.end method
