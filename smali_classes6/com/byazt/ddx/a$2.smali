.class public Lcom/byazt/ddx/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ddx/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ddx/a;


# direct methods
.method public constructor <init>(Lcom/byazt/ddx/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ddx/a$2;->c:Lcom/byazt/ddx/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 8

    .line 1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "web_cache_hit_report"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/ddx/a$2;->c:Lcom/byazt/ddx/a;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/ddx/a;->c(Lcom/byazt/ddx/a;)Lcom/byazt/ete/ic;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/ddx/a$2;->c:Lcom/byazt/ddx/a;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/ddx/a;->c(Lcom/byazt/ddx/a;)Lcom/byazt/ete/ic;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lorg/json/JSONArray;

    .line 38
    .line 39
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/byazt/ddx/a$2;->c:Lcom/byazt/ddx/a;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/byazt/ddx/a;->tt(Lcom/byazt/ddx/a;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/byazt/aas/aw$c;

    .line 67
    .line 68
    new-instance v5, Lorg/json/JSONObject;

    .line 69
    .line 70
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .line 72
    .line 73
    :try_start_0
    const-string v6, "url"

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/byazt/aas/aw$c;->ve()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    const-string v6, "hit"

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/byazt/aas/aw$c;->uj()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    const-string v6, "miss"

    .line 92
    .line 93
    invoke-virtual {v4}, Lcom/byazt/aas/aw$c;->n()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    nop

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    :try_start_1
    const-string v3, "hit_records"

    .line 107
    .line 108
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 110
    .line 111
    :catch_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 116
    .line 117
    .line 118
    return-object v0
.end method
