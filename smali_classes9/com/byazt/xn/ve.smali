.class public final Lcom/byazt/xn/ve;
.super Lcom/byazt/gqp/t;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x369,
        0x36
    }
.end annotation


# instance fields
.field public t:Lcom/byazt/xn/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/gqp/t$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/gqp/t;-><init>(Lcom/byazt/gqp/t$c;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/byazt/xn/uj;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/byazt/xn/uj;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/xn/ve;->t:Lcom/byazt/xn/uj;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;
    .locals 2

    .line 2
    invoke-virtual {p1, p0}, Lcom/byazt/gqp/yp;->c(Lcom/byazt/gqp/t;)V

    .line 3
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->tt()Lcom/byazt/gqp/sp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->tt()Lcom/byazt/gqp/sp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/sp;->c()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->tt()Lcom/byazt/gqp/sp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/sp;->c()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/xn/c;

    iget-object v1, p0, Lcom/byazt/xn/ve;->t:Lcom/byazt/xn/uj;

    invoke-direct {v0, p1, v1}, Lcom/byazt/xn/c;-><init>(Lcom/byazt/gqp/yp;Lcom/byazt/xn/uj;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Lcom/byazt/gqp/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xn/ve;->t:Lcom/byazt/xn/uj;

    return-object v0
.end method
