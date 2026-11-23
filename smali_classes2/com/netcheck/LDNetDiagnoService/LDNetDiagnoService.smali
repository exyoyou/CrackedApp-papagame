.class public Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;
.super Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;
.source "SourceFile"

# interfaces
.implements Lcom/netcheck/LDNetDiagnoService/a$a;
.implements Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;
.implements Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/netcheck/LDNetDiagnoService/a$a;",
        "Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;",
        "Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;"
    }
.end annotation


# static fields
.field private static final L:I = 0x1

.field private static final M:I = 0x1

.field private static final N:I = 0xa

.field private static final O:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final P:Ljava/util/concurrent/ThreadFactory;

.field private static Q:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/utils/TraceRouterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Ljava/lang/StringBuilder;

.field private D:Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

.field private E:Lcom/netcheck/LDNetDiagnoService/a;

.field private F:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

.field private G:Z

.field private H:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoListener;

.field private I:Z

.field private J:Z

.field private K:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/content/Context;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:[Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->O:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    new-instance v0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->P:Ljava/util/concurrent/ThreadFactory;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->Q:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->I:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->J:Z

    .line 5
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->K:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoListener;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->I:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->J:Z

    .line 10
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->K:I

    .line 11
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->t:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->h:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->i:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->j:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->k:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->l:Ljava/lang/String;

    .line 17
    iput-object p7, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->m:Ljava/lang/String;

    .line 18
    iput-object p8, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->n:Ljava/lang/String;

    .line 19
    iput-object p9, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->o:Ljava/lang/String;

    .line 20
    iput-object p10, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->p:Ljava/lang/String;

    .line 21
    iput-object p11, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->H:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoListener;

    .line 22
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->G:Z

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->A:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p3, 0x1

    const/4 p4, 0x1

    const-wide/16 p5, 0xa

    sget-object p7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object p8, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->O:Ljava/util/concurrent/BlockingQueue;

    sget-object p9, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->P:Ljava/util/concurrent/ThreadFactory;

    move-object p2, p1

    invoke-direct/range {p2 .. p9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object p1, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->Q:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private m(Ljava/lang/String;)Z
    .locals 14

    .line 1
    invoke-static {p1}, Lt7/a;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "useTime"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "remoteInet"

    .line 14
    .line 15
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [Ljava/net/InetAddress;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->z:[Ljava/net/InetAddress;

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v4, "s)"

    .line 28
    .line 29
    const-string v5, "ms)"

    .line 30
    .line 31
    const-string v6, " ("

    .line 32
    .line 33
    const/16 v7, 0x1388

    .line 34
    .line 35
    if-le v0, v7, :cond_0

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    div-int/lit16 v8, v8, 0x3e8

    .line 50
    .line 51
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_0
    iget-object v8, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->z:[Ljava/net/InetAddress;

    .line 81
    .line 82
    const-string v9, ","

    .line 83
    .line 84
    const/4 v10, 0x1

    .line 85
    const/4 v11, 0x0

    .line 86
    const-string v12, ""

    .line 87
    .line 88
    if-eqz v8, :cond_1

    .line 89
    .line 90
    array-length p1, v8

    .line 91
    :goto_1
    if-ge v11, p1, :cond_6

    .line 92
    .line 93
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->A:Ljava/util/List;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->z:[Ljava/net/InetAddress;

    .line 96
    .line 97
    aget-object v1, v1, v11

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->z:[Ljava/net/InetAddress;

    .line 115
    .line 116
    aget-object v1, v1, v11

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    add-int/lit8 v11, v11, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    const/16 v8, 0x2710

    .line 140
    .line 141
    const-string v13, "DNS\u89e3\u6790\u7ed3\u679c:\t\u89e3\u6790\u5931\u8d25"

    .line 142
    .line 143
    if-le v2, v8, :cond_5

    .line 144
    .line 145
    invoke-static {p1}, Lt7/a;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Ljava/lang/String;

    .line 154
    .line 155
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, [Ljava/net/InetAddress;

    .line 160
    .line 161
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->z:[Ljava/net/InetAddress;

    .line 162
    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-le p1, v7, :cond_2

    .line 168
    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    div-int/lit16 v0, v0, 0x3e8

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    goto :goto_2

    .line 194
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    :goto_2
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->z:[Ljava/net/InetAddress;

    .line 213
    .line 214
    if-eqz v0, :cond_4

    .line 215
    .line 216
    array-length v0, v0

    .line 217
    const/4 v1, 0x0

    .line 218
    :goto_3
    if-ge v1, v0, :cond_3

    .line 219
    .line 220
    iget-object v2, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->A:Ljava/util/List;

    .line 221
    .line 222
    iget-object v3, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->z:[Ljava/net/InetAddress;

    .line 223
    .line 224
    aget-object v3, v3, v1

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v3, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->z:[Ljava/net/InetAddress;

    .line 242
    .line 243
    aget-object v3, v3, v1

    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    add-int/lit8 v1, v1, 0x1

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    sub-int/2addr v0, v10

    .line 267
    invoke-virtual {v12, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v2, "DNS\u89e3\u6790\u7ed3\u679c:\t"

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-direct {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->o(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-direct {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->o(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-direct {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->o(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :goto_4
    const/4 v10, 0x0

    .line 333
    :cond_6
    :goto_5
    return v10
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->t:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lt7/a;->e(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->q:Z

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->q:Z

    .line 19
    .line 20
    :goto_0
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->q:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "WIFI"

    .line 25
    .line 26
    iget-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->u:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->q:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v0, "dns1"

    .line 36
    .line 37
    invoke-static {v0}, Lt7/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->x:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "dns2"

    .line 44
    .line 45
    invoke-static {v0}, Lt7/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->y:Ljava/lang/String;

    .line 50
    .line 51
    :cond_2
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->q:Z

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->l:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->m(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->r:Z

    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "\n"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    filled-new-array {p1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->i([Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 5
    .line 6
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    :try_start_1
    const-string v2, "GET"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x2710

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0xc8

    .line 33
    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lt7/a;->d(Ljava/io/InputStream;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_4

    .line 53
    :catch_0
    move-exception v2

    .line 54
    move-object v4, v1

    .line 55
    move-object v1, v0

    .line 56
    move-object v0, v4

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception v2

    .line 59
    move-object v4, v1

    .line 60
    move-object v1, v0

    .line 61
    move-object v0, v4

    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    move-object v4, v1

    .line 65
    move-object v1, v0

    .line 66
    move-object v0, v4

    .line 67
    goto :goto_4

    .line 68
    :catch_2
    move-exception v2

    .line 69
    move-object v0, v1

    .line 70
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :catch_3
    move-exception v2

    .line 80
    move-object v0, v1

    .line 81
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :goto_3
    return-object v0

    .line 88
    :goto_4
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91
    .line 92
    .line 93
    :cond_2
    throw v1
.end method


# virtual methods
.method public OnNetPingFinished(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->o(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public OnNetSocketFinished(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->i([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public OnNetSocketUpdated(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->i([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public OnNetTraceFinished()V
    .locals 0

    return-void
.end method

.method public OnNetTraceUpdated(Ljava/lang/String;Lcom/haima/hmcp/utils/TraceRouterInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->F:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->isCTrace:Z

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    const-string v0, "ms"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "***"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ";\n"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->B:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->i([Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-direct {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->o(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_0
    return-void
.end method

.method protected bridge synthetic b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->j([Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected d()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 1
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->Q:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method protected e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->stopNetDialogsis()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected bridge synthetic h([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->l([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method protected varargs j([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->isCancelled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->startNetDiagnosis()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method protected k(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->isCancelled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->stopNetDialogsis()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->H:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoListener;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->B:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoListener;->OnNetDiagnoFinished(Ljava/lang/String;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method protected varargs l([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->isCancelled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->h([Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->H:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoListener;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aget-object p1, p1, v1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoListener;->OnNetDiagnoUpdated(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public printLogInfo()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setIfUseJNICConn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->I:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIfUseJNICTrace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->J:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTraceTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->K:I

    .line 2
    .line 3
    return-void
.end method

.method public startNetDiagnosis()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->G:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->G:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->B:Ljava/util/List;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->n()V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->q:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->F:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->initListenter(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$a;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->F:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->J:Z

    .line 53
    .line 54
    iput-boolean v1, v0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->isCTrace:Z

    .line 55
    .line 56
    iget v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->K:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->setTraceTimes(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->F:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->l:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->startTraceRoute(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    :cond_2
    const-string v0, "\n\n\u5f53\u524d\u4e3b\u673a\u672a\u8054\u7f51,\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 76
    .line 77
    invoke-direct {p0, v0}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->o(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->C:Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public stopNetDialogsis()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->D:Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->h()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->D:Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->E:Lcom/netcheck/LDNetDiagnoService/a;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->E:Lcom/netcheck/LDNetDiagnoService/a;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->F:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;->resetInstance()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->F:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 29
    .line 30
    :cond_2
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->cancel(Z)Z

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->Q:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->Q:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->Q:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 50
    .line 51
    :cond_3
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->G:Z

    .line 53
    .line 54
    :cond_4
    return-void
.end method
