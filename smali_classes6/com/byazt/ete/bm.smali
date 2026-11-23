.class public Lcom/byazt/ete/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x81
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONArray;

.field public c:I

.field public da:J

.field public gt:Z

.field public i:J

.field public m:Landroid/os/Bundle;

.field public my:Ljava/lang/String;

.field public n:I

.field public nu:I

.field public qy:Lcom/byazt/vvt/ve$c;

.field public rh:Ljava/lang/String;

.field public rl:Ljava/lang/String;

.field public sl:J

.field public sp:I

.field public t:J

.field public tt:I

.field public u:Lorg/json/JSONObject;

.field public uj:I

.field public ve:Ljava/lang/String;

.field public x:J

.field public yp:I

.field public z:Lcom/byazt/omf/qy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/aas/nb;->sp()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/ete/bm;->rl:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/byazt/ete/bm;->c:I

    .line 12
    .line 13
    iput v0, p0, Lcom/byazt/ete/bm;->tt:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/byazt/ete/bm;->a:Lorg/json/JSONArray;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput v2, p0, Lcom/byazt/ete/bm;->sp:I

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iput-wide v2, p0, Lcom/byazt/ete/bm;->x:J

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    iput-wide v2, p0, Lcom/byazt/ete/bm;->i:J

    .line 32
    .line 33
    iput-object v1, p0, Lcom/byazt/ete/bm;->u:Lorg/json/JSONObject;

    .line 34
    .line 35
    iput v0, p0, Lcom/byazt/ete/bm;->yp:I

    .line 36
    .line 37
    const-string v0, ""

    .line 38
    .line 39
    invoke-static {v0}, Lcom/byazt/omf/qy;->c(Ljava/lang/String;)Lcom/byazt/omf/qy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/byazt/ete/bm;->z:Lcom/byazt/omf/qy;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/byazt/ete/bm;->gt:Z

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/ete/bm;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/ete/bm;

    invoke-direct {v0}, Lcom/byazt/ete/bm;-><init>()V

    .line 2
    iget v1, p0, Lcom/byazt/ete/bm;->c:I

    iput v1, v0, Lcom/byazt/ete/bm;->c:I

    .line 3
    iget v1, p0, Lcom/byazt/ete/bm;->tt:I

    iput v1, v0, Lcom/byazt/ete/bm;->tt:I

    .line 4
    iget-object v1, p0, Lcom/byazt/ete/bm;->a:Lorg/json/JSONArray;

    iput-object v1, v0, Lcom/byazt/ete/bm;->a:Lorg/json/JSONArray;

    .line 5
    iget v1, p0, Lcom/byazt/ete/bm;->sp:I

    iput v1, v0, Lcom/byazt/ete/bm;->sp:I

    .line 6
    iget-wide v1, p0, Lcom/byazt/ete/bm;->x:J

    iput-wide v1, v0, Lcom/byazt/ete/bm;->x:J

    .line 7
    iget-wide v1, p0, Lcom/byazt/ete/bm;->da:J

    iput-wide v1, v0, Lcom/byazt/ete/bm;->da:J

    .line 8
    iget-wide v1, p0, Lcom/byazt/ete/bm;->sl:J

    iput-wide v1, v0, Lcom/byazt/ete/bm;->sl:J

    .line 9
    iget-wide v1, p0, Lcom/byazt/ete/bm;->t:J

    iput-wide v1, v0, Lcom/byazt/ete/bm;->t:J

    .line 10
    iget v1, p0, Lcom/byazt/ete/bm;->yp:I

    iput v1, v0, Lcom/byazt/ete/bm;->yp:I

    .line 11
    iget-object v1, p0, Lcom/byazt/ete/bm;->my:Ljava/lang/String;

    iput-object v1, v0, Lcom/byazt/ete/bm;->my:Ljava/lang/String;

    return-object v0
.end method

.method public c(ILjava/lang/String;ILcom/byazt/dj/tt;)V
    .locals 8

    .line 17
    new-instance v7, Lcom/byazt/vvt/ve$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/byazt/vvt/ve$c;-><init>(ILjava/lang/String;IJLcom/byazt/dj/tt;)V

    iput-object v7, p0, Lcom/byazt/ete/bm;->qy:Lcom/byazt/vvt/ve$c;

    return-void
.end method

.method public c(Ljava/lang/Object;I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    :try_start_0
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_1

    :catch_0
    nop

    .line 21
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/byazt/ete/bm;->qy:Lcom/byazt/vvt/ve$c;

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1, v0}, Lcom/byazt/vvt/ve$c;->c(I)V

    .line 23
    iget-object p1, p0, Lcom/byazt/ete/bm;->qy:Lcom/byazt/vvt/ve$c;

    invoke-static {p1, p2}, Lcom/byazt/vvt/ve;->c(Lcom/byazt/vvt/ve$c;I)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/byazt/ete/bm;->qy:Lcom/byazt/vvt/ve$c;

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/byazt/ete/bm;->rl:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;JZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 15
    iget-object p4, p0, Lcom/byazt/ete/bm;->z:Lcom/byazt/omf/qy;

    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "cst_"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p3}, Lcom/byazt/omf/qy;->c(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/byazt/ete/bm;->z:Lcom/byazt/omf/qy;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "cst_"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    :cond_0
    return-void
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/bm;->rl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
