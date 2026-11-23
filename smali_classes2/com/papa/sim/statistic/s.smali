.class public Lcom/papa/sim/statistic/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/sim/statistic/s$g;
    }
.end annotation


# static fields
.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field private static q:Lcom/papa/sim/statistic/s;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ly7/a;

.field private d:Landroid/content/Context;

.field private e:Lcom/papa/sim/statistic/s$g;

.field private f:Z

.field private g:Z

.field h:J

.field i:Z

.field j:Z

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa/sim/statistic/s;->l:Ljava/util/Map;

    .line 7
    .line 8
    const-string v0, "http://datainterface.wufan88.com"

    .line 9
    .line 10
    sput-object v0, Lcom/papa/sim/statistic/s;->m:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "http://cjapi.wufan88.com"

    .line 13
    .line 14
    sput-object v0, Lcom/papa/sim/statistic/s;->n:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "http://anv9.ctapi.wufan88.com"

    .line 17
    .line 18
    sput-object v0, Lcom/papa/sim/statistic/s;->o:Ljava/lang/String;

    .line 19
    .line 20
    sput-object v0, Lcom/papa/sim/statistic/s;->p:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    sput-object v0, Lcom/papa/sim/statistic/s;->r:Ljava/lang/String;

    .line 25
    .line 26
    sput-object v0, Lcom/papa/sim/statistic/s;->s:Ljava/lang/String;

    .line 27
    .line 28
    sput-object v0, Lcom/papa/sim/statistic/s;->t:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "StatCore"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa/sim/statistic/s;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/papa/sim/statistic/s;->b:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/papa/sim/statistic/s;->g:Z

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/papa/sim/statistic/s;->h:J

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/papa/sim/statistic/s;->i:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/papa/sim/statistic/s;->j:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/papa/sim/statistic/s;->k:Z

    .line 25
    .line 26
    iput-object p1, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {p1}, Ly7/a;->o(Landroid/content/Context;)Ly7/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 33
    .line 34
    return-void
.end method

