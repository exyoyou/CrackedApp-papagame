.class public Lcom/byazt/vy/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74e,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/vy/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/ix/sp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vy/c;


# direct methods
.method public constructor <init>(Lcom/byazt/vy/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vy/c$1;->c:Lcom/byazt/vy/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ix/sp;Lcom/byazt/ix/sp;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    iget-object v1, p1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    iget-object v2, p2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getStrategyCpm()D

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-object v3, p2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getStrategyCpm()D

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const/4 v5, -0x1

    .line 26
    cmpl-double v6, v1, v3

    .line 27
    .line 28
    if-lez v6, :cond_1

    .line 29
    .line 30
    return v5

    .line 31
    :cond_1
    iget-object v1, p1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getStrategyCpm()D

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iget-object v3, p2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getStrategyCpm()D

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    const/4 v6, 0x1

    .line 44
    cmpg-double v7, v1, v3

    .line 45
    .line 46
    if-gez v7, :cond_2

    .line 47
    .line 48
    return v6

    .line 49
    :cond_2
    iget-object v1, p1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getStrategyCpm()D

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    iget-object p2, p2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getStrategyCpm()D

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    cmpl-double p2, v1, v3

    .line 62
    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    iget-object p1, p1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne p1, v6, :cond_3

    .line 72
    .line 73
    return v5

    .line 74
    :cond_3
    :goto_0
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/ix/sp;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/ix/sp;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/vy/c$1;->c(Lcom/byazt/ix/sp;Lcom/byazt/ix/sp;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
