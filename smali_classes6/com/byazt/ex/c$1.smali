.class public final Lcom/byazt/ex/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x379,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ex/c;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:J

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ex/c$1;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/ex/c$1;->tt:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ex/c$1;->ve:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ex/c$1;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->gt()Lcom/byazt/ete/pf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/ex/c$1;->c:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->da()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ete/pf;->tt()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/ete/pf;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v2, 0x0

    .line 40
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    iget-object v2, p0, Lcom/byazt/ex/c$1;->c:Lcom/byazt/ete/ic;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_3
    new-instance v3, Lcom/bytedance/android/metrics/LiveMetricsBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Lcom/bytedance/android/metrics/LiveMetricsBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/android/metrics/LiveMetricsBuilder;->roomId(J)Lcom/bytedance/android/metrics/LiveMetricsBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/byazt/ete/pf;->c()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const-string v0, ""

    .line 73
    .line 74
    :goto_1
    invoke-virtual {v1, v0}, Lcom/bytedance/android/metrics/LiveMetricsBuilder;->anchorId(Ljava/lang/String;)Lcom/bytedance/android/metrics/LiveMetricsBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v2}, Lcom/bytedance/android/metrics/LiveMetricsBuilder;->requestId(Ljava/lang/String;)Lcom/bytedance/android/metrics/LiveMetricsBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/byazt/ex/c$1;->c:Lcom/byazt/ete/ic;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-static {v1}, Lcom/byazt/ex/c;->tt(I)Lcom/bytedance/android/metrics/EnterFromMerge;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/bytedance/android/metrics/LiveMetricsBuilder;->enterFromMerge(Lcom/bytedance/android/metrics/EnterFromMerge;)Lcom/bytedance/android/metrics/LiveMetricsBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/byazt/ex/c$1;->c:Lcom/byazt/ete/ic;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v1}, Lcom/byazt/ex/c;->c(I)Lcom/bytedance/android/metrics/EnterMethod;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/bytedance/android/metrics/LiveMetricsBuilder;->enterMethod(Lcom/bytedance/android/metrics/EnterMethod;)Lcom/bytedance/android/metrics/LiveMetricsBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v1, Lcom/bytedance/android/metrics/ActionType;->CLICK:Lcom/bytedance/android/metrics/ActionType;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/bytedance/android/metrics/LiveMetricsBuilder;->actionType(Lcom/bytedance/android/metrics/ActionType;)Lcom/bytedance/android/metrics/LiveMetricsBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-wide v1, p0, Lcom/byazt/ex/c$1;->tt:J

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/android/metrics/LiveMetricsBuilder;->duration(J)Lcom/bytedance/android/metrics/LiveMetricsBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/bytedance/android/metrics/LiveMetricsBuilder;->build()Lcom/bytedance/android/metrics/Params;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/byazt/ex/c;->c(Landroid/content/Context;)Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lcom/bytedance/android/metrics/LiveMetrics;->filterParam(Lcom/bytedance/android/metrics/Params;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v1, "tob_extra"

    .line 139
    .line 140
    iget-object v2, p0, Lcom/byazt/ex/c$1;->c:Lcom/byazt/ete/ic;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    const-string v1, "live_sdk_status"

    .line 150
    .line 151
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/byazt/apd/tt;->ve()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    const-string v1, "live_auth_status"

    .line 163
    .line 164
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/byazt/apd/tt;->n()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 176
    .line 177
    .line 178
    move-result-wide v1

    .line 179
    invoke-static {}, Lo0/b;->a()J

    .line 180
    .line 181
    .line 182
    move-result-wide v3

    .line 183
    sub-long/2addr v1, v3

    .line 184
    const-string v3, "app_start_time"

    .line 185
    .line 186
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    const-string v1, "is_web"

    .line 190
    .line 191
    iget-object v2, p0, Lcom/byazt/ex/c$1;->c:Lcom/byazt/ete/ic;

    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->s_()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lcom/byazt/ex/c$1;->ve:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v1, v0}, Lcom/byazt/omf/a;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    const-string v1, "TTLiveVideoUtil"

    .line 208
    .line 209
    const-string v2, "Throwable : "

    .line 210
    .line 211
    invoke-static {v1, v2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method
