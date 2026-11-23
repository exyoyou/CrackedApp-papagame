.class public Lcom/byazt/wi/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zyd/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d7,
        0x36
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
.method public c(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p2, :cond_1

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :goto_0
    move-wide v8, v0

    .line 16
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iget v6, p1, Lcom/byazt/ip/c;->sp:I

    .line 21
    .line 22
    iget-object v7, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p1, Lcom/byazt/wi/ve$1;

    .line 25
    .line 26
    const-string v4, "tmax_record_on_ad_started"

    .line 27
    .line 28
    move-object v2, p1

    .line 29
    move-object v3, p0

    .line 30
    invoke-direct/range {v2 .. v9}, Lcom/byazt/wi/ve$1;-><init>(Lcom/byazt/wi/ve;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public tt(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
    .locals 0

    return-void
.end method

.method public uj(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget-boolean p1, p1, Lcom/byazt/ha/tt;->ve:Z

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    :goto_0
    move-wide v4, p1

    .line 25
    new-instance p1, Lcom/byazt/wi/ve$2;

    .line 26
    .line 27
    const-string v2, "tmax_record_on_ad_loaded"

    .line 28
    .line 29
    move-object v0, p1

    .line 30
    move-object v1, p0

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/byazt/wi/ve$2;-><init>(Lcom/byazt/wi/ve;Ljava/lang/String;Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public ve(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
    .locals 0

    return-void
.end method
