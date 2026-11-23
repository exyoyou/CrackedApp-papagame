.class public Lcom/byazt/bl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb1,
        0x14
    }
.end annotation


# direct methods
.method public static c(I)Lcom/byazt/yj/eo;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/bl/uj;

    new-instance v1, Lcom/byazt/bl/tt;

    const v2, 0x7fffffff

    invoke-direct {v1, p0, v2}, Lcom/byazt/bl/tt;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/byazt/bl/uj;-><init>(Lcom/byazt/yj/eo;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/yj/eo;)Lcom/byazt/yj/eo;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/bl/uj;

    invoke-direct {v0, p0}, Lcom/byazt/bl/uj;-><init>(Lcom/byazt/yj/eo;)V

    return-object v0
.end method
