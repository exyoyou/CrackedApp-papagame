.class public Lcom/byazt/nhd/ve$3;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x153,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nhd/ve;->tt(Lcom/byazt/dj/tt;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic tt:Lcom/byazt/dj/tt;

.field public final synthetic ve:Lcom/byazt/nhd/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/nhd/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/dj/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nhd/ve$3;->ve:Lcom/byazt/nhd/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/nhd/ve$3;->c:Ljava/util/List;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/nhd/ve$3;->tt:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/nhd/ve$3;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byazt/ete/ic;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uv()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v6, v2, v4

    .line 26
    .line 27
    if-gtz v6, :cond_0

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const-wide/32 v4, 0xa037a0

    .line 34
    .line 35
    .line 36
    add-long/2addr v2, v4

    .line 37
    const-wide/16 v4, 0x3e8

    .line 38
    .line 39
    div-long/2addr v2, v4

    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/byazt/ete/ic;->n(J)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v2, p0, Lcom/byazt/nhd/ve$3;->ve:Lcom/byazt/nhd/ve;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/byazt/nhd/ve;->c(Lcom/byazt/nhd/ve;)I

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/byazt/nhd/ve$3;->tt:Lcom/byazt/dj/tt;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/byazt/nhd/ve$3;->ve:Lcom/byazt/nhd/ve;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/byazt/nhd/ve;->c(Lcom/byazt/nhd/ve;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v2}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/byazt/nhd/ve$3;->tt:Lcom/byazt/dj/tt;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-virtual {v2, v3, v1, v4}, Lcom/byazt/eti/n;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method
