.class public Lcom/byazt/qe/tt$4;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b9,
        0x5f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qe/tt;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lorg/json/JSONObject;

.field public final synthetic ve:Lcom/byazt/qe/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/qe/tt;JLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qe/tt$4;->ve:Lcom/byazt/qe/tt;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/qe/tt$4;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/qe/tt$4;->tt:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/qe/tt$4;->c:J

    sub-long/2addr v0, v2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/byazt/vx/eo;->c(Lcom/byazt/hm/tt;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "message"

    if-eqz p1, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->sl()[B

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/eo;->c([B)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "cypher"

    const/4 v4, -0x1

    .line 7
    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v4, 0x4

    if-ne p2, v4, :cond_3

    .line 8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/byazt/vx/eo;->a()Lcom/byazt/dna/n;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    invoke-interface {p2, p1}, Lcom/byazt/dna/n;->decryptWithCBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v3

    .line 11
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 12
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p2, v3

    :goto_1
    if-nez p2, :cond_4

    return-void

    :cond_4
    const-string p1, "state_code"

    const v3, -0x13880

    .line 13
    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v3, 0x4e20

    if-ne p1, v3, :cond_5

    .line 14
    iget-object p1, p0, Lcom/byazt/qe/tt$4;->ve:Lcom/byazt/qe/tt;

    invoke-static {p1}, Lcom/byazt/qe/tt;->tt(Lcom/byazt/qe/tt;)Lcom/byazt/qe/c;

    move-result-object p1

    iget-object v2, p0, Lcom/byazt/qe/tt$4;->tt:Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v2, v3}, Lcom/byazt/qe/c;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    const-string p1, ""

    .line 15
    invoke-static {v0, v1, v3, p1, v3}, Lcom/byazt/ng/a;->c(JZLjava/lang/String;I)V

    return-void

    .line 16
    :cond_5
    iget-object v3, p0, Lcom/byazt/qe/tt$4;->ve:Lcom/byazt/qe/tt;

    invoke-static {v3}, Lcom/byazt/qe/tt;->tt(Lcom/byazt/qe/tt;)Lcom/byazt/qe/c;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/qe/tt$4;->tt:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-interface {v3, p2, v4, v5}, Lcom/byazt/qe/c;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 17
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {v0, v1, v5, p2, p1}, Lcom/byazt/ng/a;->c(JZLjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 4

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/qe/tt$4;->c:J

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Lcom/byazt/ng/a;->c(JZLjava/lang/String;I)V

    return-void
.end method
