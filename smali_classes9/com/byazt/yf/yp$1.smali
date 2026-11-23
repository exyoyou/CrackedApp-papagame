.class public final Lcom/byazt/yf/yp$1;
.super Lcom/byazt/yf/yp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0xd4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yf/yp;->c(Lcom/byazt/xf/ve;)Lcom/byazt/yf/yp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xf/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/xf/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yf/yp$1;->c:Lcom/byazt/xf/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/yf/yp;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/yp$1;->c:Lcom/byazt/xf/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/xf/ve;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/byazt/yf/yp;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public tt()Lcom/byazt/yf/i;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/yp$1;->c:Lcom/byazt/xf/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/xf/ve;->z()Lcom/byazt/xf/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/xf/uj;->c()D

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmpl-double v5, v1, v3

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/byazt/xf/uj;->tt()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    cmpl-double v5, v1, v3

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/byazt/yf/i;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/byazt/xf/uj;->c()D

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-interface {v0}, Lcom/byazt/xf/uj;->tt()D

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/byazt/yf/i;-><init>(DD)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/byazt/yf/yp;->tt()Lcom/byazt/yf/i;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/yp$1;->c:Lcom/byazt/xf/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/xf/ve;->x()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/byazt/yf/yp;->ve()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method
