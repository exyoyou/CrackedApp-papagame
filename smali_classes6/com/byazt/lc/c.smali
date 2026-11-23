.class public Lcom/byazt/lc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x51f,
        0x14
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/xs/ve;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/pu;->x(Lcom/byazt/ete/ic;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-static {p0}, Lcom/byazt/ete/pu;->i(Lcom/byazt/ete/ic;)Lcom/byazt/ku/uj;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance v0, Lcom/byazt/lc/c$1;

    .line 19
    .line 20
    const-string v1, "saveTemplate"

    .line 21
    .line 22
    invoke-direct {v0, v1, p0, p1}, Lcom/byazt/lc/c$1;-><init>(Ljava/lang/String;Lcom/byazt/ku/uj;Lcom/byazt/xs/ve;)V

    .line 23
    .line 24
    .line 25
    const/16 p0, 0xa

    .line 26
    .line 27
    invoke-static {v0, p0}, Lcom/byazt/bwm/n;->c(Lcom/byazt/bwm/sp;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
