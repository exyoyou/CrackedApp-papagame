.class public final Lcom/byazt/qi/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20f,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qi/a;->c(J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/qi/x;


# direct methods
.method public constructor <init>(Landroid/os/Handler;JLcom/byazt/qi/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qi/a$1;->c:Landroid/os/Handler;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/qi/a$1;->tt:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/qi/a$1;->ve:Lcom/byazt/qi/x;

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
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/byazt/qi/a;->i()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/qi/a;->da()Lcom/byazt/qi/sp;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/byazt/qi/sp;->c()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/app/Application;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/byazt/qi/tt;->c(Landroid/app/Application;)Lcom/byazt/qi/tt;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/byazt/qi/a;->c(Lcom/byazt/qi/tt;)Lcom/byazt/qi/tt;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/qi/a$1;->c:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/byazt/qi/a;->c(Landroid/os/Handler;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {}, Lcom/byazt/qi/a;->da()Lcom/byazt/qi/sp;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/byazt/qi/sp;->c()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/byazt/qi/n;->c(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    sget-wide v1, Lcom/byakv/z/SoftDecTool;->acs:D

    .line 46
    .line 47
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 48
    .line 49
    cmpl-double v5, v1, v3

    .line 50
    .line 51
    if-nez v5, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lcom/byakv/z/SoftDecTool;->ua()V

    .line 54
    .line 55
    .line 56
    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    .line 58
    iget-wide v2, p0, Lcom/byazt/qi/a$1;->tt:J

    .line 59
    .line 60
    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/byazt/qi/a$1;->ve:Lcom/byazt/qi/x;

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-static {}, Lcom/byazt/qi/a;->sl()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    iget-object v2, p0, Lcom/byazt/qi/a$1;->ve:Lcom/byazt/qi/x;

    .line 79
    .line 80
    invoke-interface {v2}, Lcom/byazt/qi/x;->c()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 85
    .line 86
    .line 87
    :cond_2
    const/4 v2, 0x2

    .line 88
    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {}, Lcom/byazt/qi/a;->da()Lcom/byazt/qi/sp;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Lcom/byazt/qi/sp;->c()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    aput-object v4, v2, v0

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    aput-object v1, v2, v3

    .line 109
    .line 110
    const/16 v1, 0x3e9

    .line 111
    .line 112
    invoke-static {v1, v2}, Lcom/byazt/qi/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    instance-of v2, v1, Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    check-cast v1, Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/byazt/qi/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v1, p0, Lcom/byazt/qi/a$1;->ve:Lcom/byazt/qi/x;

    .line 126
    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    invoke-static {}, Lcom/byazt/qi/a;->t()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    invoke-static {}, Lcom/byazt/ig/c;->c()Lcom/byazt/ig/c;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {}, Lcom/byazt/qi/a;->da()Lcom/byazt/qi/sp;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/byazt/qi/sp;->c()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {}, Lcom/byazt/qi/a;->da()Lcom/byazt/qi/sp;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v3}, Lcom/byazt/qi/sp;->tt()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v1, v2, v3}, Lcom/byazt/ig/c;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_4

    .line 164
    .line 165
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-lez v2, :cond_4

    .line 170
    .line 171
    iget-object v2, p0, Lcom/byazt/qi/a$1;->ve:Lcom/byazt/qi/x;

    .line 172
    .line 173
    const-string v3, "detailed_app_info"

    .line 174
    .line 175
    invoke-interface {v2, v3, v1}, Lcom/byazt/qi/x;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 176
    .line 177
    .line 178
    :cond_4
    invoke-static {}, Lcom/byazt/qi/a;->t()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    .line 184
    .line 185
    :cond_5
    iget-object v1, p0, Lcom/byazt/qi/a$1;->ve:Lcom/byazt/qi/x;

    .line 186
    .line 187
    if-eqz v1, :cond_6

    .line 188
    .line 189
    invoke-static {}, Lcom/byakv/z/SoftDecTool;->t()Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-eqz v1, :cond_6

    .line 194
    .line 195
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-lez v2, :cond_6

    .line 200
    .line 201
    iget-object v2, p0, Lcom/byazt/qi/a$1;->ve:Lcom/byazt/qi/x;

    .line 202
    .line 203
    const-string v3, "tc_info"

    .line 204
    .line 205
    invoke-interface {v2, v3, v1}, Lcom/byazt/qi/x;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    .line 208
    :cond_6
    :goto_0
    invoke-static {}, Lcom/byazt/qi/a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :catchall_0
    move-exception v1

    .line 217
    :try_start_1
    invoke-static {v1}, Lcom/byazt/qi/a;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v1}, Lcom/byazt/qi/a;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    .line 223
    .line 224
    goto :goto_0

    .line 225
    :catchall_1
    move-exception v1

    .line 226
    invoke-static {}, Lcom/byazt/qi/a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    .line 232
    .line 233
    throw v1
.end method
