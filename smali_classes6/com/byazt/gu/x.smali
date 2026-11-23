.class public Lcom/byazt/gu/x;
.super Lcom/byazt/gqp/yp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11,
        0x47
    }
.end annotation


# instance fields
.field public tt:Lcom/byazt/eg/yv;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/yv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/gqp/yp;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/gu/x;->tt:Lcom/byazt/eg/yv;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/x;->tt:Lcom/byazt/eg/yv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->n()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public n()Lcom/byazt/gqp/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/gqp/c$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/gqp/c$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/gqp/c$c;->c()Lcom/byazt/gqp/c$c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/byazt/gqp/c$c;->tt()Lcom/byazt/gqp/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public sp()Lcom/byazt/gqp/yp$c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/gqp/yp;->sp()Lcom/byazt/gqp/yp$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/x;->tt:Lcom/byazt/eg/yv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tt()Lcom/byazt/gqp/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/x;->tt:Lcom/byazt/eg/yv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/eg/my;->c()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/byazt/gqp/sp;->ve(Ljava/lang/String;)Lcom/byazt/gqp/sp;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public uj()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/x;->tt:Lcom/byazt/eg/yv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->ve()Lcom/byazt/eg/rh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/eg/rh;->ve()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/x;->tt:Lcom/byazt/eg/yv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->tt()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
