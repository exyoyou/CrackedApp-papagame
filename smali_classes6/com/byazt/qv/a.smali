.class public Lcom/byazt/qv/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1cb,
        0x22
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/yl/ve;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/hk/c;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/nbs/da;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->yv()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setLoadSort(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->p()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setShowSort(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->yp()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setExchangeRate(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->gu()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setDiscount(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->my()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setAdNetworkSlotType(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->gr()D

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->a()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/byazt/yl/ve;->setSubAdType(I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method
