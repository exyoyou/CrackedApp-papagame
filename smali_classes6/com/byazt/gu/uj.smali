.class public Lcom/byazt/gu/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11,
        0xf
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/eg/n;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/gu/uj;->c:Lcom/byazt/eg/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/gqp/yp;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/gu/x;

    iget-object v1, p0, Lcom/byazt/gu/uj;->c:Lcom/byazt/eg/n;

    invoke-interface {v1}, Lcom/byazt/eg/n;->c()Lcom/byazt/eg/yv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/gu/x;-><init>(Lcom/byazt/eg/yv;)V

    return-object v0
.end method

.method public c(Lcom/byazt/gqp/ve;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/gu/uj;->c:Lcom/byazt/eg/n;

    new-instance v1, Lcom/byazt/gu/uj$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/gu/uj$1;-><init>(Lcom/byazt/gu/uj;Lcom/byazt/gqp/ve;)V

    invoke-interface {v0, v1}, Lcom/byazt/eg/n;->c(Lcom/byazt/eg/a;)V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/gu/uj;->n()Lcom/byazt/gqp/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public n()Lcom/byazt/gqp/tt;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/gu/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/gu/uj;->c:Lcom/byazt/eg/n;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/byazt/eg/n;->n()Lcom/byazt/eg/n;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/byazt/gu/uj;-><init>(Lcom/byazt/eg/n;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public tt()Lcom/byazt/gqp/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/gu/i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/gu/uj;->c:Lcom/byazt/eg/n;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/byazt/eg/n;->tt()Lcom/byazt/eg/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/byazt/gu/i;-><init>(Lcom/byazt/eg/h;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/uj;->c:Lcom/byazt/eg/n;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/eg/n;->uj()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/uj;->c:Lcom/byazt/eg/n;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/eg/n;->ve()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
