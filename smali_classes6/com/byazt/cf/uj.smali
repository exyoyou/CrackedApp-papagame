.class public Lcom/byazt/cf/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0xf
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/nh/sp;

.field public tt:Lcom/byazt/nh/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/nh/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/byazt/cf/uj;->c:Lcom/byazt/nh/sp;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/nh/uj;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/byazt/cf/uj;->tt:Lcom/byazt/nh/uj;

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/cf/uj;->c:Lcom/byazt/nh/sp;

    if-eqz v0, :cond_1

    .line 10
    instance-of v1, v0, Lcom/byazt/gk/tt;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/byazt/gk/tt;

    invoke-interface {v0}, Lcom/byazt/gk/tt;->tt()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/cf/uj;->tt:Lcom/byazt/nh/uj;

    if-eqz v0, :cond_3

    .line 12
    instance-of v1, v0, Lcom/byazt/gk/tt;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/byazt/gk/tt;

    invoke-interface {v0}, Lcom/byazt/gk/tt;->tt()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cf/uj;->c:Lcom/byazt/nh/sp;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nh/sp;->c(ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/cf/uj;->tt:Lcom/byazt/nh/uj;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nh/uj;->c(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/cf/uj;->c:Lcom/byazt/nh/sp;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/byazt/nc/z;

    if-eqz v1, :cond_0

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/byazt/nc/z;

    invoke-virtual {v0, v1}, Lcom/byazt/nh/sp;->c(Lcom/byazt/nc/z;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/cf/uj;->tt:Lcom/byazt/nh/uj;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/byazt/nc/sl;

    if-eqz v1, :cond_1

    .line 8
    check-cast p1, Lcom/byazt/nc/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/nh/uj;->c(Lcom/byazt/nc/sl;)V

    :cond_1
    return-void
.end method

.method public tt(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cf/uj;->c:Lcom/byazt/nh/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, p1, Lcom/byazt/nc/z;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/nh/sp;->c()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/cf/uj;->c:Lcom/byazt/nh/sp;

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Lcom/byazt/nc/z;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/nh/sp;->tt(Lcom/byazt/nc/z;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/cf/uj;->tt:Lcom/byazt/nh/uj;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    instance-of v1, p1, Lcom/byazt/nc/sl;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/nh/uj;->c()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/cf/uj;->tt:Lcom/byazt/nh/uj;

    .line 32
    .line 33
    check-cast p1, Lcom/byazt/nc/sl;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/byazt/nh/uj;->tt(Lcom/byazt/nc/sl;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
