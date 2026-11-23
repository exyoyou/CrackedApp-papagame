.class public Lcom/byazt/omf/ve$3;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/ve;->c(Landroid/content/Context;Lcom/byazt/dj/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/c;

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic ve:Lcom/byazt/omf/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/ve;Ljava/lang/String;Lcom/byazt/dj/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/ve$3;->ve:Lcom/byazt/omf/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/omf/ve$3;->c:Lcom/byazt/dj/c;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/omf/ve$3;->tt:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/yih/i;->uj()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->il()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->il()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->c()V

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    throw v1

    .line 29
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/byazt/omf/ve$3;->ve:Lcom/byazt/omf/ve;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/byazt/omf/ve$3;->c:Lcom/byazt/dj/c;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/byazt/dj/c;->da()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lcom/byazt/omf/ve$3;->tt:Landroid/content/Context;

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    const-wide/16 v5, 0x2710

    .line 41
    .line 42
    invoke-static/range {v1 .. v6}, Lcom/byazt/omf/ve;->c(Lcom/byazt/omf/ve;ZLandroid/content/Context;ZJ)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/byazt/omf/ve$3$1;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/byazt/omf/ve$3$1;-><init>(Lcom/byazt/omf/ve$3;)V

    .line 52
    .line 53
    .line 54
    const-wide/32 v3, 0x1d4c0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/byazt/hm/c;->a()Lcom/byazt/gqp/t;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/byazt/oy/tt;->c(Lcom/byazt/gqp/t;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/byazt/omf/ve$3;->tt:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/byazt/omf/ve$3;->c:Lcom/byazt/dj/c;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/byazt/dj/c;->da()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v1, v2}, Lcom/byazt/ukr/tt;->c(Landroid/content/Context;Z)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/byazt/yih/tt;->c()Lcom/byazt/yih/tt;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/byazt/omf/eo;->ve()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/byazt/xiv/n;->c()V

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-static {v1}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Lcom/byazt/ri/c;->c(Lcom/byazt/fk/c;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->gt()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const/4 v2, 0x1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    invoke-static {v2}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v3, Lcom/byazt/omf/ve$3$2;

    .line 115
    .line 116
    const-string v4, "preloadTTVideo"

    .line 117
    .line 118
    invoke-direct {v3, p0, v4, v1}, Lcom/byazt/omf/ve$3$2;-><init>(Lcom/byazt/omf/ve$3;Ljava/lang/String;Lcom/byazt/fk/c;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v3}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->sp()V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/byazt/omf/ve$3;->tt:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/byazt/omf/rh;->c(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/byazt/tl/tt;->c()V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/byazt/omf/ve$3;->tt:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/byazt/hef/tt;->ve(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/byazt/omf/ve$3;->tt:Landroid/content/Context;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/byazt/tjs/uj;->c(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    .line 147
    const/16 v3, 0x1d

    .line 148
    .line 149
    if-lt v1, v3, :cond_3

    .line 150
    .line 151
    :try_start_3
    invoke-static {}, Lcom/byazt/nr/qy;->c()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    .line 153
    .line 154
    :catch_0
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/byazt/aas/sl;->c()V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/byazt/omf/ve$3;->c:Lcom/byazt/dj/c;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/byazt/aas/sp;->c(Lcom/byazt/dj/c;)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lcom/byazt/aas/gr;->c()V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lcom/byazt/la/c;->c()Lcom/byazt/la/c;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v3, p0, Lcom/byazt/omf/ve$3;->tt:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Lcom/byazt/la/c;->c(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/byazt/aas/cu;->c()V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lcom/byazt/omf/ve$3;->c:Lcom/byazt/dj/c;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/byazt/dj/c;->c()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v1}, Lcom/byazt/qcl/uj;->c(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/byazt/fh/n;->c()Lcom/byazt/fh/n;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/byazt/fh/n;->tt()V

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lcom/byazt/omf/ve$3;->tt:Landroid/content/Context;

    .line 194
    .line 195
    iget-object v3, p0, Lcom/byazt/omf/ve$3;->c:Lcom/byazt/dj/c;

    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/byazt/dj/c;->c()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v1, v3, v0}, Lcom/byazt/tlc/c;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ogz/sl;)V

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    sget-object v1, Lcom/byazt/rgb/n;->uj:Lcom/byazt/aas/c$tt;

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v2}, Lcom/byazt/rgb/n;->c(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    const-string v1, "TTAdSdk"

    .line 223
    .line 224
    const-string v2, "Unexpected asyn init error: "

    .line 225
    .line 226
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method
