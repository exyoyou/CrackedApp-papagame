.class public final Lcom/byazt/ddx/uj$22;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0x352
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/ddx/uj$22;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ddx/uj$22;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ddx/uj$22;->ve:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ddx/uj$22;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    .line 12
    div-long/2addr v0, v2

    .line 13
    long-to-double v0, v0

    .line 14
    iget-object v2, p0, Lcom/byazt/ddx/uj$22;->c:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/byazt/aas/nb;->z(Lcom/byazt/ete/ic;)D

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    sub-double/2addr v0, v2

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/byazt/ddx/uj$22;->c:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/byazt/ddx/uj$22;->tt:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v3, Lcom/byazt/ddx/uj$22$1;

    .line 34
    .line 35
    invoke-direct {v3, p0, v0}, Lcom/byazt/ddx/uj$22$1;-><init>(Lcom/byazt/ddx/uj$22;F)V

    .line 36
    .line 37
    .line 38
    const-string v0, "show_check"

    .line 39
    .line 40
    invoke-static {v1, v2, v0, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
