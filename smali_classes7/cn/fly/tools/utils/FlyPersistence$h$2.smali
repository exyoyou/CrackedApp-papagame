.class Lcn/fly/tools/utils/FlyPersistence$h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/FlyPersistence$h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/utils/FlyPersistence$h;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/FlyPersistence$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onResponse(Lcn/fly/tools/utils/DH$DHResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string v0, "LRU"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 4
    .line 5
    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$h;->e(Lcn/fly/tools/utils/FlyPersistence$h;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcn/fly/tools/utils/DH$DHResponse;->getRuntimeMemory()Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const-string v3, "005g4bi1gbe"

    .line 25
    .line 26
    invoke-static {v3}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Long;

    .line 35
    .line 36
    const-string v4, "003Fbd0bDcg"

    .line 37
    .line 38
    invoke-static {v4}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/Long;

    .line 47
    .line 48
    const-string v5, "004^cdbh8dd"

    .line 49
    .line 50
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/Long;

    .line 59
    .line 60
    if-eqz v3, :cond_6

    .line 61
    .line 62
    if-eqz v4, :cond_6

    .line 63
    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    const-wide/16 v9, 0x0

    .line 81
    .line 82
    cmp-long p1, v3, v9

    .line 83
    .line 84
    if-lez p1, :cond_6

    .line 85
    .line 86
    cmp-long p1, v5, v9

    .line 87
    .line 88
    if-lez p1, :cond_6

    .line 89
    .line 90
    cmp-long p1, v7, v9

    .line 91
    .line 92
    if-gtz p1, :cond_3

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_3
    sub-long/2addr v5, v7

    .line 97
    long-to-double v5, v5

    .line 98
    long-to-double v3, v3

    .line 99
    div-double/2addr v5, v3

    .line 100
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 101
    .line 102
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->f(Lcn/fly/tools/utils/FlyPersistence$h;)D

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    cmpl-double p1, v5, v3

    .line 107
    .line 108
    if-lez p1, :cond_4

    .line 109
    .line 110
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 111
    .line 112
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->e(Lcn/fly/tools/utils/FlyPersistence$h;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 121
    .line 122
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->g(Lcn/fly/tools/utils/FlyPersistence$h;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v7

    .line 126
    cmp-long p1, v3, v7

    .line 127
    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 131
    .line 132
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->g(Lcn/fly/tools/utils/FlyPersistence$h;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v3, "lim max to "

    .line 142
    .line 143
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 147
    .line 148
    invoke-static {v3}, Lcn/fly/tools/utils/FlyPersistence$h;->g(Lcn/fly/tools/utils/FlyPersistence$h;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v3

    .line 152
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 164
    .line 165
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->h(Lcn/fly/tools/utils/FlyPersistence$h;)D

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    cmpg-double p1, v5, v3

    .line 170
    .line 171
    if-gez p1, :cond_5

    .line 172
    .line 173
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 174
    .line 175
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->e(Lcn/fly/tools/utils/FlyPersistence$h;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 180
    .line 181
    .line 182
    move-result-wide v3

    .line 183
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 184
    .line 185
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->i(Lcn/fly/tools/utils/FlyPersistence$h;)J

    .line 186
    .line 187
    .line 188
    move-result-wide v5

    .line 189
    cmp-long p1, v3, v5

    .line 190
    .line 191
    if-eqz p1, :cond_5

    .line 192
    .line 193
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 194
    .line 195
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->i(Lcn/fly/tools/utils/FlyPersistence$h;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v3, "add max to "

    .line 205
    .line 206
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 210
    .line 211
    invoke-static {v3}, Lcn/fly/tools/utils/FlyPersistence$h;->i(Lcn/fly/tools/utils/FlyPersistence$h;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 226
    .line 227
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->e(Lcn/fly/tools/utils/FlyPersistence$h;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 232
    .line 233
    .line 234
    move-result-wide v3

    .line 235
    cmp-long p1, v1, v3

    .line 236
    .line 237
    if-eqz p1, :cond_7

    .line 238
    .line 239
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$h$2;->a:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 240
    .line 241
    invoke-static {p1, v1, v2}, Lcn/fly/tools/utils/FlyPersistence$h;->a(Lcn/fly/tools/utils/FlyPersistence$h;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_6
    :goto_2
    return-void

    .line 246
    :catchall_0
    move-exception p1

    .line 247
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_7
    :goto_3
    return-void
.end method
