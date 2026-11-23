.class public Lcom/byazt/tg/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/de/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7a4,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tg/a;->c(Lcom/byazt/dd/tt;ILcom/byazt/tg/x;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dd/tt;

.field public final synthetic tt:Lcom/byazt/tg/x;

.field public final synthetic ve:Lcom/byazt/tg/a;


# direct methods
.method public constructor <init>(Lcom/byazt/tg/a;Lcom/byazt/dd/tt;Lcom/byazt/tg/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tg/a$1;->ve:Lcom/byazt/tg/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tg/a$1;->c:Lcom/byazt/dd/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tg/a$1;->tt:Lcom/byazt/tg/x;

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
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/tg/a;->c(Lcom/byazt/de/uj;)Lcom/byazt/de/uj;

    .line 3
    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v1, "pause_optimise_type"

    .line 11
    .line 12
    const-string v2, "download_percent"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "pause_optimise_action"

    .line 18
    .line 19
    const-string v2, "confirm"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "pause_optimise"

    .line 34
    .line 35
    iget-object v3, p0, Lcom/byazt/tg/a$1;->c:Lcom/byazt/dd/tt;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0, v3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public tt()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/tg/a;->c(Lcom/byazt/de/uj;)Lcom/byazt/de/uj;

    .line 3
    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v1, "pause_optimise_type"

    .line 11
    .line 12
    const-string v2, "download_percent"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "pause_optimise_action"

    .line 18
    .line 19
    const-string v2, "cancel"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "pause_optimise"

    .line 34
    .line 35
    iget-object v3, p0, Lcom/byazt/tg/a$1;->c:Lcom/byazt/dd/tt;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0, v3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/tg/a$1;->tt:Lcom/byazt/tg/x;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/tg/a$1;->c:Lcom/byazt/dd/tt;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Lcom/byazt/tg/x;->c(Lcom/byazt/dd/tt;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
