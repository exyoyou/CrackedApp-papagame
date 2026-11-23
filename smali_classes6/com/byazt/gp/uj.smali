.class public Lcom/byazt/gp/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x978,
        0xf
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/nbs/tt;)Lcom/byazt/gp/c;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->yp()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/byazt/gp/ve;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/gp/ve;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p0, Lcom/byazt/gp/tt;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/byazt/gp/tt;-><init>()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method
