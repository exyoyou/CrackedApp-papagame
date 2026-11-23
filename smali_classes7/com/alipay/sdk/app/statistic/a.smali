.class public final Lcom/alipay/sdk/app/statistic/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/alipay/sdk/app/statistic/c; = null

.field public static final b:Ljava/lang/String; = "alipay_cashier_statistic_record"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/app/statistic/a;->a:Lcom/alipay/sdk/app/statistic/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/alipay/sdk/app/statistic/c;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/statistic/c;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/alipay/sdk/app/statistic/a;->a:Lcom/alipay/sdk/app/statistic/c;

    .line 12
    .line 13
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    .line 1
    const-class v0, Lcom/alipay/sdk/app/statistic/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/alipay/sdk/app/statistic/a;->a:Lcom/alipay/sdk/app/statistic/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/alipay/sdk/app/statistic/c;->i:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_1
    const-string v2, "&"

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz p1, :cond_5

    .line 33
    .line 34
    array-length v6, p1

    .line 35
    move-object v8, v3

    .line 36
    move-object v9, v8

    .line 37
    const/4 v7, 0x0

    .line 38
    :goto_0
    if-ge v7, v6, :cond_6

    .line 39
    .line 40
    aget-object v10, p1, v7

    .line 41
    .line 42
    const-string v11, "="

    .line 43
    .line 44
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    if-eqz v10, :cond_4

    .line 49
    .line 50
    array-length v11, v10

    .line 51
    if-ne v11, v2, :cond_4

    .line 52
    .line 53
    aget-object v11, v10, v5

    .line 54
    .line 55
    const-string v12, "partner"

    .line 56
    .line 57
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-eqz v11, :cond_2

    .line 62
    .line 63
    aget-object v10, v10, v4

    .line 64
    .line 65
    const-string v11, "\""

    .line 66
    .line 67
    const-string v12, ""

    .line 68
    .line 69
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    aget-object v11, v10, v5

    .line 74
    .line 75
    const-string v12, "out_trade_no"

    .line 76
    .line 77
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-eqz v11, :cond_3

    .line 82
    .line 83
    aget-object v8, v10, v4

    .line 84
    .line 85
    const-string v10, "\""

    .line 86
    .line 87
    const-string v11, ""

    .line 88
    .line 89
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    aget-object v11, v10, v5

    .line 95
    .line 96
    const-string v12, "trade_no"

    .line 97
    .line 98
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_4

    .line 103
    .line 104
    aget-object v9, v10, v4

    .line 105
    .line 106
    const-string v10, "\""

    .line 107
    .line 108
    const-string v11, ""

    .line 109
    .line 110
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    move-object v8, v3

    .line 118
    move-object v9, v8

    .line 119
    :cond_6
    invoke-static {v9}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {v8}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-static {v6}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const-string v8, "%s,%s,-,%s,-,-,-"

    .line 132
    .line 133
    const/4 v9, 0x3

    .line 134
    new-array v10, v9, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object p1, v10, v5

    .line 137
    .line 138
    aput-object v6, v10, v4

    .line 139
    .line 140
    aput-object v7, v10, v2

    .line 141
    .line 142
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, v1, Lcom/alipay/sdk/app/statistic/c;->b:Ljava/lang/String;

    .line 147
    .line 148
    const-string v6, "[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]"

    .line 149
    .line 150
    const/16 v7, 0xa

    .line 151
    .line 152
    new-array v7, v7, [Ljava/lang/Object;

    .line 153
    .line 154
    iget-object v8, v1, Lcom/alipay/sdk/app/statistic/c;->a:Ljava/lang/String;

    .line 155
    .line 156
    aput-object v8, v7, v5

    .line 157
    .line 158
    aput-object p1, v7, v4

    .line 159
    .line 160
    iget-object p1, v1, Lcom/alipay/sdk/app/statistic/c;->c:Ljava/lang/String;

    .line 161
    .line 162
    aput-object p1, v7, v2

    .line 163
    .line 164
    iget-object p1, v1, Lcom/alipay/sdk/app/statistic/c;->d:Ljava/lang/String;

    .line 165
    .line 166
    aput-object p1, v7, v9

    .line 167
    .line 168
    iget-object p1, v1, Lcom/alipay/sdk/app/statistic/c;->e:Ljava/lang/String;

    .line 169
    .line 170
    const/4 v2, 0x4

    .line 171
    aput-object p1, v7, v2

    .line 172
    .line 173
    iget-object p1, v1, Lcom/alipay/sdk/app/statistic/c;->f:Ljava/lang/String;

    .line 174
    .line 175
    const/4 v2, 0x5

    .line 176
    aput-object p1, v7, v2

    .line 177
    .line 178
    iget-object p1, v1, Lcom/alipay/sdk/app/statistic/c;->g:Ljava/lang/String;

    .line 179
    .line 180
    const/4 v2, 0x6

    .line 181
    aput-object p1, v7, v2

    .line 182
    .line 183
    iget-object p1, v1, Lcom/alipay/sdk/app/statistic/c;->h:Ljava/lang/String;

    .line 184
    .line 185
    const/4 v2, 0x7

    .line 186
    aput-object p1, v7, v2

    .line 187
    .line 188
    iget-object p1, v1, Lcom/alipay/sdk/app/statistic/c;->i:Ljava/lang/String;

    .line 189
    .line 190
    const/16 v2, 0x8

    .line 191
    .line 192
    aput-object p1, v7, v2

    .line 193
    .line 194
    iget-object p1, v1, Lcom/alipay/sdk/app/statistic/c;->j:Ljava/lang/String;

    .line 195
    .line 196
    const/16 v1, 0x9

    .line 197
    .line 198
    aput-object p1, v7, v1

    .line 199
    .line 200
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    :goto_2
    new-instance v1, Ljava/lang/Thread;

    .line 205
    .line 206
    new-instance v2, Lcom/alipay/sdk/app/statistic/b;

    .line 207
    .line 208
    invoke-direct {v2, p0, p1}, Lcom/alipay/sdk/app/statistic/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 215
    .line 216
    .line 217
    sput-object v3, Lcom/alipay/sdk/app/statistic/a;->a:Lcom/alipay/sdk/app/statistic/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 221
    :catchall_0
    move-exception p0

    .line 222
    monitor-exit v0

    .line 223
    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/app/statistic/a;->a:Lcom/alipay/sdk/app/statistic/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/sdk/app/statistic/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/app/statistic/a;->a:Lcom/alipay/sdk/app/statistic/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/sdk/app/statistic/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/alipay/sdk/app/statistic/a;->a:Lcom/alipay/sdk/app/statistic/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/alipay/sdk/app/statistic/a;->a:Lcom/alipay/sdk/app/statistic/c;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, p0, v1, p1}, Lcom/alipay/sdk/app/statistic/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/alipay/sdk/app/statistic/b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/app/statistic/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
