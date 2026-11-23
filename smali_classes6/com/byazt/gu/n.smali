.class public Lcom/byazt/gu/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11,
        0x2e
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/eg/gt$c;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/gt$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/gu/n;->c:Lcom/byazt/eg/gt$c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/m;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/gu/n;->c:Lcom/byazt/eg/gt$c;

    invoke-interface {v0}, Lcom/byazt/eg/gt$c;->c()Lcom/byazt/eg/yv;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/byazt/gu/i;

    iget-object v2, p0, Lcom/byazt/gu/n;->c:Lcom/byazt/eg/gt$c;

    invoke-virtual {v0}, Lcom/byazt/eg/yv;->a()Lcom/byazt/eg/yv$c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->tt()Lcom/byazt/gqp/sp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/gqp/sp;->c()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/eg/yv$c;->c(Ljava/net/URL;)Lcom/byazt/eg/yv$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/eg/yv$c;->c()Lcom/byazt/eg/yv;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/byazt/eg/gt$c;->c(Lcom/byazt/eg/yv;)Lcom/byazt/eg/h;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/byazt/gu/i;-><init>(Lcom/byazt/eg/h;)V

    return-object v1
.end method

.method public c()Lcom/byazt/gqp/yp;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/gu/x;

    iget-object v1, p0, Lcom/byazt/gu/n;->c:Lcom/byazt/eg/gt$c;

    invoke-interface {v1}, Lcom/byazt/eg/gt$c;->c()Lcom/byazt/eg/yv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/gu/x;-><init>(Lcom/byazt/eg/yv;)V

    return-object v0
.end method
