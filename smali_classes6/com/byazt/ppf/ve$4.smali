.class public final Lcom/byazt/ppf/ve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nd/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28a,
        0x187
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ppf/ve;->c(Lcom/byazt/ete/ic;Ljava/util/Map;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/UUID;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic da:J

.field public final synthetic i:J

.field public final synthetic n:Lcom/byazt/ete/ic;

.field public final synthetic sp:Ljava/lang/String;

.field public final synthetic tt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic uj:Ljava/lang/StringBuilder;

.field public final synthetic ve:Lorg/json/JSONArray;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/json/JSONArray;Ljava/lang/StringBuilder;Lcom/byazt/ete/ic;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ppf/ve$4;->c:Ljava/util/Map;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ppf/ve$4;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ppf/ve$4;->ve:Lorg/json/JSONArray;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ppf/ve$4;->uj:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/ppf/ve$4;->n:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/ppf/ve$4;->a:Ljava/util/UUID;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/ppf/ve$4;->sp:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/byazt/ppf/ve$4;->x:Ljava/lang/String;

    .line 16
    .line 17
    iput-wide p9, p0, Lcom/byazt/ppf/ve$4;->i:J

    .line 18
    .line 19
    iput-wide p11, p0, Lcom/byazt/ppf/ve$4;->da:J

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/cq/c;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/byazt/cq/c;->x()Lcom/byazt/bh/c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/bh/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/byazt/ppf/ve$4;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/byazt/ppf/ve$4$1;

    invoke-direct {v0, p0}, Lcom/byazt/ppf/ve$4$1;-><init>(Lcom/byazt/ppf/ve$4;)V

    invoke-virtual {p1, v0}, Lcom/byazt/cq/c;->c(Lcom/byazt/nd/uj;)V

    return-void
.end method

.method public c(Lcom/byazt/cq/tt;)V
    .locals 11

    .line 5
    invoke-static {}, Lcom/byazt/ppf/ve;->tt()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/byazt/ppf/ve$4;->n:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/ppf/ve$4;->uj:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ppf/ve$4;->n:Lcom/byazt/ete/ic;

    invoke-static {v0, v1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;I)V

    .line 7
    iget-object v1, p0, Lcom/byazt/ppf/ve$4;->a:Ljava/util/UUID;

    iget-object v2, p0, Lcom/byazt/ppf/ve$4;->sp:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/ppf/ve$4;->ve:Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/byazt/ppf/ve$4;->n:Lcom/byazt/ete/ic;

    iget-object v5, p0, Lcom/byazt/ppf/ve$4;->x:Ljava/lang/String;

    iget-wide v6, p0, Lcom/byazt/ppf/ve$4;->i:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/byazt/ppf/ve$4;->i:J

    sub-long/2addr v6, v8

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x1

    :goto_0
    iget-wide v8, p0, Lcom/byazt/ppf/ve$4;->da:J

    iget-object p1, p0, Lcom/byazt/ppf/ve$4;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    invoke-static/range {v1 .. v10}, Lcom/byazt/ppf/ve;->c(Ljava/util/UUID;Ljava/lang/String;Lorg/json/JSONArray;Lcom/byazt/ete/ic;Ljava/lang/String;JJZ)V

    :cond_1
    return-void
.end method
