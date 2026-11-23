.class public Lcom/kuaishou/weapon/p0/jni/Engine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile instance:Lcom/kuaishou/weapon/p0/jni/Engine;

.field public static volatile loadSoCount:I

.field public static volatile loadSuccess:Z

.field public static volatile soPath:Ljava/lang/String;

.field public static volatile soVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static native abc()Ljava/lang/String;
.end method

.method public static native bcd()Ljava/lang/String;
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/jni/Engine;
    .locals 8

    .line 1
    const-class v0, Lcom/kuaishou/weapon/p0/jni/Engine;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/kuaishou/weapon/p0/jni/Engine;->soVersion:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_5

    .line 11
    .line 12
    sget-boolean v1, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    .line 13
    .line 14
    if-nez v1, :cond_5

    .line 15
    .line 16
    sget-object v1, Lcom/kuaishou/weapon/p0/jni/Engine;->instance:Lcom/kuaishou/weapon/p0/jni/Engine;

    .line 17
    .line 18
    if-nez v1, :cond_5

    .line 19
    .line 20
    const-string v1, "weapon"

    .line 21
    .line 22
    sget-object v2, Lcom/kuaishou/weapon/p0/jni/Engine;->instance:Lcom/kuaishou/weapon/p0/jni/Engine;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    new-instance v2, Lcom/kuaishou/weapon/p0/jni/Engine;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/kuaishou/weapon/p0/jni/Engine;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/kuaishou/weapon/p0/jni/Engine;->instance:Lcom/kuaishou/weapon/p0/jni/Engine;

    .line 32
    .line 33
    :cond_0
    const-string v2, "re_po_rt"

    .line 34
    .line 35
    invoke-static {p0, v2}, Lcom/kuaishou/weapon/p0/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/kuaishou/weapon/p0/h;

    .line 36
    .line 37
    .line 38
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    const/4 v3, 0x0

    .line 40
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    sget-object v5, Lcom/kuaishou/weapon/p0/jni/Engine;->soVersion:Ljava/lang/String;

    .line 49
    .line 50
    const-string v6, "."

    .line 51
    .line 52
    const-string v7, ""

    .line 53
    .line 54
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, ".so"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {p0, v4}, Lcom/kuaishou/weapon/p0/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_1

    .line 75
    .line 76
    sput-boolean v3, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    .line 77
    .line 78
    sget-object p0, Lcom/kuaishou/weapon/p0/jni/Engine;->instance:Lcom/kuaishou/weapon/p0/jni/Engine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-object p0

    .line 82
    :cond_1
    :try_start_2
    const-string v4, "plc001_lss_v_s"

    .line 83
    .line 84
    const-string v5, ""

    .line 85
    .line 86
    invoke-virtual {v2, v4, v5}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    sget-object v4, Lcom/kuaishou/weapon/p0/jni/Engine;->soVersion:Ljava/lang/String;

    .line 97
    .line 98
    const-string v5, "plc001_lss_v_s"

    .line 99
    .line 100
    invoke-virtual {v2, v5, v4, v3}, Lcom/kuaishou/weapon/p0/h;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    :cond_2
    const-string v5, "plc001_lps_t_p0"

    .line 104
    .line 105
    invoke-virtual {v2, v5}, Lcom/kuaishou/weapon/p0/h;->c(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    sput v5, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSoCount:I

    .line 110
    .line 111
    sget-object v5, Lcom/kuaishou/weapon/p0/jni/Engine;->soVersion:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_3

    .line 118
    .line 119
    sget-object v4, Lcom/kuaishou/weapon/p0/jni/Engine;->soVersion:Ljava/lang/String;

    .line 120
    .line 121
    sput v3, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSoCount:I

    .line 122
    .line 123
    const-string v5, "plc001_lss_v_s"

    .line 124
    .line 125
    invoke-virtual {v2, v5, v4, v3}, Lcom/kuaishou/weapon/p0/h;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    :cond_3
    sget v4, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSoCount:I

    .line 129
    .line 130
    const/4 v5, 0x1

    .line 131
    add-int/2addr v4, v5

    .line 132
    const/16 v6, 0xa

    .line 133
    .line 134
    if-ge v4, v6, :cond_4

    .line 135
    .line 136
    sget v4, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSoCount:I

    .line 137
    .line 138
    add-int/2addr v4, v5

    .line 139
    sput v4, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSoCount:I

    .line 140
    .line 141
    const-string v4, "plc001_lps_t_p0"

    .line 142
    .line 143
    sget v6, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSoCount:I

    .line 144
    .line 145
    invoke-virtual {v2, v4, v6}, Lcom/kuaishou/weapon/p0/h;->d(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    sget-object v1, Lcom/kuaishou/weapon/p0/jni/Engine;->soVersion:Ljava/lang/String;

    .line 157
    .line 158
    const-string v6, "."

    .line 159
    .line 160
    const-string v7, ""

    .line 161
    .line 162
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lcom/kuaishou/weapon/p0/jni/Engine;->bcd()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    sput v3, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSoCount:I

    .line 180
    .line 181
    sput-boolean v5, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v1

    .line 185
    :try_start_3
    sput-boolean v3, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .line 187
    :try_start_4
    new-instance v3, Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v4, "e"

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    const-string v1, "v"

    .line 202
    .line 203
    sget-object v4, Lcom/kuaishou/weapon/p0/jni/Engine;->soVersion:Ljava/lang/String;

    .line 204
    .line 205
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const-string v1, "l"

    .line 209
    .line 210
    sget-object v4, Lcom/kuaishou/weapon/p0/ci;->k:Ljava/lang/String;

    .line 211
    .line 212
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    sget-object v1, Lcom/kuaishou/weapon/p0/ci;->b:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {p0, v1, v3}, Lcom/kuaishou/weapon/p0/bf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 218
    .line 219
    .line 220
    :catch_0
    :cond_4
    :goto_0
    :try_start_5
    const-string p0, "plc001_lps_t_p0"

    .line 221
    .line 222
    sget v1, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSoCount:I

    .line 223
    .line 224
    invoke-virtual {v2, p0, v1}, Lcom/kuaishou/weapon/p0/h;->d(Ljava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    :cond_5
    sget-object p0, Lcom/kuaishou/weapon/p0/jni/Engine;->instance:Lcom/kuaishou/weapon/p0/jni/Engine;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 228
    .line 229
    monitor-exit v0

    .line 230
    return-object p0

    .line 231
    :catchall_1
    move-exception p0

    .line 232
    monitor-exit v0

    .line 233
    throw p0
.end method

.method public static native mmo(Ljava/lang/reflect/Member;II)I
.end method

.method public static native mqc(Ljava/lang/reflect/Member;I)I
.end method

.method public static native off()I
.end method

.method public static native tao(IJLjava/lang/Object;)Ljava/lang/String;
.end method


# virtual methods
.method public native ac([B[B)[B
.end method

.method public native ar([B[B)[B
.end method

.method public native cde()Ljava/lang/String;
.end method

.method public native dc([B[B)[B
.end method

.method public native def()Ljava/lang/String;
.end method

.method public native dr([B[B)[B
.end method

.method public native efg()Ljava/lang/String;
.end method

.method public native eopq(IIILjava/lang/String;)Ljava/lang/String;
.end method

.method public native fgh()Ljava/lang/String;
.end method

.method public native ghi()Ljava/lang/String;
.end method

.method public native hij()Ljava/lang/String;
.end method

.method public native klm(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public native nop()Ljava/lang/String;
.end method

.method public native pqr(IIILjava/lang/String;)Ljava/lang/String;
.end method

.method public native qrs()Ljava/lang/String;
.end method

.method public native stu(IIIILjava/lang/String;)Ljava/lang/String;
.end method
