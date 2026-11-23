.class public Lcom/byazt/cf/n$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iu/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x63f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cf/n$2;->c(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic tt:Lcom/byazt/cf/n$2;

.field public final ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/byazt/cf/n$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cf/n$2$1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/cf/n$2$1;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/byazt/cf/n$2;->n:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/byazt/cf/n$2;->a:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/byazt/cf/n$2;->da:Lcom/byazt/cf/n;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/byazt/cf/n$2;->ve:Lcom/byazt/dj/tt;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/byazt/cf/n$2;->c:Ljava/util/List;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/byazt/cf/n$2$1;->c:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0, v3}, Lcom/byazt/cf/n;->c(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    const-string v1, "is_play_again"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 30
    .line 31
    iget-boolean v2, v2, Lcom/byazt/cf/n$2;->n:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string v1, "is_second_page_ad"

    .line 37
    .line 38
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 39
    .line 40
    iget-boolean v2, v2, Lcom/byazt/cf/n$2;->a:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v1, "is_cache"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 48
    .line 49
    iget-boolean v2, v2, Lcom/byazt/cf/n$2;->tt:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    const-string v1, "cache_type"

    .line 55
    .line 56
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 57
    .line 58
    iget-object v3, v2, Lcom/byazt/cf/n$2;->uj:Lcom/byazt/ete/ic;

    .line 59
    .line 60
    iget-boolean v2, v2, Lcom/byazt/cf/n$2;->tt:Z

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Lcom/byazt/ete/ic;->sl(Z)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "is_adm"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 72
    .line 73
    iget-object v2, v2, Lcom/byazt/cf/n$2;->ve:Lcom/byazt/dj/tt;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 v2, 0x0

    .line 88
    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    const-string v1, "src_req_id"

    .line 92
    .line 93
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 94
    .line 95
    iget-object v2, v2, Lcom/byazt/cf/n$2;->uj:Lcom/byazt/ete/ic;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->xv()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    const-string v1, "is_map"

    .line 105
    .line 106
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 107
    .line 108
    iget-object v2, v2, Lcom/byazt/cf/n$2;->uj:Lcom/byazt/ete/ic;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->rp()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    const-string v1, "load_duration"

    .line 118
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    iget-object v4, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 124
    .line 125
    iget-wide v4, v4, Lcom/byazt/cf/n$2;->sp:J

    .line 126
    .line 127
    sub-long/2addr v2, v4

    .line 128
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    const-string v1, "reward_full_scene_type"

    .line 132
    .line 133
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 134
    .line 135
    iget-object v2, v2, Lcom/byazt/cf/n$2;->uj:Lcom/byazt/ete/ic;

    .line 136
    .line 137
    invoke-static {v2}, Lcom/byazt/fcd/uj;->c(Lcom/byazt/ete/ic;)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_0
    nop

    .line 146
    :goto_1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/byazt/cf/n$2;->uj:Lcom/byazt/ete/ic;

    .line 153
    .line 154
    const-string v3, "stats_reward_full_ad_loaded"

    .line 155
    .line 156
    invoke-virtual {v1, v2, v3, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 160
    .line 161
    iget-object v1, v0, Lcom/byazt/cf/n$2;->x:Lcom/byazt/iu/n;

    .line 162
    .line 163
    if-eqz v1, :cond_2

    .line 164
    .line 165
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->c:Ljava/lang/Object;

    .line 166
    .line 167
    iget-boolean v3, v0, Lcom/byazt/cf/n$2;->tt:Z

    .line 168
    .line 169
    iget-object v0, v0, Lcom/byazt/cf/n$2;->uj:Lcom/byazt/ete/ic;

    .line 170
    .line 171
    invoke-interface {v1, v2, v3, v0}, Lcom/byazt/iu/n;->c(Ljava/lang/Object;ZLcom/byazt/ete/ic;)V

    .line 172
    .line 173
    .line 174
    :cond_2
    iget-object v0, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 175
    .line 176
    iget-object v1, v0, Lcom/byazt/cf/n$2;->da:Lcom/byazt/cf/n;

    .line 177
    .line 178
    iget-object v2, v0, Lcom/byazt/cf/n$2;->ve:Lcom/byazt/dj/tt;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/byazt/cf/n$2;->uj:Lcom/byazt/ete/ic;

    .line 181
    .line 182
    invoke-virtual {v1, v2, v0, p0}, Lcom/byazt/cf/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Lcom/byazt/iu/ve;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public tt()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/byazt/cf/n$2;->sp:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    if-eqz v5, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Lcom/byazt/cf/n$2;->uj:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/cf/n$2;->da:Lcom/byazt/cf/n;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/cf/n;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x7

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x8

    .line 24
    .line 25
    :goto_0
    invoke-static {v0}, Lcom/byazt/aas/nb;->tt(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 30
    .line 31
    iget-wide v2, v2, Lcom/byazt/cf/n$2;->sp:J

    .line 32
    .line 33
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/byazt/cf/n$2;->da:Lcom/byazt/cf/n;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/byazt/cf/n$2$1;->c:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/byazt/cf/n;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/byazt/cf/n$2;->x:Lcom/byazt/iu/n;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/byazt/cf/n$2$1;->c:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/byazt/iu/n;->c(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public ve()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cf/n$2$1;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/cf/n$2$1;->tt:Lcom/byazt/cf/n$2;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/byazt/cf/n$2;->da:Lcom/byazt/cf/n;

    .line 14
    .line 15
    iget-boolean v2, v0, Lcom/byazt/cf/n$2;->tt:Z

    .line 16
    .line 17
    iget-object v3, v0, Lcom/byazt/cf/n$2;->ve:Lcom/byazt/dj/tt;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/byazt/cf/n$2;->c:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v1, v2, v3, v0}, Lcom/byazt/cf/n;->c(Lcom/byazt/cf/n;ZLcom/byazt/dj/tt;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
