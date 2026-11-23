.class public Lcom/byazt/qw/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d6,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qw/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/qw/ve;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic tt:Lorg/json/JSONObject;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/qw/ve;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qw/ve$1;->a:Lcom/byazt/qw/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qw/ve$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qw/ve$1;->tt:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/qw/ve$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/qw/ve$1;->uj:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/qw/ve$1;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qw/ve$1;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/qw/ve$1;->tt:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    const-string v2, "req_id"

    .line 6
    .line 7
    const-string v3, "ad_slot_type"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/qw/ve$1;->tt:Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/byazt/qw/ve$1;->tt:Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/byazt/qw/ve$1;->ve:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    new-instance v1, Lorg/json/JSONObject;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/byazt/qw/ve$1;->ve:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/byazt/qw/ve$1;->a:Lcom/byazt/qw/ve;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/byazt/qw/ve$1;->uj:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/byazt/qw/ve$1;->n:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v2, v3, v0, v4}, Lcom/byazt/qw/ve;->c(Lcom/byazt/qw/ve;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
