.class public Lcom/byazt/vl/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f7,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vl/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/vl/c;


# direct methods
.method public constructor <init>(Lcom/byazt/vl/c;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vl/c$1;->ve:Lcom/byazt/vl/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/vl/c$1;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/vl/c$1;->tt:Ljava/lang/String;

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
    .locals 8

    .line 1
    const-string v0, "run()"

    .line 2
    .line 3
    const-string v1, "__kite"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/byazt/vl/c$1;->c:Lorg/json/JSONObject;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/byazt/vl/c$1;->tt:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, v3}, Lcom/byazt/yv/u;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/byazt/vl/c$1;->ve:Lcom/byazt/vl/c;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/byazt/vl/c;->c(Lcom/byazt/vl/c;)Lcom/byazt/az/c;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "d_data"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lcom/byazt/az/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    const-string v4, "message"

    .line 40
    .line 41
    const-string v5, "ok"

    .line 42
    .line 43
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v4, "data"

    .line 47
    .line 48
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v3, "config from cache"

    .line 52
    .line 53
    invoke-static {v1, v3}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lcom/byazt/yv/u;->tt(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-string v4, "header"

    .line 67
    .line 68
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/byazt/tf/c;->tt()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    const-string v4, "config \u8bf7\u6c42header\u8fdb\u884csword\u52a0\u5bc6\uff1a\u52a0\u5bc6\u5185\u5bb9\uff1a"

    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v1, v4}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v4, "config \u8bf7\u6c42header\u8fdb\u884csword\u52a0\u5bc6\uff1a\u52a0\u5bc6\u7ed3\u679c\uff1a"

    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v1, v3}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    const-string v3, "fetch_config"

    .line 104
    .line 105
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string v3, "client_time"

    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    const-wide/16 v6, 0x3e8

    .line 117
    .line 118
    div-long/2addr v4, v6

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/byazt/vl/c$1;->ve:Lcom/byazt/vl/c;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/byazt/vl/c;->tt(Lcom/byazt/vl/c;)Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget-object v4, p0, Lcom/byazt/vl/c$1;->ve:Lcom/byazt/vl/c;

    .line 133
    .line 134
    invoke-virtual {v4, v2}, Lcom/byazt/iw/c;->c(Lorg/json/JSONObject;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-static {v3, v0, v4}, Lcom/byazt/ey/c;->c(Landroid/content/Context;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v3, "config from server."

    .line 143
    .line 144
    invoke-static {v1, v3}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_0
    invoke-static {}, Lcom/byazt/tf/c;->tt()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_2

    .line 152
    .line 153
    const-string v3, "config: "

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v1, v3}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_2
    iget-object v3, p0, Lcom/byazt/vl/c$1;->ve:Lcom/byazt/vl/c;

    .line 167
    .line 168
    invoke-static {v3}, Lcom/byazt/vl/c;->ve(Lcom/byazt/vl/c;)Lcom/byazt/se/tt;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3, v0}, Lcom/byazt/se/tt;->c(Lorg/json/JSONObject;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/byazt/vl/c$1;->ve:Lcom/byazt/vl/c;

    .line 176
    .line 177
    const-wide/16 v3, 0x5

    .line 178
    .line 179
    invoke-virtual {v0, v3, v4}, Lcom/byazt/vl/c;->c(J)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/byazt/vl/c$1;->ve:Lcom/byazt/vl/c;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/byazt/vl/c;->tt()V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/byazt/vl/c$1;->ve:Lcom/byazt/vl/c;

    .line 188
    .line 189
    invoke-static {v0}, Lcom/byazt/vl/c;->uj(Lcom/byazt/vl/c;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/byazt/vl/c$1;->ve:Lcom/byazt/vl/c;

    .line 193
    .line 194
    invoke-static {v0, v2}, Lcom/byazt/vl/c;->c(Lcom/byazt/vl/c;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v3, "error "

    .line 202
    .line 203
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v1, v0}, Lcom/byazt/tf/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-void
.end method
