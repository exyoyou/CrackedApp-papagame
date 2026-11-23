.class public Lcom/byazt/wz/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/wdw/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/c;->x(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/wz/c;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/c;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/c$4;->ve:Lcom/byazt/wz/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/c$4;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/wz/c$4;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "save_jump_success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 2
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/wz/c$4;->ve:Lcom/byazt/wz/c;

    iget-object v1, v1, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    const-string v2, "save_jump_success_ad_tag"

    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/wz/c$4;->ve:Lcom/byazt/wz/c;

    iget-object v1, v1, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "save_dpl_success_materialmeta"

    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/cr/c;)V
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/byazt/wz/c$4;->ve:Lcom/byazt/wz/c;

    iget-object v0, p0, Lcom/byazt/wz/c$4;->c:Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/byazt/wz/c$4;->tt:Z

    invoke-virtual {p1, v0, v1}, Lcom/byazt/wz/c;->n(Lorg/json/JSONObject;Z)V

    return-void
.end method
