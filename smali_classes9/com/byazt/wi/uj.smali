.class public Lcom/byazt/wi/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zyd/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d7,
        0xf
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
.method public a(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 0

    return-void
.end method

.method public n(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 0

    return-void
.end method

.method public sp(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p1, Lcom/byazt/ha/ve;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v4, p1, Lcom/byazt/ha/ve;->c:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    :goto_0
    move-wide v5, p1

    .line 26
    new-instance p1, Lcom/byazt/wi/uj$2;

    .line 27
    .line 28
    const-string v3, "tmax_record_on_ad_end"

    .line 29
    .line 30
    move-object v1, p1

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/byazt/wi/uj$2;-><init>(Lcom/byazt/wi/uj;Ljava/lang/String;Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
    return-void
.end method

.method public tt(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p1, Lcom/byazt/ha/ve;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v4, p1, Lcom/byazt/ha/ve;->c:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    :goto_0
    move-wide v5, p1

    .line 26
    new-instance p1, Lcom/byazt/wi/uj$1;

    .line 27
    .line 28
    const-string v3, "tmax_record_on_ad_start"

    .line 29
    .line 30
    move-object v1, p1

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/byazt/wi/uj$1;-><init>(Lcom/byazt/wi/uj;Ljava/lang/String;Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
    return-void
.end method

.method public uj(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 0

    return-void
.end method

.method public ve(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 0

    return-void
.end method
