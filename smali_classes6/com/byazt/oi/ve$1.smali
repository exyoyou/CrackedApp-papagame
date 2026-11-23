.class public final Lcom/byazt/oi/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x78d,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oi/ve;->ve()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/yl/ve;",
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
.method public c(Lcom/byazt/yl/ve;Lcom/byazt/yl/ve;)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCpm()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCpm()D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, -0x1

    .line 10
    cmpl-double v5, v0, v2

    .line 11
    .line 12
    if-lez v5, :cond_0

    .line 13
    .line 14
    return v4

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCpm()D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCpm()D

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const/4 v5, 0x1

    .line 24
    cmpg-double v6, v0, v2

    .line 25
    .line 26
    if-gez v6, :cond_1

    .line 27
    .line 28
    return v5

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCpm()D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCpm()D

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    cmpl-double p2, v0, v2

    .line 38
    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-ne p1, v5, :cond_2

    .line 46
    .line 47
    return v4

    .line 48
    :cond_2
    const/4 p1, 0x0

    .line 49
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/yl/ve;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/yl/ve;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/oi/ve$1;->c(Lcom/byazt/yl/ve;Lcom/byazt/yl/ve;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
