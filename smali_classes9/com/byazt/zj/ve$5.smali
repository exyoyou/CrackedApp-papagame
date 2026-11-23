.class public final Lcom/byazt/zj/ve$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qya/n$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28c,
        0x186
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zj/ve;->c(Lcom/byazt/va/tt;Ljava/lang/String;)Lcom/byazt/hm/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/qya/n$tt<",
        "Lcom/byazt/hm/tt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/hm/tt;)Z
    .locals 3

    const-string v0, "device_info_new"

    .line 2
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/byazt/dna/u;->getRealNetworkType(J)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/byazt/hm/tt;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/byazt/qya/n;->c(Ljava/lang/Throwable;)Z

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/hm/tt;->tt()I

    move-result p1

    .line 6
    invoke-static {p1}, Lcom/byazt/qya/n;->c(I)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public c(Ljava/lang/Exception;)Z
    .locals 3

    const-string v0, "device_info_new"

    .line 7
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/byazt/dna/u;->getRealNetworkType(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_0
    instance-of p1, p1, Ljava/lang/NullPointerException;

    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/hm/tt;

    invoke-virtual {p0, p1}, Lcom/byazt/zj/ve$5;->c(Lcom/byazt/hm/tt;)Z

    move-result p1

    return p1
.end method
