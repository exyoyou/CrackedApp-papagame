.class public Lcom/byazt/ddx/da$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0x6dc
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ddx/da;->ve(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/ddx/da;


# direct methods
.method public constructor <init>(Lcom/byazt/ddx/da;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ddx/da$23;->tt:Lcom/byazt/ddx/da;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ddx/da$23;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/byazt/ddx/da$23;->c:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object v3, p0, Lcom/byazt/ddx/da$23;->tt:Lcom/byazt/ddx/da;

    .line 16
    .line 17
    const-string v4, "ts"

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v3, v2, v4, v0}, Lcom/byazt/ddx/da;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/ddx/da$23;->tt:Lcom/byazt/ddx/da;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/ddx/da;->n(Lcom/byazt/ddx/da;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "render_did_finish"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3, v2}, Lcom/byazt/ddx/da;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
