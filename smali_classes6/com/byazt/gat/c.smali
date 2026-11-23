.class public Lcom/byazt/gat/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x314,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/uo/tt;

.field public tt:Lcom/byazt/im/ve;

.field public uj:Lcom/byazt/nc/tt;

.field public ve:Lcom/byazt/gat/uj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/im/ve;Lcom/byazt/gat/uj;Lcom/byazt/tdq/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/im/ve;",
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;",
            "Lcom/byazt/tdq/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/byazt/gat/c;->tt:Lcom/byazt/im/ve;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/byazt/gat/c;->ve:Lcom/byazt/gat/uj;

    .line 12
    .line 13
    new-instance v8, Lcom/byazt/uo/tt;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/byazt/im/ve;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/byazt/im/ve;->sp()Lcom/byazt/dj/tt;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/byazt/im/ve;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v0, p0, Lcom/byazt/gat/c;->tt:Lcom/byazt/im/ve;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/im/ve;->x()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    move-object v0, v8

    .line 34
    move-object v5, p1

    .line 35
    move-object v6, p2

    .line 36
    move-object v7, p3

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/byazt/uo/tt;-><init>(Landroid/content/Context;Lcom/byazt/dj/tt;Ljava/lang/String;ILcom/byazt/im/ve;Lcom/byazt/gat/uj;Lcom/byazt/tdq/c;)V

    .line 38
    .line 39
    .line 40
    iput-object v8, p0, Lcom/byazt/gat/c;->c:Lcom/byazt/uo/tt;

    .line 41
    .line 42
    iput-object v8, p0, Lcom/byazt/gat/c;->uj:Lcom/byazt/nc/tt;

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/nc/tt;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/gat/c;->uj:Lcom/byazt/nc/tt;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gat/c;->c:Lcom/byazt/uo/tt;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/uo/tt;->setExpressTimeOut(I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/gat/a;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/gat/c;->tt:Lcom/byazt/im/ve;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/byazt/im/ve;->uj:Lcom/byazt/im/x;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/byazt/gat/a;->c()Z

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/byazt/gat/c;->tt:Lcom/byazt/im/ve;

    iget-object v0, v0, Lcom/byazt/im/ve;->uj:Lcom/byazt/im/x;

    invoke-virtual {v0, p1}, Lcom/byazt/im/x;->c(Z)V

    .line 6
    iget-object v0, p0, Lcom/byazt/gat/c;->c:Lcom/byazt/uo/tt;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/uo/c;->updateSplashVideoFlag(Z)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/gat/c;->c:Lcom/byazt/uo/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/gat/c;->tt:Lcom/byazt/im/ve;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/gat/c;->ve:Lcom/byazt/gat/uj;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/uo/tt;->renderSplash(Lcom/byazt/im/ve;Lcom/byazt/gat/uj;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
