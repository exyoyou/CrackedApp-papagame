.class public Lcom/byazt/nq/tt$2;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3ee,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nq/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/nq/tt$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/nq/tt;

.field public final synthetic c:Lcom/byazt/nq/tt$c;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/nq/tt;Lcom/byazt/nq/tt$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nq/tt$2;->a:Lcom/byazt/nq/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nq/tt$2;->c:Lcom/byazt/nq/tt$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/nq/tt$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/nq/tt$2;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/nq/tt$2;->uj:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/nq/tt$2;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p2, Lcom/byazt/nq/c;

    invoke-direct {p2}, Lcom/byazt/nq/c;-><init>()V

    iget-object v0, p0, Lcom/byazt/nq/tt$2;->tt:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, v0}, Lcom/byazt/nq/c;->c(Ljava/lang/String;)Lcom/byazt/nq/c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/nq/tt$2;->ve:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Lcom/byazt/nq/c;->tt(Ljava/lang/String;)Lcom/byazt/nq/c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/nq/tt$2;->uj:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Lcom/byazt/nq/c;->ve(Ljava/lang/String;)Lcom/byazt/nq/c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/nq/tt$2;->n:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v0}, Lcom/byazt/nq/c;->n(Ljava/lang/String;)Lcom/byazt/nq/c;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lcom/byazt/nq/c;->uj(Ljava/lang/String;)Lcom/byazt/nq/c;

    move-result-object p2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/nq/c;->c(Ljava/lang/Long;)Lcom/byazt/nq/c;

    move-result-object p2

    .line 11
    invoke-static {}, Lcom/byazt/nq/ve;->c()Lcom/byazt/nq/ve;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/byazt/nq/ve;->c(Lcom/byazt/nq/c;Z)V

    .line 12
    iget-object p2, p0, Lcom/byazt/nq/tt$2;->a:Lcom/byazt/nq/tt;

    invoke-static {p2}, Lcom/byazt/nq/tt;->c(Lcom/byazt/nq/tt;)V

    .line 13
    iget-object p2, p0, Lcom/byazt/nq/tt$2;->c:Lcom/byazt/nq/tt$c;

    if-eqz p2, :cond_2

    .line 14
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/byazt/nq/tt$2;->c:Lcom/byazt/nq/tt$c;

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method