.method private Z(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/StatisticTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->s()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_7

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 34
    .line 35
    sget-object v3, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "sendAllData: "

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 73
    .line 74
    invoke-direct {p0, v3, v2}, Lcom/papa/sim/statistic/s;->h(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)Lcom/papa/sim/statistic/StatRequest;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v4, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    .line 87
    .line 88
    invoke-interface {v4}, Lcom/papa/sim/statistic/s$g;->a()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Data;->setPageVersion(I)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getEmuCount()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_3

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {}, Lcom/papa/sim/statistic/u;->m()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setEmuCount(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getUid()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_5

    .line 135
    .line 136
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Lcom/papa/sim/statistic/t;->n()Lcom/papa/sim/statistic/j;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iget-object v4, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 147
    .line 148
    invoke-interface {v3, v4}, Lcom/papa/sim/statistic/j;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iget-object v4, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 164
    .line 165
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4}, Lcom/papa/sim/statistic/t;->n()Lcom/papa/sim/statistic/j;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iget-object v5, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 174
    .line 175
    invoke-interface {v4, v5}, Lcom/papa/sim/statistic/j;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :catch_0
    nop

    .line 188
    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/papa/sim/statistic/s;->b:Z

    .line 189
    .line 190
    if-eqz v3, :cond_6

    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-static {v3}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/papa/sim/statistic/s;->a:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-static {v4, v3, v5}, Lcom/papa/sim/statistic/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_7
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-boolean v1, p0, Lcom/papa/sim/statistic/s;->b:Z

    .line 223
    .line 224
    if-eqz v1, :cond_8

    .line 225
    .line 226
    iget-object v1, p0, Lcom/papa/sim/statistic/s;->a:Ljava/lang/String;

    .line 227
    .line 228
    const-string v2, "all-10"

    .line 229
    .line 230
    invoke-static {v1, v0, v2}, Lcom/papa/sim/statistic/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_8
    :try_start_1
    const-string v1, ""

    .line 234
    .line 235
    invoke-static {v0, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    goto :goto_2

    .line 240
    :catch_1
    move-exception v1

    .line 241
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    .line 243
    .line 244
    :goto_2
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    sget-object v3, Lcom/papa/sim/statistic/s;->m:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v3, "/data/batch/v3"

    .line 259
    .line 260
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    new-instance v3, Lcom/papa/sim/statistic/s$e;

    .line 268
    .line 269
    invoke-direct {v3, p0, p1}, Lcom/papa/sim/statistic/s$e;-><init>(Lcom/papa/sim/statistic/s;Ljava/util/List;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/http/c;->g(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;)V

    .line 273
    .line 274
    .line 275
    return-void
.end method

.method static synthetic a(Lcom/papa/sim/statistic/s;Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)Lcom/papa/sim/statistic/StatRequest;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/s;->h(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/s;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/papa/sim/statistic/s;)Ly7/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/papa/sim/statistic/s;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/sim/statistic/s;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/papa/sim/statistic/s;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/papa/sim/statistic/s;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/s;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method private g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/s;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/http/c;->f(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/papa/sim/statistic/s;->f:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private h(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)Lcom/papa/sim/statistic/StatRequest;
    .locals 13

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getNewData()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    const-string v3, "_"

    const-string v4, "0.3"

    const-class v5, Lcom/papa/sim/statistic/StatRequest;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, v6, :cond_3

    :try_start_1
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->visitIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickFunGameMainBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickGameMainBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->visitAppInternalPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleJoinRoomBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->joinLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->gameRecovery:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->inviteBattleShareSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->startShare:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->shareChannel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->shareResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->f2fRequestCreateQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->f2fCreateQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->liveResDownloaded:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickVsBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickVsHallBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->visitVsRoomPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->visitVsMainPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickVsForumBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickVsAdvBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickVsCreateRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickVsQuickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->VsCreateWaitOver:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->VsGameOverSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->VsSelectSilentBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->VsCreateSilentRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->VsSilentTransform:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickVsLocalBat:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickVsNetBattleMatch:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->f2fRequestScanQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->f2fConnectQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->sharePasteClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->f2fRequestTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->f2fTransferGameDone:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->f2fInterruptTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->arenaGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->arenaGameListBanner:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->arenaGameListItem:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->areaRoomFromInvite:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->onMainPageShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->requestEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickHomePageEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickShopHomeEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->findButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickGameDetailModel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->clickSearchAdPosition:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->downloadFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->clickDetailFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->VMGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->VMGameStartAfterStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->speedDownQkExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->clickSpeedDownQkButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->installTipsQkExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->clickInstallQkButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->installSuccessQk:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->clickSpeedDownUpQk:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    if-eqz v2, :cond_3

    .line 22
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/StatRequest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v2, :cond_1

    .line 23
    :try_start_3
    new-instance v1, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v1}, Lcom/papa/sim/statistic/StatRequest;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 24
    :try_start_4
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v2

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-object v2, v1

    goto :goto_0

    :catch_1
    move-object v1, v2

    goto :goto_1

    :catch_2
    :cond_1
    :goto_0
    move-object v1, v2

    goto :goto_2

    .line 25
    :catch_3
    :goto_1
    :try_start_5
    new-instance v2, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v2}, Lcom/papa/sim/statistic/StatRequest;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    .line 26
    :try_start_6
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 27
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v2

    .line 28
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setModel(Ljava/lang/String;)V

    .line 29
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setBrand(Ljava/lang/String;)V

    .line 30
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setSdkInt(I)V

    .line 31
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/papa/sim/statistic/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setAndroidId(Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa/sim/statistic/u;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setOaid(Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa/sim/statistic/u;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setWfuuid(Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa/sim/statistic/u;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setImei(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa/sim/statistic/u;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setGdevid(Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/papa/sim/statistic/u;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setUmengid(Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa/sim/statistic/u;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setMac(Ljava/lang/String;)V

    .line 38
    iget-object v5, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    if-eqz v5, :cond_2

    .line 39
    invoke-interface {v5}, Lcom/papa/sim/statistic/s$g;->a()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/papa/sim/statistic/Data;->setPageVersion(I)V

    .line 40
    :cond_2
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa/sim/statistic/u;->r()[Ljava/lang/String;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    .line 41
    :try_start_8
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 42
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 43
    :catch_4
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v5, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v5, v6

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setAppVersion(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v4}, Lcom/papa/sim/statistic/StatRequest;->setVersion(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setId(I)V

    .line 47
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/u;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setMac(Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setDeviceId(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 49
    :cond_3
    new-instance v2, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v2}, Lcom/papa/sim/statistic/StatRequest;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10

    .line 50
    :try_start_a
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 51
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    if-eqz v9, :cond_4

    goto :goto_3

    .line 52
    :cond_4
    :try_start_b
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_4

    :catch_5
    move-exception v8

    .line 53
    :try_start_c
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    invoke-virtual {v2, v7}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    goto :goto_4

    .line 55
    :cond_5
    :goto_3
    invoke-virtual {v2, v7}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 56
    :goto_4
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/papa/sim/statistic/StatRequest;->setId(I)V

    .line 57
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v8

    invoke-virtual {v8}, Lcom/papa/sim/statistic/u;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/papa/sim/statistic/StatRequest;->setDeviceId(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v4}, Lcom/papa/sim/statistic/StatRequest;->setVersion(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    if-nez v4, :cond_6

    .line 60
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 61
    :cond_6
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 62
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v8

    invoke-virtual {v8}, Lcom/papa/sim/statistic/u;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/papa/sim/statistic/StatRequest;->setMac(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    .line 64
    :try_start_d
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_5

    :catch_6
    move-exception v8

    .line 65
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    .line 66
    :goto_5
    :try_start_f
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getAd()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 67
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    .line 68
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/papa/sim/statistic/StatRequest;->setAd(I)V

    goto :goto_7

    .line 69
    :cond_8
    :goto_6
    invoke-virtual {v2, v7}, Lcom/papa/sim/statistic/StatRequest;->setAd(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_7

    :catch_7
    move-exception v8

    .line 70
    :try_start_10
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    invoke-virtual {v2, v7}, Lcom/papa/sim/statistic/StatRequest;->setAd(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    .line 73
    :goto_7
    :try_start_11
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getCountType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 74
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    invoke-virtual {v2, v7}, Lcom/papa/sim/statistic/StatRequest;->setCountType(I)V

    .line 75
    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/papa/sim/statistic/StatRequest;->setCountType(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_8

    :catch_8
    move-exception v8

    .line 76
    :try_start_12
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    invoke-virtual {v2, v7}, Lcom/papa/sim/statistic/StatRequest;->setCountType(I)V

    .line 78
    :goto_8
    new-instance v8, Lcom/papa/sim/statistic/Data;

    invoke-direct {v8}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 79
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setModel(Ljava/lang/String;)V

    .line 80
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setBrand(Ljava/lang/String;)V

    .line 81
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setSdkInt(I)V

    .line 82
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/papa/sim/statistic/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setAndroidId(Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v9

    invoke-virtual {v9}, Lcom/papa/sim/statistic/u;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setOaid(Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v9

    invoke-virtual {v9}, Lcom/papa/sim/statistic/u;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setWfuuid(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v9

    invoke-virtual {v9}, Lcom/papa/sim/statistic/u;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setImei(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v9

    invoke-virtual {v9}, Lcom/papa/sim/statistic/u;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setGdevid(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/papa/sim/statistic/u;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setUmengid(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v9

    invoke-virtual {v9}, Lcom/papa/sim/statistic/u;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setMac(Ljava/lang/String;)V

    .line 89
    iget-object v9, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    if-eqz v9, :cond_b

    .line 90
    invoke-interface {v9}, Lcom/papa/sim/statistic/s$g;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setPageVersion(I)V

    .line 91
    :cond_b
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object v9

    invoke-virtual {v9}, Lcom/papa/sim/statistic/u;->r()[Ljava/lang/String;

    move-result-object v9

    .line 92
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v9, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v9, v6

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/papa/sim/statistic/Data;->setAppVersion(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getNewData()I

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    const-class v9, Lcom/papa/sim/statistic/Ext;

    if-ne v3, v6, :cond_c

    .line 94
    :try_start_13
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/papa/sim/statistic/Ext;

    .line 95
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 96
    :cond_c
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getNewData()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_e

    .line 97
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 98
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/StatRequest;

    if-eqz v1, :cond_35

    .line 99
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 100
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 101
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getArticleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/papa/sim/statistic/Data;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 102
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 104
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 105
    :cond_d
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 106
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 107
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getFromTabId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 108
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 109
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getGameFlag()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 110
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getLiveTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    .line 111
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getReMarks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 112
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getIsJoin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 113
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getRecPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 114
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setWhere(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 117
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getEndId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setEndId(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 119
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getScenesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 120
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 121
    :cond_e
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 122
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/StatRequest;

    .line 123
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getGameList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setGameList(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 125
    :cond_f
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->plugEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_15

    .line 126
    :cond_10
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->visitSearchPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 127
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    goto/16 :goto_14

    .line 128
    :cond_11
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_14

    .line 129
    :cond_12
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    const-class v5, Lcom/papa/sim/statistic/StatJsonRawData;

    if-nez v3, :cond_33

    :try_start_14
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto/16 :goto_12

    .line 130
    :cond_13
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->memberClickRegister:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->joystickJoinApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->joystickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_11

    .line 131
    :cond_14
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 132
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    move-object v1, v0

    .line 133
    :cond_15
    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/papa/sim/statistic/s;->r:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setOaid(Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/papa/sim/statistic/s;->s:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setVaid(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/papa/sim/statistic/s;->t:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setAaid(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 137
    :cond_16
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->articleClickPraise:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->articleClickDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_10

    .line 138
    :cond_17
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/papa/sim/statistic/Event;->endLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_f

    .line 139
    :cond_18
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->appUseTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    if-eqz v1, :cond_19

    .line 140
    :try_start_15
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/papa/sim/statistic/pref/a;

    invoke-virtual {v1, v3, v5}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/pref/a;

    .line 141
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v1}, Lcom/papa/sim/statistic/pref/a;->a()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/papa/sim/statistic/pref/a;->c()J

    move-result-wide v9

    sub-long/2addr v5, v9

    invoke-virtual {v3, v5, v6}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 142
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v1}, Lcom/papa/sim/statistic/pref/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    goto/16 :goto_14

    .line 143
    :cond_19
    :try_start_16
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->worldStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 144
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    .line 145
    :try_start_17
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_14

    :catch_9
    move-exception v1

    .line 146
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    invoke-virtual {v4, v7}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 148
    :cond_1a
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 149
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/papa/sim/statistic/Ext;

    .line 150
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 151
    :cond_1b
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_e

    .line 152
    :cond_1c
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 153
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f

    .line 154
    :try_start_19
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 155
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 156
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    goto/16 :goto_14

    .line 157
    :cond_1d
    :try_start_1a
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 158
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/StatJsonRawData;

    .line 160
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 161
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatJsonRawData;->getLogfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setLogFile(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatJsonRawData;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setIp(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatJsonRawData;->getDelay_avg()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setDelayAvg(I)V

    .line 164
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatJsonRawData;->getDelay_max()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setDelayMax(I)V

    .line 165
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 166
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatJsonRawData;->getRoomid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setRoomID(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatJsonRawData;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    goto/16 :goto_14

    .line 168
    :cond_1e
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->submitPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 169
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 170
    :cond_1f
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->netMatchBtnClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->inviteBattleAutoJoinSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto/16 :goto_d

    .line 171
    :cond_20
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    if-eqz v1, :cond_21

    .line 172
    :try_start_1b
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 174
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    goto/16 :goto_14

    .line 175
    :cond_21
    :try_start_1c
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->startMeArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->backupLocalArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 176
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->downloadCloudArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->shareArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 177
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->makeStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->startStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_c

    .line 178
    :cond_22
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->md5error:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->filenumerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto/16 :goto_b

    .line 179
    :cond_23
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 180
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 181
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 182
    :cond_24
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->listShowBigPicUPPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 183
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->listShowIconHotList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 184
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->listClickBigPicStaus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 185
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->listClickIconStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 186
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->listClickBigPicSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 187
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->listClickIconSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 188
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickBigModelGet:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 189
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 190
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickIconModelClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 191
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->game_strategy_panel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 192
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoWYDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 193
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickIconModelWYClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_a

    .line 194
    :cond_25
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->pullDownModelExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->expSmallGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 195
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->smallGameStartSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 196
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->smallRequestAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 197
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->smallExpAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 198
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->smallVideoDoneAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 199
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->expH5GameAdPicPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 200
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->clickH5AndCollGamePicPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_9

    .line 201
    :cond_26
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->clickSearchButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 202
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 203
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 204
    :cond_27
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 205
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 206
    :cond_28
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 207
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 208
    :cond_29
    :goto_9
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 209
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 210
    :cond_2a
    :goto_a
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/Ext;

    .line 211
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 212
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 213
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 214
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 215
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f

    goto/16 :goto_14

    .line 216
    :cond_2b
    :goto_b
    :try_start_1d
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/Ext;

    .line 217
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getPlugVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getPlugId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setPlugId(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getReMarks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 220
    :cond_2c
    :goto_c
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d

    goto/16 :goto_14

    .line 222
    :cond_2d
    :goto_d
    :try_start_1e
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a

    .line 223
    :catch_a
    :try_start_1f
    sget-object v1, Lcom/papa/sim/statistic/t;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 224
    :cond_2e
    :goto_e
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/papa/sim/statistic/Ext;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    goto/16 :goto_14

    .line 225
    :cond_2f
    :goto_f
    :try_start_20
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 226
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/Ext;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    .line 227
    :try_start_21
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 228
    sget-object v3, Lcom/papa/sim/statistic/t;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_b

    :catch_b
    :cond_30
    move-object v4, v1

    goto/16 :goto_14

    .line 229
    :cond_31
    :goto_10
    :try_start_22
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_f

    .line 230
    :try_start_23
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c

    .line 231
    :catch_c
    :try_start_24
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 232
    :cond_32
    :goto_11
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->nonDefaultMapper()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, v1, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/papa/sim/statistic/Ext;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_f

    goto :goto_14

    .line 234
    :cond_33
    :goto_12
    :try_start_25
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/papa/sim/statistic/StatJsonRawData;

    .line 235
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 236
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getWhere()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_34

    .line 237
    sget-object v5, Lcom/papa/sim/statistic/Where;->default1:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    goto :goto_13

    .line 238
    :cond_34
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getWhere()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 239
    :goto_13
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 240
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getArticleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 241
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 242
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getInterrupt()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 243
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getZipCost()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 244
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 245
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 246
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getGameFlag()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 247
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatJsonRawData;->getDataFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setDataFlag(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_e

    .line 248
    :catch_d
    :cond_35
    :goto_14
    :try_start_26
    invoke-virtual {v8}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    if-eqz v4, :cond_36

    .line 249
    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 250
    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 251
    :cond_36
    invoke-virtual {v2, v8}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 252
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setIsdirect(I)V

    .line 253
    invoke-virtual {v2, v4}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    move-object v1, v2

    goto :goto_17

    :catch_e
    return-object v1

    .line 254
    :cond_37
    :goto_15
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/StatRequest;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_f

    return-object v1

    :catch_f
    move-exception v1

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_16

    :catch_10
    move-exception v2

    .line 255
    :goto_16
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    :goto_17
    :try_start_27
    invoke-static {p1}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setAd(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_11

    goto :goto_18

    :catch_11
    nop

    .line 257
    :goto_18
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->unzipFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 258
    :try_start_28
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 259
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-static {}, Lcom/papa/sim/statistic/u;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/papa/sim/statistic/Ext;->setIp(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/s;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_12

    .line 261
    :catch_12
    :cond_38
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/u;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/Ext;->setWebUa(Ljava/lang/String;)V

    return-object v1
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    const-string v1, "9c708c7fce87abaa544b221898769baa"

    .line 4
    .line 5
    const-string v2, "application/json"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    const/4 v5, 0x2

    .line 10
    if-ge v4, v5, :cond_1

    .line 11
    .line 12
    :try_start_0
    new-instance v5, Ljava/net/URL;

    .line 13
    .line 14
    const-string v6, "http://service.kingnetdc.com/mqs"

    .line 15
    .line 16
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 24
    .line 25
    const/16 v6, 0x1388

    .line 26
    .line 27
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 41
    .line 42
    .line 43
    const-string v6, "POST"

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v6, "Accept"

    .line 49
    .line 50
    invoke-virtual {v5, v6, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v6, "Content-Type"

    .line 54
    .line 55
    invoke-virtual {v5, v6, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v6, "1"

    .line 59
    .line 60
    const-string v7, "papa_plat"

    .line 61
    .line 62
    const-string v8, "Version"

    .line 63
    .line 64
    invoke-virtual {v5, v8, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v8, "Topic"

    .line 68
    .line 69
    invoke-virtual {v5, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v9, "[{\"key\":\""

    .line 78
    .line 79
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v9, "\",\"message\":"

    .line 86
    .line 87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v9, "}]"

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    const-string v9, "Authorization"

    .line 103
    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-static {v6}, Lcom/papa/sim/statistic/l;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v5, v9, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 136
    .line 137
    .line 138
    new-instance v6, Ljava/io/OutputStreamWriter;

    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-direct {v6, v7, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    const/4 v7, -0x1

    .line 165
    if-eq v6, v7, :cond_1

    .line 166
    .line 167
    new-array v6, v6, [B

    .line 168
    .line 169
    const/16 v7, 0x200

    .line 170
    .line 171
    new-array v7, v7, [B

    .line 172
    .line 173
    const/4 v8, 0x0

    .line 174
    :goto_1
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-lez v9, :cond_0

    .line 179
    .line 180
    invoke-static {v7, v3, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    .line 182
    .line 183
    add-int/2addr v8, v9

    .line 184
    goto :goto_1

    .line 185
    :cond_0
    new-instance v5, Ljava/lang/String;

    .line 186
    .line 187
    invoke-direct {v5, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .line 190
    return-object v5

    .line 191
    :catch_0
    move-exception v5

    .line 192
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_1
    const-string p0, "-1"

    .line 200
    .line 201
    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/s;->l:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public static m(Landroid/content/Context;)Lcom/papa/sim/statistic/s;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/s;->q:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/sim/statistic/s;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/s;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa/sim/statistic/s;->q:Lcom/papa/sim/statistic/s;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/papa/sim/statistic/s;->q:Lcom/papa/sim/statistic/s;

    .line 13
    .line 14
    return-object p0
.end method

.method private p(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit16 v1, p1, 0xff

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "."

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    shr-int/lit8 v2, p1, 0x8

    .line 17
    .line 18
    and-int/lit16 v2, v2, 0xff

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    shr-int/lit8 v2, p1, 0x10

    .line 27
    .line 28
    and-int/lit16 v2, v2, 0xff

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    shr-int/lit8 p1, p1, 0x18

    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public static q0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/papa/sim/statistic/s;->l:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/papa/sim/statistic/s;->l:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private w0(Lcom/papa/sim/statistic/StatRequest;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    const-class v2, Lcom/papa/sim/statistic/StatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/papa/sim/statistic/s;->h:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v1, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/papa/sim/statistic/s;->h:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_0
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_e

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_d

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_c

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameWorldData:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance v0, Lcom/papa/sim/statistic/db/StatisticTable;

    invoke-direct {v0}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 12
    :cond_4
    new-instance v0, Lcom/papa/sim/statistic/db/StatisticTable;

    invoke-direct {v0}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->isRequest()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    .line 16
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setNewData(I)V

    .line 17
    invoke-static {p1}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->isNew()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setNewData(I)V

    .line 20
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-static {v3}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 21
    :cond_6
    sget-object v3, Lcom/papa/sim/statistic/Event;->visitSearchPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 24
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->nonDefaultMapper()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->plugEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_a

    .line 26
    :cond_9
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->onMainPageShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 27
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 28
    :cond_a
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->visitIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->clickIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->startShare:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->shareChannel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->shareResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fRequestCreateQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fCreateQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->liveResDownloaded:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsHallBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->visitVsRoomPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->visitVsMainPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsForumBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsAdvBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsCreateRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsQuickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsCreateWaitOver:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsGameOverSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsSelectSilentBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsCreateSilentRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsSilentTransform:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsLocalBat:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsNetBattleMatch:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fRequestScanQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fConnectQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->sharePasteClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fTransferGameDone:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fInterruptTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->visitAppInternalPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->arenaGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->arenaGameListBanner:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->arenaGameListItem:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->areaRoomFromInvite:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 29
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->requestEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickHomePageEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickShopHomeEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->findButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 30
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickGameDetailModel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 31
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 32
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickSearchAdPosition:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 33
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->downloadFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 34
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 35
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 36
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 37
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickDetailFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 38
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 39
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 40
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VMGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 41
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VMGameStartAfterStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 42
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->speedDownQkExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 43
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickSpeedDownQkButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 44
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->installTipsQkExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 45
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickInstallQkButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 46
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->installSuccessQk:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 47
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickSpeedDownUpQk:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 48
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 49
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_9

    .line 50
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_8

    .line 51
    :cond_c
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameWorldData:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 52
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 53
    :cond_d
    sget-object v3, Lcom/papa/sim/statistic/Event;->memberClickRegister:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/papa/sim/statistic/Event;->joystickJoinApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/papa/sim/statistic/Event;->joystickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto/16 :goto_7

    .line 54
    :cond_e
    sget-object v3, Lcom/papa/sim/statistic/Event;->md5error:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    sget-object v3, Lcom/papa/sim/statistic/Event;->filenumerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_6

    .line 55
    :cond_f
    sget-object v3, Lcom/papa/sim/statistic/Event;->articleClickPraise:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    sget-object v3, Lcom/papa/sim/statistic/Event;->articleClickDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_5

    .line 56
    :cond_10
    sget-object v3, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    sget-object v3, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    sget-object v3, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_4

    .line 57
    :cond_11
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->endLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_3

    .line 58
    :cond_12
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->appUseTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 59
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 62
    :cond_13
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 63
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 65
    :cond_14
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto/16 :goto_2

    .line 66
    :cond_15
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 67
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 70
    :cond_16
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->submitPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 73
    :cond_17
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getGameFlag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 77
    :cond_18
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getNodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 81
    :cond_19
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 84
    :cond_1a
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->pullDownModelExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->expSmallGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 85
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->smallGameStartSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 86
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->smallRequestAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 87
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->smallExpAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 88
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->smallVideoDoneAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 89
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->expH5GameAdPicPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 90
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->clickH5AndCollGamePicPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_1

    .line 91
    :cond_1b
    sget-object v3, Lcom/papa/sim/statistic/Event;->clickSearchButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 92
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 94
    :cond_1c
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listShowBigPicUPPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 95
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listShowIconHotList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 96
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listClickBigPicStaus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 97
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listClickIconStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 98
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listClickBigPicSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 99
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listClickIconSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 100
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickBigModelGet:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 101
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 102
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickIconModelClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 103
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->game_strategy_panel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 104
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoWYDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 105
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickIconModelWYClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_0

    .line 106
    :cond_1d
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->unzipFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getGameFlag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    .line 108
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 109
    :cond_1f
    :goto_0
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-static {v3}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 111
    :cond_20
    :goto_1
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-static {v3}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 113
    :cond_21
    :goto_2
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 115
    :cond_22
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 117
    :try_start_1
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    :catch_1
    nop

    goto/16 :goto_b

    .line 118
    :cond_23
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getPlugId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 120
    :cond_24
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 122
    :cond_25
    :goto_6
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    .line 123
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->nonDefaultMapper()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 126
    :cond_26
    :goto_7
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    .line 127
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->nonDefaultMapper()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 130
    :cond_27
    :goto_8
    new-instance v3, Lcom/papa/sim/statistic/StatJsonRawData;

    invoke-direct {v3}, Lcom/papa/sim/statistic/StatJsonRawData;-><init>()V

    .line 131
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setGameId(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getInterrupt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setInterrupt(I)V

    .line 133
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/StatJsonRawData;->setDuration(J)V

    .line 134
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getZipCost()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/StatJsonRawData;->setZipCost(J)V

    .line 135
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setUid(I)V

    .line 136
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setWhere(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setArticleId(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setFrom(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getPosition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setPosition(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getGameFlag()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setGameFlag(I)V

    .line 141
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getDataFlag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setDataFlag(Ljava/lang/String;)V

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto :goto_b

    .line 144
    :cond_28
    :goto_9
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    goto :goto_b

    .line 145
    :cond_29
    :goto_a
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->nonDefaultMapper()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 146
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 151
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 152
    :cond_2b
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    invoke-virtual {p1, v0}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 153
    :try_start_2
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ly7/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/papa/sim/statistic/s;->t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_e

    :catch_2
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_e

    .line 156
    :cond_2c
    :goto_c
    new-instance v0, Lcom/papa/sim/statistic/db/BossTable;

    invoke-direct {v0}, Lcom/papa/sim/statistic/db/BossTable;-><init>()V

    .line 157
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/BossTable;->setType(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/BossTable;->setArgs1(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Data;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/BossTable;->setArgs2(Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/BossTable;->setTime(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/BossTable;->setAd(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/BossTable;->setCountType(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    invoke-virtual {p1, v0}, Ly7/a;->t(Lcom/papa/sim/statistic/db/BossTable;)V

    goto :goto_e

    .line 164
    :cond_2d
    :goto_d
    new-instance v0, Lcom/papa/sim/statistic/db/BossTable;

    invoke-direct {v0}, Lcom/papa/sim/statistic/db/BossTable;-><init>()V

    .line 165
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/BossTable;->setType(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/BossTable;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 167
    iget-object v3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    invoke-virtual {v3, v2}, Ly7/a;->c(Lcom/papa/sim/statistic/Event;)V

    .line 168
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/BossTable;->setArgs1(Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/BossTable;->setTime(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/BossTable;->setAd(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/BossTable;->setCountType(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    invoke-virtual {p1, v0}, Ly7/a;->t(Lcom/papa/sim/statistic/db/BossTable;)V

    :cond_2f
    :goto_e
    return-void
.end method


# virtual methods
.method public A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public B(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->endLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startShare:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->shareChannel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->shareResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fRequestCreateQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fCreateQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->liveResDownloaded:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsHallBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitVsRoomPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitVsMainPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsForumBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsAdvBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsCreateRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsQuickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsCreateWaitOver:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsGameOverSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsSelectSilentBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsCreateSilentRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsSilentTransform:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsLocalBat:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsNetBattleMatch:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fRequestScanQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fConnectQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->sharePasteClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fRequestTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fTransferGameDone:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fInterruptTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitAppInternalPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->arenaGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->arenaGameListBanner:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->arenaGameListItem:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->areaRoomFromInvite:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->onMainPageShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->requestEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickHomePageEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickShopHomeEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->findButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startMeArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->makeStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadCloudArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->backupLocalArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->shareArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->md5error:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->filenumerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickGameDetailModel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickSearchAdPosition:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickDetailFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showCopyright:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->closeCopyright:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadCopyright:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->openSourceUrl:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->smallGameStartSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->smallRequestAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->smallExpAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->smallVideoDoneAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->homeSuccessUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->tabStartSuccessUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/Event;->quitSingleSuccessUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/papa/sim/statistic/Event;->tabStartViewSuccessTips:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickTabGameTipsUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/papa/sim/statistic/Event;->clickOpenPopUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listShowBigPicUPPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listShowIconHotList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listClickBigPicStaus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listClickIconStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listClickBigPicSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listClickIconSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickBigModelGet:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickIconModelClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->game_strategy_panel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoWYDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickIconModelWYClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->speedDownQkExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickSpeedDownQkButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->installTipsQkExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickInstallQkButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->installSuccessQk:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickSpeedDownUpQk:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 29
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method C(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Where;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method D(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 30
    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    const-string p2, ""

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p2

    .line 62
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method E(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameWorldData:Lcom/papa/sim/statistic/Event;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const-string v2, ""

    .line 49
    .line 50
    const-string v4, "0"

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    :cond_1
    move-object p2, v4

    .line 61
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sget-object v6, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-virtual {v1, v5}, Lcom/papa/sim/statistic/Data;->setPlugId(I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    sget-object v6, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setModel(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    sget-object v5, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_8

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    sget-object v5, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_6

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    sget-object v3, Lcom/papa/sim/statistic/Event;->submitPost:Lcom/papa/sim/statistic/Event;

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-nez p1, :cond_9

    .line 188
    .line 189
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_8
    :goto_0
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :catch_0
    invoke-virtual {v1, v4}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 198
    .line 199
    .line 200
    :cond_9
    :goto_1
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 201
    .line 202
    .line 203
    :try_start_1
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :catch_1
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    .line 210
    .line 211
    :goto_2
    return-void
.end method

.method public F(Lcom/papa/sim/statistic/Event;Ljava/lang/String;II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p3, ""

    .line 37
    .line 38
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/Ext;->setEmuCount(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/Ext;->setApkCount(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 63
    .line 64
    invoke-direct {p2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance p4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p4, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {p4}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p4, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {p4}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance p4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 148
    .line 149
    invoke-virtual {p3, p2}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 150
    .line 151
    .line 152
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p3, p1, p2}, Ly7/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/s;->t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :catch_1
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    :goto_0
    return-void
.end method

.method public G(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    if-nez p6, :cond_0

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    :cond_0
    :try_start_0
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 58
    .line 59
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 63
    .line 64
    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    :catch_1
    invoke-virtual {p1, p3, p4}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p5}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method H(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p2

    .line 30
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .line 43
    .line 44
    :catch_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2, p3, p4}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p5}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p6}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p6

    .line 48
    invoke-virtual {p2, p6}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    .line 51
    :catch_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, p3, p4}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p5}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    const-string v5, ""

    .line 3
    .line 4
    const/4 v6, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/s;->n0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method K(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    invoke-virtual {v2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p3

    .line 77
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_1
    const-string p2, "0"

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public L(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p5}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    invoke-virtual {v0, p5}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    .line 23
    move-result-object p5

    .line 24
    invoke-virtual {p5, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    nop

    .line 40
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string p3, "clickLocalNetBattleJoinRoomBtn"

    .line 45
    .line 46
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/4 p3, 0x2

    .line 51
    if-nez p2, :cond_8

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string p5, "joinLocalNetBattleRoomSuccess"

    .line 58
    .line 59
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string p5, "inviteBattleShareSuccess"

    .line 71
    .line 72
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    const/4 p2, 0x1

    .line 79
    if-ne p4, p2, :cond_1

    .line 80
    .line 81
    const-string p2, "weixin"

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    const-string p2, "qq"

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const/4 p2, 0x7

    .line 88
    if-ne p4, p2, :cond_3

    .line 89
    .line 90
    const-string p2, "netMatch"

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    if-ne p4, p3, :cond_4

    .line 94
    .line 95
    const-string p2, "inviteMatch"

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const/4 p2, 0x3

    .line 99
    const-string p3, "local"

    .line 100
    .line 101
    if-ne p4, p2, :cond_6

    .line 102
    .line 103
    :cond_5
    move-object p2, p3

    .line 104
    goto :goto_2

    .line 105
    :cond_6
    const/16 p2, 0x9

    .line 106
    .line 107
    if-ne p4, p2, :cond_7

    .line 108
    .line 109
    const-string p2, "multiBattle"

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    const/16 p2, 0xa

    .line 113
    .line 114
    if-ne p4, p2, :cond_5

    .line 115
    .line 116
    const-string p2, "fastStart"

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_8
    :goto_1
    if-ne p4, p3, :cond_9

    .line 120
    .line 121
    const-string p2, "qrcode"

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_9
    const-string p2, "default"

    .line 125
    .line 126
    :goto_2
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/Ext;->setMode(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 142
    .line 143
    .line 144
    new-instance p2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 145
    .line 146
    invoke-direct {p2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance p3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide p4

    .line 165
    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p4, ""

    .line 169
    .line 170
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 190
    .line 191
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance p3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 204
    .line 205
    .line 206
    move-result p5

    .line 207
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 232
    .line 233
    invoke-virtual {p3, p2}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 234
    .line 235
    .line 236
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-virtual {p3, p1, p2}, Ly7/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 251
    .line 252
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/s;->t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :catch_1
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    .line 259
    .line 260
    :goto_3
    return-void
.end method

.method public M(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIIILjava/lang/String;)V
    .locals 8

    move-object v1, p7

    move/from16 v2, p10

    .line 1
    new-instance v3, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v3}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const-string v4, ""

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    .line 9
    new-instance v5, Lcom/papa/sim/statistic/Data;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Data;-><init>()V

    move-object v6, p2

    .line 10
    :try_start_1
    invoke-virtual {v5, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 11
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    move-wide/from16 v6, p8

    .line 12
    invoke-virtual {v0, v6, v7}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    move-wide v6, p4

    .line 13
    invoke-virtual {v0, p4, p5}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    move v1, p6

    .line 14
    invoke-virtual {v0, p6}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const/16 v1, 0x65

    if-ne v2, v1, :cond_2

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    :cond_2
    move/from16 v1, p12

    .line 18
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-object/from16 v1, p13

    .line 19
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setDataFlag(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 21
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    move-object v1, p0

    .line 22
    invoke-direct {p0, v3}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public N(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIIILjava/lang/String;)V
    .locals 8

    move-object v1, p7

    move/from16 v2, p11

    .line 1
    new-instance v3, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v3}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const-string v4, ""

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    .line 9
    new-instance v5, Lcom/papa/sim/statistic/Data;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Data;-><init>()V

    move-object v6, p2

    .line 10
    :try_start_1
    invoke-virtual {v5, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 11
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    move-wide/from16 v6, p9

    .line 12
    invoke-virtual {v0, v6, v7}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    move-object/from16 v1, p8

    .line 13
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-object v1, p3

    .line 14
    invoke-virtual {v5, p3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    move-wide v6, p4

    .line 15
    invoke-virtual {v0, p4, p5}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    move v1, p6

    .line 16
    invoke-virtual {v0, p6}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const/16 v1, 0x65

    if-ne v2, v1, :cond_2

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    :cond_2
    move/from16 v1, p13

    .line 19
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-object/from16 v1, p14

    .line 20
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setDataFlag(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 22
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    move-object v1, p0

    .line 23
    invoke-direct {p0, v3}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public O(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p4}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 21
    .line 22
    .line 23
    if-nez p3, :cond_0

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 59
    .line 60
    .line 61
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 62
    .line 63
    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    :catch_1
    invoke-virtual {p4}, Lcom/papa/sim/statistic/Ext;->getKeyWord()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method P(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    nop

    .line 29
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v2, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_6

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v2, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v2, Lcom/papa/sim/statistic/Event;->plugEfficiency:Lcom/papa/sim/statistic/Event;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object v1, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_1
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 97
    .line 98
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 99
    .line 100
    .line 101
    if-eqz p3, :cond_2

    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    :cond_2
    const-string p3, "0"

    .line 110
    .line 111
    :cond_3
    :try_start_1
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception p3

    .line 116
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :goto_1
    if-eqz p4, :cond_4

    .line 120
    .line 121
    const-string p3, ""

    .line 122
    .line 123
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-nez p3, :cond_4

    .line 128
    .line 129
    :try_start_2
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result p4

    .line 144
    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catch_2
    move-exception p3

    .line 149
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_5
    :goto_3
    :try_start_3
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 160
    .line 161
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 162
    .line 163
    .line 164
    :try_start_4
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 168
    .line 169
    .line 170
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :catch_3
    move-exception p2

    .line 179
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :goto_4
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 183
    .line 184
    .line 185
    goto :goto_6

    .line 186
    :catch_4
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :try_start_6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 207
    .line 208
    .line 209
    :catch_5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 214
    .line 215
    .line 216
    :goto_6
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public Q(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JI)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    if-nez p8, :cond_0

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-virtual {p8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    :cond_0
    :try_start_0
    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 58
    .line 59
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 63
    .line 64
    .line 65
    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    :catch_1
    invoke-virtual {p1, p9, p10}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p4}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p5, p6}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p7}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p11}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public R(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p6

    .line 10
    invoke-virtual {v0, p6}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    .line 16
    move-result-object p6

    .line 17
    invoke-virtual {p6, p2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, p5}, Lcom/papa/sim/statistic/Ext;->setModule(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 42
    .line 43
    invoke-direct {p2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide p4

    .line 62
    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p4, ""

    .line 66
    .line 67
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance p3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 101
    .line 102
    .line 103
    move-result p5

    .line 104
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 129
    .line 130
    invoke-virtual {p3, p2}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 131
    .line 132
    .line 133
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p3, p1, p2}, Ly7/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/s;->t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_1
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    :goto_0
    return-void
.end method

.method S(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setNew(Z)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method T(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setRequest(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method U(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setNew(Z)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    invoke-virtual {v1, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p3

    .line 46
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    new-instance p3, Lcom/papa/sim/statistic/Data;

    .line 50
    .line 51
    invoke-direct {p3}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "0"

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    :cond_2
    move-object p2, v1

    .line 65
    :cond_3
    :try_start_1
    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_1
    invoke-virtual {p3, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 73
    .line 74
    .line 75
    :try_start_2
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_2
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_2
    return-void
.end method

.method W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 69
    .line 70
    .line 71
    :try_start_1
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_1
    return-void
.end method

.method X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p3}, Lcom/papa/sim/statistic/Ext;->setBtn(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 72
    .line 73
    .line 74
    :try_start_1
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void
.end method

.method Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    :cond_2
    const-string p3, "0"

    .line 67
    .line 68
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p4}, Lcom/papa/sim/statistic/Ext;->setBtn(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p5}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p6}, Lcom/papa/sim/statistic/Ext;->setPicName(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 91
    .line 92
    .line 93
    :try_start_1
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void
.end method

.method public a0(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/StatisticTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "sendAllPlugPlayData: "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, v1}, Lcom/papa/sim/statistic/s;->h(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)Lcom/papa/sim/statistic/StatRequest;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/papa/sim/statistic/t;->n()Lcom/papa/sim/statistic/j;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2, p1}, Lcom/papa/sim/statistic/j;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/papa/sim/statistic/t;->n()Lcom/papa/sim/statistic/j;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v3, p1}, Lcom/papa/sim/statistic/j;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    :catch_0
    :cond_1
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-lez v0, :cond_3

    .line 110
    .line 111
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    sget-object v2, Lcom/papa/sim/statistic/s;->p:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, "/simulator/simulator_play_game_log"

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lcom/papa/sim/statistic/StatRequest;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    new-instance v4, Lcom/papa/sim/statistic/s$f;

    .line 150
    .line 151
    invoke-direct {v4, p0, p2}, Lcom/papa/sim/statistic/s$f;-><init>(Lcom/papa/sim/statistic/s;Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    move-object v1, p1

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/http/c;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    return-void
.end method

.method public b0(Lcom/papa/sim/statistic/StatDataCenterReq;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/papa/sim/statistic/s;->n(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setNettype(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/papa/sim/statistic/s;->k(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setCarrier(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->getDid()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/papa/sim/statistic/s;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "-1"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    new-instance v2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 57
    .line 58
    invoke-direct {v2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->getEvent()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->getGame_time()J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/db/StatisticTable;->setIsdirect(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->getEvent()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, p1, v1}, Ly7/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-nez p1, :cond_0

    .line 112
    .line 113
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    :catch_0
    :cond_0
    return-void
.end method

.method public c0(Lcom/papa/sim/statistic/db/BossTable;)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "_"

    .line 4
    .line 5
    const-string v2, ":"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/BossTable;->getType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    sget-object v5, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/BossTable;->getArgs1()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-class v7, Lcom/papa/sim/statistic/EmuErrorDto;

    .line 34
    .line 35
    invoke-virtual {v4, v6, v7}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/papa/sim/statistic/EmuErrorDto;

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    return v3

    .line 44
    :cond_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 45
    .line 46
    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    .line 50
    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    sget-object v9, Lcom/papa/sim/statistic/s;->m:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v9, "/add/commitpluginerrorinfo"

    .line 62
    .line 63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v8, "Content-Type"

    .line 74
    .line 75
    const-string v9, "application/json"

    .line 76
    .line 77
    invoke-virtual {v7, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v8, v1, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v8}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 83
    .line 84
    .line 85
    iget-object v8, v1, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v8}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v8}, Lcom/papa/sim/statistic/u;->b()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    iget-object v9, v1, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v9}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v9}, Lcom/papa/sim/statistic/u;->g()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    iget-object v10, v1, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    const-string v11, "wifi"

    .line 112
    .line 113
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 118
    .line 119
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v10
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const-string v11, ""

    .line 124
    .line 125
    if-eqz v8, :cond_1

    .line 126
    .line 127
    :try_start_1
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-eqz v12, :cond_2

    .line 132
    .line 133
    :cond_1
    invoke-static {v9}, Lcom/papa/sim/statistic/l;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    :cond_2
    move-object v14, v8

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v12, "gzRN53VWRF9BYUXomg2014"

    .line 147
    .line 148
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-static {v8}, Lcom/papa/sim/statistic/l;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v16

    .line 159
    iget-object v8, v1, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {v8}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-virtual {v8}, Lcom/papa/sim/statistic/u;->r()[Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v4, v12}, Lcom/papa/sim/statistic/EmuErrorDto;->setModel(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v4, v9}, Lcom/papa/sim/statistic/EmuErrorDto;->setMac(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    invoke-direct {v1, v9}, Lcom/papa/sim/statistic/s;->p(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-virtual {v4, v9}, Lcom/papa/sim/statistic/EmuErrorDto;->setIp(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/BossTable;->getTime()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v12

    .line 205
    const-wide/16 v17, 0x3e8

    .line 206
    .line 207
    div-long v12, v12, v17

    .line 208
    .line 209
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-virtual {v4, v9}, Lcom/papa/sim/statistic/EmuErrorDto;->setTimes(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v9, Lcom/papa/sim/statistic/ErrorRequestBean;

    .line 223
    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    aget-object v11, v8, v3

    .line 230
    .line 231
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    aget-object v0, v8, v5

    .line 238
    .line 239
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v13

    .line 246
    const-string v15, "add"

    .line 247
    .line 248
    new-instance v0, Lcom/papa/sim/statistic/ErrorRequestMessage;

    .line 249
    .line 250
    const-string v8, "commitPluginErrorInfo"

    .line 251
    .line 252
    invoke-direct {v0, v8, v4}, Lcom/papa/sim/statistic/ErrorRequestMessage;-><init>(Ljava/lang/String;Lcom/papa/sim/statistic/EmuErrorDto;)V

    .line 253
    .line 254
    .line 255
    move-object v12, v9

    .line 256
    move-object/from16 v17, v0

    .line 257
    .line 258
    invoke-direct/range {v12 .. v17}, Lcom/papa/sim/statistic/ErrorRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/ErrorRequestMessage;)V

    .line 259
    .line 260
    .line 261
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v8, "paramsJson="

    .line 275
    .line 276
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    .line 283
    .line 284
    invoke-direct {v4, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 288
    .line 289
    .line 290
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    const/16 v6, 0xc8

    .line 303
    .line 304
    if-ne v4, v6, :cond_3

    .line 305
    .line 306
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    const-class v6, Lcom/papa/sim/statistic/ResultMainBean;

    .line 319
    .line 320
    invoke-virtual {v4, v0, v6}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Lcom/papa/sim/statistic/ResultMainBean;

    .line 325
    .line 326
    if-eqz v0, :cond_3

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/papa/sim/statistic/ResultMainBean;->getFlag()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    .line 330
    .line 331
    :cond_3
    return v5

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    .line 335
    .line 336
    goto :goto_0

    .line 337
    :catch_1
    move-exception v0

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    :goto_0
    return v3
.end method

.method public d0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    sget-object p3, Lcom/papa/sim/statistic/t;->h:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 41
    .line 42
    invoke-direct {p2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ""

    .line 65
    .line 66
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance p3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 128
    .line 129
    invoke-virtual {p3, p2}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 130
    .line 131
    .line 132
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p3, p1, p2}, Ly7/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 147
    .line 148
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/s;->t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catch_1
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :goto_0
    return-void
.end method

.method public e0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    nop

    .line 40
    :goto_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 48
    .line 49
    invoke-direct {p2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p4, ""

    .line 72
    .line 73
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 84
    .line 85
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    if-eqz p5, :cond_0

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p5}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 134
    .line 135
    .line 136
    :cond_0
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 148
    .line 149
    invoke-virtual {p3, p2}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 150
    .line 151
    .line 152
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p3, p1, p2}, Ly7/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/s;->t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catch_1
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    :goto_1
    return-void
.end method

.method f0(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 17
    .line 18
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    nop

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getWhere()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-nez p3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getWhere()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 59
    .line 60
    .line 61
    :try_start_1
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 17
    .line 18
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method h0(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public i(Lcom/papa/sim/statistic/StatRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ly7/a;->delete(I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "\u53d1\u9001\u6210\u529f\u4e4b\u540e\u5220\u9664\u6570\u636e deleStat "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method i0(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setNew(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method j0(Lcom/papa/sim/statistic/StatRequest;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public k(Landroid/content/Context;)I
    .locals 2

    .line 1
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const-string v1, "46000"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    const-string v1, "46002"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v1, "46001"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x3

    .line 43
    return p1

    .line 44
    :cond_2
    const-string v1, "46003"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_3
    return v0

    .line 55
    :cond_4
    :goto_0
    const/4 p1, 0x2

    .line 56
    return p1
.end method

.method k0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string v5, ""

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/s;->n0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method l0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILcom/papa/sim/statistic/Ext;)V
    .locals 7

    .line 1
    const-string v5, ""

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v4, p4

    .line 8
    move-object v6, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/s;->n0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method m0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILcom/papa/sim/statistic/StatRequest;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p5, v0}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p5, v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p4}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    if-eqz p4, :cond_0

    .line 37
    .line 38
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p5, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameList(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p5}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    new-instance p4, Lcom/papa/sim/statistic/Data;

    .line 68
    .line 69
    invoke-direct {p4}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v1, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_b

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v1, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_1
    if-eqz p3, :cond_2

    .line 107
    .line 108
    const-string v0, ""

    .line 109
    .line 110
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_2

    .line 115
    .line 116
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {p5, v0}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_1
    move-exception p3

    .line 136
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    if-nez p3, :cond_a

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    sget-object v0, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccess:Lcom/papa/sim/statistic/Event;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    if-nez p3, :cond_a

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    if-nez p3, :cond_a

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleStartBtn:Lcom/papa/sim/statistic/Event;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    if-nez p3, :cond_a

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    sget-object v1, Lcom/papa/sim/statistic/Event;->createLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p3

    .line 217
    if-nez p3, :cond_a

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    sget-object v1, Lcom/papa/sim/statistic/Event;->joinLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p3

    .line 233
    if-nez p3, :cond_a

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p3

    .line 239
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickCreateLocalNetBattleRoomBtn:Lcom/papa/sim/statistic/Event;

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p3

    .line 249
    if-nez p3, :cond_a

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleJoinRoomBtn:Lcom/papa/sim/statistic/Event;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result p3

    .line 265
    if-nez p3, :cond_a

    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleRoomStartBtn:Lcom/papa/sim/statistic/Event;

    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p3

    .line 281
    if-nez p3, :cond_a

    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    sget-object v1, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result p3

    .line 297
    if-nez p3, :cond_a

    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p3

    .line 311
    if-nez p3, :cond_a

    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p3

    .line 317
    sget-object v0, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result p3

    .line 327
    if-nez p3, :cond_a

    .line 328
    .line 329
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p3

    .line 333
    sget-object v0, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p3

    .line 343
    if-nez p3, :cond_a

    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p3

    .line 349
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result p3

    .line 359
    if-nez p3, :cond_a

    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p3

    .line 365
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRemove:Lcom/papa/sim/statistic/Event;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result p3

    .line 375
    if-nez p3, :cond_a

    .line 376
    .line 377
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p3

    .line 381
    sget-object v0, Lcom/papa/sim/statistic/Event;->downloadStop:Lcom/papa/sim/statistic/Event;

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result p3

    .line 391
    if-nez p3, :cond_a

    .line 392
    .line 393
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p3

    .line 397
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRemove1:Lcom/papa/sim/statistic/Event;

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result p3

    .line 407
    if-nez p3, :cond_a

    .line 408
    .line 409
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p3

    .line 413
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRemove2:Lcom/papa/sim/statistic/Event;

    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result p3

    .line 423
    if-nez p3, :cond_a

    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p3

    .line 429
    sget-object v0, Lcom/papa/sim/statistic/Event;->unzipFailed:Lcom/papa/sim/statistic/Event;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result p3

    .line 439
    if-nez p3, :cond_a

    .line 440
    .line 441
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p3

    .line 445
    sget-object v0, Lcom/papa/sim/statistic/Event;->unzipIndexFailed:Lcom/papa/sim/statistic/Event;

    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result p3

    .line 455
    if-nez p3, :cond_a

    .line 456
    .line 457
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p3

    .line 461
    sget-object v0, Lcom/papa/sim/statistic/Event;->unzipIOFailed:Lcom/papa/sim/statistic/Event;

    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result p3

    .line 471
    if-nez p3, :cond_a

    .line 472
    .line 473
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p3

    .line 477
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    .line 478
    .line 479
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result p3

    .line 487
    if-nez p3, :cond_a

    .line 488
    .line 489
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p3

    .line 493
    sget-object v0, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    .line 494
    .line 495
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result p3

    .line 503
    if-nez p3, :cond_a

    .line 504
    .line 505
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p3

    .line 509
    sget-object v0, Lcom/papa/sim/statistic/Event;->netMatchBtnClick:Lcom/papa/sim/statistic/Event;

    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result p3

    .line 519
    if-nez p3, :cond_a

    .line 520
    .line 521
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p3

    .line 525
    sget-object v0, Lcom/papa/sim/statistic/Event;->inviteBattleAutoJoinSuccess:Lcom/papa/sim/statistic/Event;

    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result p3

    .line 535
    if-nez p3, :cond_a

    .line 536
    .line 537
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object p3

    .line 541
    sget-object v0, Lcom/papa/sim/statistic/Event;->VMGameStart:Lcom/papa/sim/statistic/Event;

    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result p3

    .line 551
    if-nez p3, :cond_a

    .line 552
    .line 553
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p3

    .line 557
    sget-object v0, Lcom/papa/sim/statistic/Event;->VMGameStartAfterStatus:Lcom/papa/sim/statistic/Event;

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result p3

    .line 567
    if-eqz p3, :cond_3

    .line 568
    .line 569
    goto/16 :goto_3

    .line 570
    .line 571
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object p3

    .line 575
    sget-object v0, Lcom/papa/sim/statistic/Event;->appUseTime:Lcom/papa/sim/statistic/Event;

    .line 576
    .line 577
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result p3

    .line 585
    if-eqz p3, :cond_4

    .line 586
    .line 587
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_5

    .line 591
    .line 592
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object p3

    .line 596
    sget-object v0, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result p3

    .line 606
    if-eqz p3, :cond_5

    .line 607
    .line 608
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_5

    .line 612
    .line 613
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p3

    .line 617
    sget-object v0, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    .line 618
    .line 619
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result p3

    .line 627
    if-nez p3, :cond_9

    .line 628
    .line 629
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object p3

    .line 633
    sget-object v0, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    .line 634
    .line 635
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result p3

    .line 643
    if-eqz p3, :cond_6

    .line 644
    .line 645
    goto :goto_2

    .line 646
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object p3

    .line 650
    sget-object v0, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    .line 651
    .line 652
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result p3

    .line 660
    if-nez p3, :cond_8

    .line 661
    .line 662
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object p3

    .line 666
    sget-object v0, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    .line 667
    .line 668
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result p3

    .line 676
    if-eqz p3, :cond_7

    .line 677
    .line 678
    goto :goto_1

    .line 679
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    sget-object p3, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    .line 684
    .line 685
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object p3

    .line 689
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result p1

    .line 693
    if-eqz p1, :cond_c

    .line 694
    .line 695
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 696
    .line 697
    .line 698
    move-result-object p1

    .line 699
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    goto :goto_5

    .line 703
    :cond_8
    :goto_1
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    move-result p1

    .line 707
    invoke-virtual {p4, p1}, Lcom/papa/sim/statistic/Data;->setPlugId(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 708
    .line 709
    .line 710
    goto :goto_5

    .line 711
    :cond_9
    :goto_2
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    goto :goto_5

    .line 715
    :cond_a
    :goto_3
    :try_start_3
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 716
    .line 717
    .line 718
    goto :goto_5

    .line 719
    :catch_2
    const-string p1, "0"

    .line 720
    .line 721
    invoke-virtual {p4, p1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 722
    .line 723
    .line 724
    goto :goto_5

    .line 725
    :cond_b
    :goto_4
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 726
    .line 727
    .line 728
    invoke-virtual {p4, p3}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    :catch_3
    :cond_c
    :goto_5
    invoke-virtual {p5, p4}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 732
    .line 733
    .line 734
    invoke-direct {p0, p5}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 735
    .line 736
    .line 737
    return-void
.end method

.method public n(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_6

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v0, 0x4

    .line 35
    if-eq p1, v0, :cond_5

    .line 36
    .line 37
    if-eq p1, v1, :cond_5

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v0, 0x3

    .line 44
    if-eq p1, v0, :cond_4

    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    if-eq p1, v0, :cond_4

    .line 49
    .line 50
    const/4 v0, 0x6

    .line 51
    if-eq p1, v0, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    if-eq p1, v0, :cond_4

    .line 55
    .line 56
    const/16 v0, 0xc

    .line 57
    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/16 v0, 0xd

    .line 62
    .line 63
    if-ne p1, v0, :cond_6

    .line 64
    .line 65
    const-string p1, "4g"

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    :goto_0
    const-string p1, "3g"

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    :goto_1
    const-string p1, "2g"

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_6
    :goto_2
    const-string p1, "wifi"

    .line 75
    .line 76
    :goto_3
    return-object p1
.end method

.method n0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 8

    .line 1
    const-string v5, ""

    .line 2
    .line 3
    const-string v6, ""

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move v4, p4

    .line 10
    move-object v7, p6

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/papa/sim/statistic/s;->o0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public o(Landroid/content/Context;)I
    .locals 2

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v1, v0, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    return p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    return p1

    .line 32
    :cond_1
    return v0
.end method

.method o0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/papa/sim/statistic/Ext;->setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p6

    invoke-virtual {p6, p4}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/papa/sim/statistic/Ext;->setDataFlag(Ljava/lang/String;)V

    if-eqz p7, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p4

    invoke-virtual {p0, p4, p7}, Lcom/papa/sim/statistic/s;->v0(Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Ext;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 9
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 11
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameList(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void

    .line 13
    :cond_1
    new-instance p4, Lcom/papa/sim/statistic/Data;

    invoke-direct {p4}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    sget-object p6, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_c

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    sget-object p6, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz p3, :cond_3

    const-string p5, ""

    .line 15
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    .line 16
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {v0, p5}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 17
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p5, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 18
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p6, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p6, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleStartBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p6, Lcom/papa/sim/statistic/Event;->createLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p6, Lcom/papa/sim/statistic/Event;->joinLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p6, Lcom/papa/sim/statistic/Event;->clickCreateLocalNetBattleRoomBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p6, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleJoinRoomBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p6, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleRoomStartBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p6, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->gameRemove:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->downloadStop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->gameRemove1:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->gameRemove2:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->unzipFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->unzipIndexFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->unzipIOFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->netMatchBtnClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->inviteBattleAutoJoinSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->VMGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->VMGameStartAfterStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto/16 :goto_3

    .line 21
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->appUseTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 22
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 23
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 24
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 25
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_1

    .line 27
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 28
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    goto :goto_5

    .line 29
    :cond_9
    :goto_1
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/papa/sim/statistic/Data;->setPlugId(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    .line 30
    :cond_a
    :goto_2
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto :goto_5

    .line 31
    :cond_b
    :goto_3
    :try_start_3
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    const-string p1, "0"

    .line 32
    invoke-virtual {p4, p1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    goto :goto_5

    .line 33
    :cond_c
    :goto_4
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 34
    invoke-virtual {p4, p3}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 35
    :catch_3
    :cond_d
    :goto_5
    invoke-virtual {v0, p4}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 36
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public p0(Lcom/papa/sim/statistic/s$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    .line 2
    .line 3
    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/s;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/s;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public r0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/s;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/s;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public s0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/s;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/s;->g()V

    .line 2
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->s()Z

    move-result v0

    if-nez v0, :cond_13

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/s;->h(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)Lcom/papa/sim/statistic/StatRequest;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] method offline() statRequest .id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";isdirect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lcom/papa/sim/statistic/s;->b:Z

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setDebug(Z)V

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    invoke-interface {v2}, Lcom/papa/sim/statistic/s$g;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setPageVersion(I)V

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getEmuCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-static {}, Lcom/papa/sim/statistic/u;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setEmuCount(Ljava/lang/String;)V

    .line 13
    :cond_4
    :try_start_0
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa/sim/statistic/s;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/netbattle/performance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/Ext;->getLogFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 17
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v0

    new-instance v3, Lcom/papa/sim/statistic/s$a;

    invoke-direct {v3, p0, p1, p2}, Lcom/papa/sim/statistic/s$a;-><init>(Lcom/papa/sim/statistic/s;Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/http/c;->d(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/a;)V

    goto/16 :goto_3

    .line 18
    :cond_5
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->plugEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa/sim/statistic/s;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/plug_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v7

    new-instance v8, Lcom/papa/sim/statistic/s$b;

    invoke-direct {v8, p0, p2}, Lcom/papa/sim/statistic/s$b;-><init>(Lcom/papa/sim/statistic/s;Lcom/papa/sim/statistic/db/StatisticTable;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/papa/sim/statistic/http/c;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/papa/sim/statistic/http/a;)V

    goto/16 :goto_3

    .line 20
    :cond_6
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa/sim/statistic/s;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/simulator/simulator_play_game_log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/papa/sim/statistic/s$c;

    invoke-direct {v6, p0, p2}, Lcom/papa/sim/statistic/s$c;-><init>(Lcom/papa/sim/statistic/s;Lcom/papa/sim/statistic/db/StatisticTable;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/http/c;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;Ljava/util/List;)V

    goto/16 :goto_3

    .line 24
    :cond_7
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_9

    .line 25
    :cond_8
    :try_start_1
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/t;->n()Lcom/papa/sim/statistic/j;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/papa/sim/statistic/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 26
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/t;->n()Lcom/papa/sim/statistic/j;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/papa/sim/statistic/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    :catch_0
    :cond_9
    :try_start_2
    iget-boolean v1, p0, Lcom/papa/sim/statistic/s;->b:Z

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 28
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 29
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 30
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->userLogin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->welcomePageShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->clickFastLoginButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->quickLoginResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->clickOtherLogin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->otherLoginPageShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 31
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->tokenLoginResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->clickThirdpartyLogin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->thirdPartyLoginSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->loginAuthPageShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->accountLoginSubmit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->accountLoginSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 32
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->accountRegisterShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->accountRegisterSubmit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->accountRegistertSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->VMGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->VMGameStartAfterStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gamePlayTimes:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    invoke-virtual {p1}, Ly7/a;->g()V

    .line 34
    iget-object p1, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    invoke-virtual {p1}, Ly7/a;->k()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0xa

    if-lt p2, v0, :cond_13

    .line 36
    iget-boolean p2, p0, Lcom/papa/sim/statistic/s;->g:Z

    if-eqz p2, :cond_b

    return-void

    :cond_b
    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/papa/sim/statistic/s;->g:Z

    .line 38
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/s;->Z(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    .line 39
    :cond_c
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Position= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_d
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    if-eqz v1, :cond_e

    .line 42
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    invoke-interface {v2}, Lcom/papa/sim/statistic/s$g;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setClearStatus(I)V

    .line 43
    :cond_e
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 44
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 45
    :cond_f
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getEmuCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 46
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-static {}, Lcom/papa/sim/statistic/u;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setEmuCount(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 47
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :cond_10
    :goto_1
    iget-object v1, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    if-eqz v1, :cond_11

    .line 49
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/s;->e:Lcom/papa/sim/statistic/s$g;

    invoke-interface {v2}, Lcom/papa/sim/statistic/s$g;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setPageVersion(I)V

    .line 50
    :cond_11
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-boolean v2, p0, Lcom/papa/sim/statistic/s;->b:Z

    if-eqz v2, :cond_12

    .line 52
    iget-object v2, p0, Lcom/papa/sim/statistic/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/papa/sim/statistic/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_12
    :try_start_5
    const-string v0, ""

    .line 53
    invoke-static {v1, v0}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 54
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const-string v0, "/data/v3"

    .line 55
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/papa/sim/statistic/s;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/papa/sim/statistic/s$d;

    invoke-direct {v3, p0, p2, p1}, Lcom/papa/sim/statistic/s$d;-><init>(Lcom/papa/sim/statistic/s;Lcom/papa/sim/statistic/db/StatisticTable;Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/papa/sim/statistic/http/c;->g(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_3
    return-void
.end method

.method public t0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/s;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public u(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/StatisticTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/papa/sim/statistic/s;->Z(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public u0(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/papa/sim/statistic/n;->a(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public v0(Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Ext;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getFirstModule()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFirstModule(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getSecondModule()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setSecondModule(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getCollectId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setCollectId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getResultCode()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getTypeCode()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setTypeCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getRecScene()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setRecScene(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getPosition()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getTag_ids()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setTag_ids(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getGameId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getSopName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setSopName(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getPapaPage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPapaPage(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getSopNo()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setSopNo(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getChatId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setChatId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getResourceId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setResourceId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getReMarks()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getScenesCode()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/papa/sim/statistic/Ext;->getGuideKey()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGuideKey(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method w(Lcom/papa/sim/statistic/Event;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setPlugId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const-string p2, "0"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;ILjava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :try_start_0
    invoke-virtual {v1, p4}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p5}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    iget-object p5, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0, p5}, Lcom/papa/sim/statistic/s;->o(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result p5

    .line 26
    invoke-virtual {v1, p5}, Lcom/papa/sim/statistic/Ext;->setNetType(I)V

    .line 27
    .line 28
    .line 29
    new-instance p5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setBtn(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    .line 54
    new-instance p2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 55
    .line 56
    invoke-direct {p2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide p4

    .line 75
    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p4, ""

    .line 79
    .line 80
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance p3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 114
    .line 115
    .line 116
    move-result p5

    .line 117
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 142
    .line 143
    invoke-virtual {p3, p2}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 144
    .line 145
    .line 146
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p3, p1, p2}, Ly7/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object p2, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 161
    .line 162
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/s;->t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :catch_1
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :goto_0
    return-void
.end method

.method public y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :try_start_0
    invoke-virtual {v1, p3}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    iget-object p4, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0, p4}, Lcom/papa/sim/statistic/s;->o(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setNetType(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setBtn(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/Ext;->setMode(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Lcom/papa/sim/statistic/Ext;->getUid()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 51
    .line 52
    invoke-direct {p2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p4, ""

    .line 75
    .line 76
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {p3}, Lcom/papa/sim/statistic/m;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance p3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 138
    .line 139
    invoke-virtual {p3, p2}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 140
    .line 141
    .line 142
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/s;->c:Ly7/a;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p3, p1, p2}, Ly7/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/papa/sim/statistic/s;->d:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/s;->t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :catch_1
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    :goto_0
    return-void
.end method

.method z(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/s;->w0(Lcom/papa/sim/statistic/StatRequest;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
