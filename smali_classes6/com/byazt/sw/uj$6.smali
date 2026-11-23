.class public final Lcom/byazt/sw/uj$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x364,
        0x69
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sw/uj;->tt(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oce/c;

.field public final synthetic tt:Lcom/byazt/afw/nu$c;


# direct methods
.method public constructor <init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sw/uj$6;->c:Lcom/byazt/oce/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/sw/uj$6;->tt:Lcom/byazt/afw/nu$c;

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
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/byazt/sw/uj$6;->c:Lcom/byazt/oce/c;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/sw/uj$6;->tt:Lcom/byazt/afw/nu$c;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/sw/uj;->tt()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/sw/uj$6;->c:Lcom/byazt/oce/c;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/byazt/afw/nu;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->uj()Lcom/byazt/jzl/a;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->n()Lcom/byazt/ete/ic;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    if-eqz v8, :cond_4

    .line 35
    .line 36
    if-nez v9, :cond_2

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Lcom/byazt/sw/uj$6;->tt:Lcom/byazt/afw/nu$c;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->tt()J

    .line 43
    .line 44
    .line 45
    move-result-wide v10

    .line 46
    iget-object v1, p0, Lcom/byazt/sw/uj$6;->tt:Lcom/byazt/afw/nu$c;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->uj()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    const-wide/16 v3, 0x0

    .line 53
    .line 54
    cmp-long v5, v1, v3

    .line 55
    .line 56
    if-lez v5, :cond_4

    .line 57
    .line 58
    cmp-long v5, v10, v3

    .line 59
    .line 60
    if-gtz v5, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    new-instance v12, Lcom/byazt/afw/a;

    .line 64
    .line 65
    invoke-direct {v12}, Lcom/byazt/afw/a;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/byazt/sw/uj$6;->tt:Lcom/byazt/afw/nu$c;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/byazt/afw/nu$c;->ve()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    invoke-virtual {v12, v3, v4}, Lcom/byazt/afw/a;->c(J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v12, v1, v2}, Lcom/byazt/afw/a;->tt(J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->ve()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->c()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    sub-long v6, v1, v4

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->tt()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v8}, Lcom/byazt/jzl/a;->getPlayerType()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    move-object v1, v8

    .line 103
    move-object v5, v9

    .line 104
    invoke-static/range {v1 .. v7}, Lcom/byazt/sw/uj;->c(Lcom/byazt/jzl/a;Ljava/lang/String;IILcom/byazt/ete/ic;J)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "EXTRA_PLAY_ACTION"

    .line 109
    .line 110
    invoke-virtual {v8, v1}, Lcom/byazt/jzl/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/byazt/sw/uj;->c(Lorg/json/JSONObject;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v9}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    new-instance v2, Lcom/byazt/afw/tt;

    .line 122
    .line 123
    invoke-direct {v2, v9, v1, v0, v12}, Lcom/byazt/afw/tt;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/afw/uj;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/byazt/sw/uj$6;->tt:Lcom/byazt/afw/nu$c;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/byazt/afw/nu$c;->u()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual {v2, v0}, Lcom/byazt/afw/tt;->c(Z)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 136
    .line 137
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v1, "duration"

    .line 141
    .line 142
    invoke-virtual {v0, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    const-string v1, "percent"

    .line 146
    .line 147
    iget-object v3, p0, Lcom/byazt/sw/uj$6;->tt:Lcom/byazt/afw/nu$c;

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/byazt/afw/nu$c;->i()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    const-string v1, "feed_continue"

    .line 157
    .line 158
    invoke-static {v2, v1, v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/afw/tt;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_0
    return-void
.end method
