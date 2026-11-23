.class public Lcom/byazt/eq/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/u;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x27a,
        0x14
    }
.end annotation


# static fields
.field public static final DEVICE_OS_ANDROID_TYPE:I = 0x1

.field public static final MAIN_VERSION:I = 0x1db0

.field public static volatile c:Z

.field public static mIsNeedUpdateIp:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public volatile da:Ljava/lang/String;

.field public volatile gr:Ljava/lang/String;

.field public volatile gt:Ljava/lang/String;

.field public volatile gu:Ljava/lang/String;

.field public volatile i:Ljava/lang/String;

.field public volatile m:Ljava/lang/String;

.field public md:Lcom/byazt/lz/ve;

.field public volatile my:Ljava/lang/String;

.field public volatile n:Ljava/lang/String;

.field public volatile nu:Ljava/lang/String;

.field public p:Landroid/content/Context;

.field public qy:Ljava/lang/String;

.field public volatile rh:Ljava/lang/String;

.field public volatile rl:Ljava/lang/String;

.field public volatile sl:Ljava/lang/String;

.field public volatile sp:Ljava/lang/String;

.field public volatile t:Ljava/lang/String;

.field public volatile tt:Ljava/lang/String;

.field public volatile u:Ljava/lang/String;

.field public volatile uj:Ljava/lang/String;

.field public volatile ve:Ljava/lang/String;

.field public volatile x:Ljava/lang/String;

.field public volatile yp:Ljava/lang/String;

.field public yv:Lcom/byazt/fn/ve;

.field public volatile z:Ljava/lang/String;

.field public volatile zm:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/eq/c;->mIsNeedUpdateIp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/lz/ve;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/eq/c;->uj:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 11
    .line 12
    new-instance p1, Landroid/content/IntentFilter;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 33
    .line 34
    new-instance v0, Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;-><init>(Lcom/byazt/lz/ve;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2, v0, p1}, Lcom/byazt/bt/DeviceInfoUtils;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/byazt/bt/DeviceInfoUtils$c;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/byazt/bt/DeviceInfoUtils$c;-><init>(Lcom/byazt/lz/ve;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/byazt/eq/c;->yv:Lcom/byazt/fn/ve;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {p1, p2}, Lcom/byazt/bt/i;->c(Lcom/byazt/fn/ve;Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 p2, 0x1d

    .line 61
    .line 62
    if-lt p1, p2, :cond_0

    .line 63
    .line 64
    :try_start_0
    invoke-static {}, Lcom/byazt/nr/qy;->c()Z

    .line 65
    .line 66
    .line 67
    new-instance p1, Lcom/byazt/eq/tt;

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/byazt/eq/tt;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/byazt/bt/i;->c(Lcom/byazt/fn/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    :cond_0
    new-instance p1, Lcom/byazt/eq/c$1;

    .line 76
    .line 77
    invoke-direct {p1, p0}, Lcom/byazt/eq/c$1;-><init>(Lcom/byazt/eq/c;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lcom/byazt/bt/tt;->c(Lcom/byazt/bt/tt$c;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static synthetic c(Lcom/byazt/eq/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eq/c;->gu:Ljava/lang/String;

    return-object p1
.end method

.method private c()Z
    .locals 4

    .line 2
    sget-object v0, Lcom/byazt/eq/c;->mIsNeedUpdateIp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/byazt/eq/c;->zm:J

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Lcom/byazt/bt/DeviceInfoUtils;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/eq/c;->gu:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/lz/ve;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/lz/ve;->ve()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x1d4c

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private tt()Lcom/byazt/dna/p;
    .locals 1

    const-string v0, "device_info"

    .line 2
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/p;

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/eq/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eq/c;->gr:Ljava/lang/String;

    return-object p1
.end method

.method private uj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/lz/ve;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/lz/ve;->ve()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x1bbc

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private ve()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/lz/ve;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/lz/ve;->ve()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x1db0

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    :pswitch_0
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_1
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getUnlockTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_2
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getSimOperatorCode()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :pswitch_3
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getActiveSimOperatorStr()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getNetworkSignalType(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :pswitch_5
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getIpInfoMap(Z)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_6
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getScreenBright()F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :pswitch_7
    invoke-virtual {p0}, Lcom/byazt/eq/c;->isScreenOn()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :pswitch_8
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getEmuiInfo()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :pswitch_9
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    new-instance v0, Lcom/byazt/fn/uj;

    .line 99
    .line 100
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v0, p1}, Lcom/byazt/fn/uj;-><init>(Ljava/util/function/Function;)V

    .line 105
    .line 106
    .line 107
    move-object p1, v0

    .line 108
    :cond_0
    check-cast p1, Lcom/byazt/fn/ve;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->removeNetworkMonitor(Lcom/byazt/fn/ve;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :pswitch_a
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_1

    .line 120
    .line 121
    new-instance v0, Lcom/byazt/fn/uj;

    .line 122
    .line 123
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {v0, p1}, Lcom/byazt/fn/uj;-><init>(Ljava/util/function/Function;)V

    .line 128
    .line 129
    .line 130
    move-object p1, v0

    .line 131
    :cond_1
    check-cast p1, Lcom/byazt/fn/ve;

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->registerNetworkMonitor(Lcom/byazt/fn/ve;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Ljava/lang/Long;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/byazt/eq/c;->getRealNetworkType(J)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    :pswitch_c
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getSimOperator()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    return-object p1

    .line 162
    :pswitch_d
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getAsyncWifiMac()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :pswitch_e
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getMnc2()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :pswitch_f
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getMcc2()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    return-object p1

    .line 177
    :pswitch_10
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getScreenWidth()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    return-object p1

    .line 186
    :pswitch_11
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getScreenHeight()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    return-object p1

    .line 195
    :pswitch_12
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getDisplayDpi()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    return-object p1

    .line 204
    :pswitch_13
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getRomInfo()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    return-object p1

    .line 209
    :pswitch_14
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getImsi(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    return-object p1

    .line 220
    :pswitch_15
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getSSID(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    return-object p1

    .line 231
    :pswitch_16
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Ljava/lang/Boolean;

    .line 236
    .line 237
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    return-object p1

    .line 242
    :pswitch_17
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Ljava/lang/Boolean;

    .line 247
    .line 248
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getImei(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    return-object p1

    .line 253
    :pswitch_18
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Ljava/lang/Boolean;

    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getLocation(Z)Lcom/byazt/fn/c;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    if-eqz p1, :cond_2

    .line 268
    .line 269
    new-instance v0, Lcom/byazt/fn/tt;

    .line 270
    .line 271
    invoke-direct {v0, p1}, Lcom/byazt/fn/tt;-><init>(Lcom/byazt/fn/c;)V

    .line 272
    .line 273
    .line 274
    move-object p1, v0

    .line 275
    :cond_2
    return-object p1

    .line 276
    :pswitch_19
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Ljava/lang/Boolean;

    .line 281
    .line 282
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    return-object p1

    .line 287
    :pswitch_1a
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    check-cast p1, Ljava/lang/Boolean;

    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getNewIpAddrs(Z)[Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    return-object p1

    .line 302
    :pswitch_1b
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    check-cast p1, Ljava/lang/Boolean;

    .line 307
    .line 308
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getWebViewUA(Z)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    return-object p1

    .line 317
    :pswitch_1c
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    check-cast p1, Ljava/lang/Boolean;

    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->getDeviceType(Z)I

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    return-object p1

    .line 336
    :pswitch_1d
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getTimeZoneInt()I

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    return-object p1

    .line 345
    :pswitch_1e
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getRom()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    return-object p1

    .line 350
    :pswitch_1f
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getUserAgent()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    return-object p1

    .line 355
    :pswitch_20
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getBuildSerial()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    return-object p1

    .line 360
    :pswitch_21
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getCompilingTime()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    return-object p1

    .line 365
    :pswitch_22
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getCarrierName()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    return-object p1

    .line 370
    :pswitch_23
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getBoot()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    return-object p1

    .line 375
    :pswitch_24
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getVendor()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    return-object p1

    .line 380
    :pswitch_25
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getTimeZone()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    return-object p1

    .line 385
    :pswitch_26
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getOsVersion()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    return-object p1

    .line 390
    :pswitch_27
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getOs()I

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    return-object p1

    .line 399
    :pswitch_28
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getMnc()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    return-object p1

    .line 404
    :pswitch_29
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getMcc()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    return-object p1

    .line 409
    :pswitch_2a
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getLocalLanguage()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    return-object p1

    .line 414
    :pswitch_2b
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getLanguage()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    return-object p1

    .line 419
    :pswitch_2c
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getDeviceName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    return-object p1

    .line 424
    :pswitch_2d
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getDeviceModel()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    return-object p1

    .line 429
    :pswitch_2e
    invoke-virtual {p0}, Lcom/byazt/eq/c;->getAndroidId()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    return-object p1

    .line 434
    :pswitch_2f
    invoke-virtual {p0}, Lcom/byazt/eq/c;->release()V

    .line 435
    .line 436
    .line 437
    goto :goto_0

    .line 438
    :pswitch_30
    invoke-virtual {p0}, Lcom/byazt/eq/c;->ats_getAtsField()Landroid/util/SparseArray;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    return-object p1

    .line 443
    :pswitch_31
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    check-cast p1, Landroid/util/SparseArray;

    .line 448
    .line 449
    invoke-virtual {p0, p1}, Lcom/byazt/eq/c;->ats_setAtsField(Landroid/util/SparseArray;)V

    .line 450
    .line 451
    .line 452
    :goto_0
    const/4 p1, 0x0

    .line 453
    return-object p1

    .line 454
    nop

    .line 455
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public ats_getAtsField()Landroid/util/SparseArray;
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/byazt/eq/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/byazt/eq/c;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/byazt/eq/c;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/byazt/eq/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/byazt/eq/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/byazt/eq/c;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/byazt/eq/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/byazt/eq/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/byazt/eq/c;->da:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/byazt/eq/c;->sl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/byazt/eq/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/byazt/eq/c;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/byazt/eq/c;->yp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/byazt/eq/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/byazt/eq/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/byazt/eq/c;->nu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/byazt/eq/c;->rh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/byazt/eq/c;->my:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/byazt/eq/c;->gt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/byazt/eq/c;->rl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/byazt/eq/c;->qy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x19

    sget-object v2, Lcom/byazt/eq/c;->mIsNeedUpdateIp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/byazt/eq/c;->gu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/byazt/eq/c;->gr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v1, p0, Lcom/byazt/eq/c;->zm:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public ats_setAtsField(Landroid/util/SparseArray;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->tt:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->ve:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->uj:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->n:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->a:Ljava/lang/String;

    :cond_4
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->sp:Ljava/lang/String;

    :cond_5
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->x:Ljava/lang/String;

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->i:Ljava/lang/String;

    :cond_7
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->da:Ljava/lang/String;

    :cond_8
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->sl:Ljava/lang/String;

    :cond_9
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->t:Ljava/lang/String;

    :cond_a
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->u:Ljava/lang/String;

    :cond_b
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->yp:Ljava/lang/String;

    :cond_c
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->z:Ljava/lang/String;

    :cond_d
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->m:Ljava/lang/String;

    :cond_e
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->nu:Ljava/lang/String;

    :cond_f
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->rh:Ljava/lang/String;

    :cond_10
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->my:Ljava/lang/String;

    :cond_11
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->gt:Ljava/lang/String;

    :cond_12
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->rl:Ljava/lang/String;

    :cond_13
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->qy:Ljava/lang/String;

    :cond_14
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-object v0, Lcom/byazt/eq/c;->mIsNeedUpdateIp:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_15
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->gu:Ljava/lang/String;

    :cond_16
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eq/c;->gr:Ljava/lang/String;

    :cond_17
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_18

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/eq/c;->zm:J

    :cond_18
    return-void
.end method

.method public getActiveSimOperatorStr()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/bt/sp;->c(Landroid/content/Context;Lcom/byazt/dna/c;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getAndroidId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->tt:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/eq/c;->tt:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/byazt/lz/c;->isCanUseAndroidId()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/byazt/lz/c;->getAndroidId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :cond_2
    sget-boolean v0, Lcom/byazt/eq/c;->c:Z

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/byazt/eq/c;->tt:Ljava/lang/String;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    monitor-enter p0

    .line 60
    :try_start_0
    sget-boolean v0, Lcom/byazt/eq/c;->c:Z

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, p0, Lcom/byazt/eq/c;->tt:Ljava/lang/String;

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-object v0

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/byazt/bt/ve;->ve(Landroid/content/Context;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/byazt/eq/c;->tt:Ljava/lang/String;

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    sput-boolean v0, Lcom/byazt/eq/c;->c:Z

    .line 78
    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/byazt/eq/c;->tt:Ljava/lang/String;

    .line 81
    .line 82
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw v0
.end method

.method public getAsyncWifiMac()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/bt/ve;->tt(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getBoot()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    long-to-double v0, v0

    .line 11
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    div-double/2addr v0, v2

    .line 17
    :try_start_0
    new-instance v2, Ljava/util/Formatter;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "%.6f"

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v6, 0x0

    .line 32
    aput-object v5, v4, v6

    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    const-string v2, ""

    .line 44
    .line 45
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    :try_start_1
    new-instance v3, Ljava/text/DecimalFormat;

    .line 52
    .line 53
    const-string v4, "#0.000000"

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :catch_1
    :cond_0
    return-object v2
.end method

.method public getBuildSerial()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getBuildSerial()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->u:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/byazt/bt/ve;->c(Lcom/byazt/dna/c;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/byazt/eq/c;->u:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->u:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getCarrierName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->yp:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/byazt/bt/ve;->i(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/byazt/eq/c;->yp:Ljava/lang/String;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->yp:Ljava/lang/String;

    .line 41
    .line 42
    return-object v0
.end method

.method public getCompilingTime()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getCompilingTime()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->z:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-wide v0, Landroid/os/Build;->TIME:J

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/byazt/eq/c;->z:Ljava/lang/String;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->z:Ljava/lang/String;

    .line 35
    .line 36
    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getDeviceModel()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->ve:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/byazt/eq/c;->ve:Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->ve:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getDeviceName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->uj:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/eq/c;->uj:Ljava/lang/String;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "device_name"

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/byazt/eq/c;->uj:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/eq/c;->uj:Ljava/lang/String;

    .line 51
    .line 52
    return-object v0
.end method

.method public getDeviceType(Z)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getDeviceType(Z)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/byazt/lz/ve;->tt()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v0, p1, v1, v2}, Lcom/byazt/bt/DeviceInfoUtils;->c(Landroid/content/Context;ZLcom/byazt/dna/c;I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public getDisplayDpi()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/bt/sl;->tt(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getEmuiInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/bt/a;->tt(Lcom/byazt/dna/c;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getImei(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getImei(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->i:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Lcom/byazt/bt/ve;->c(Ljava/lang/Boolean;Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/byazt/eq/c;->i:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/byazt/eq/c;->i:Ljava/lang/String;

    .line 47
    .line 48
    return-object p1
.end method

.method public getImsi(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getImsi(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->t:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Lcom/byazt/bt/ve;->tt(Ljava/lang/Boolean;Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/byazt/eq/c;->t:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/byazt/eq/c;->t:Ljava/lang/String;

    .line 47
    .line 48
    return-object p1
.end method

.method public getIpInfoMap(Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/byazt/lz/ve;->n()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 14
    .line 15
    invoke-interface {v2}, Lcom/byazt/lz/ve;->tt()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 20
    .line 21
    invoke-static {p1, v0, v1, v2, v3}, Lcom/byazt/bt/tt;->c(ZLcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLocalLanguage()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    return-object v0
.end method

.method public getLocation(Z)Lcom/byazt/fn/c;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/dna/p;->getLocation()Lcom/byazt/fn/c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/byazt/lz/ve;->tt()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v0, p1, v1, v2}, Lcom/byazt/bt/c;->c(Landroid/content/Context;ZLcom/byazt/dna/c;I)Lcom/byazt/fn/c;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->rl:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 39
    .line 40
    invoke-interface {v1}, Lcom/byazt/lz/ve;->n()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v2, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 45
    .line 46
    invoke-interface {v2}, Lcom/byazt/lz/ve;->tt()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v3, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 51
    .line 52
    invoke-static {p1, v0, v1, v2, v3}, Lcom/byazt/bt/ve;->c(Ljava/lang/Boolean;Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/byazt/eq/c;->rl:Ljava/lang/String;

    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/byazt/eq/c;->rl:Ljava/lang/String;

    .line 59
    .line 60
    return-object p1
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getMcc()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->n:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/byazt/bt/ve;->n(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/byazt/eq/c;->n:Ljava/lang/String;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->n:Ljava/lang/String;

    .line 41
    .line 42
    return-object v0
.end method

.method public getMcc2()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/dna/p;->getMcc2()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->sp:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/byazt/bt/ve;->a(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/byazt/eq/c;->sp:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->sp:Ljava/lang/String;

    .line 47
    .line 48
    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getMnc()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/byazt/bt/ve;->sp(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/byazt/eq/c;->a:Ljava/lang/String;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->a:Ljava/lang/String;

    .line 41
    .line 42
    return-object v0
.end method

.method public getMnc2()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/dna/p;->getMnc2()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->x:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/byazt/bt/ve;->x(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/byazt/eq/c;->x:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->x:Ljava/lang/String;

    .line 47
    .line 48
    return-object v0
.end method

.method public getNetworkSignalType(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/byazt/bt/DeviceInfoUtils;->c(ILcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getNewIpAddrs(Z)[Ljava/lang/String;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getNewIpAddrs(Z)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/byazt/eq/c;->c()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/byazt/eq/c;->gu:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/eq/c;->gr:Ljava/lang/String;

    .line 33
    .line 34
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    sget-object v1, Lcom/byazt/eq/c;->mIsNeedUpdateIp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/byazt/lz/ve;->n()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/byazt/lz/ve;->tt()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iget-object v5, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 60
    .line 61
    move v0, p1

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/byazt/bt/tt;->c(ZLjava/util/concurrent/atomic/AtomicBoolean;Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    iput-wide v0, p0, Lcom/byazt/eq/c;->zm:J

    .line 71
    .line 72
    array-length v0, p1

    .line 73
    const/4 v1, 0x2

    .line 74
    if-lt v0, v1, :cond_2

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    aget-object v0, p1, v0

    .line 78
    .line 79
    iput-object v0, p0, Lcom/byazt/eq/c;->gu:Ljava/lang/String;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    aget-object v0, p1, v0

    .line 83
    .line 84
    iput-object v0, p0, Lcom/byazt/eq/c;->gr:Ljava/lang/String;

    .line 85
    .line 86
    :cond_2
    return-object p1
.end method

.method public getOs()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getOsVersion()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->m:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/byazt/eq/c;->m:Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->m:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

.method public getRealNetworkType(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/byazt/bt/i;->c(Landroid/content/Context;J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getRom()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getRom()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->my:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/byazt/bt/a;->c(Lcom/byazt/dna/c;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/byazt/eq/c;->my:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->my:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
.end method

.method public getRomInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->qy:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/bt/a;->ve()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/eq/c;->qy:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->qy:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public getSSID(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getSSID(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->da:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Lcom/byazt/bt/ve;->ve(Ljava/lang/Boolean;Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/byazt/eq/c;->da:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/byazt/eq/c;->da:Ljava/lang/String;

    .line 47
    .line 48
    return-object p1
.end method

.method public getScreenBright()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/bt/DeviceInfoUtils;->sp(Landroid/content/Context;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/bt/sl;->uj(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/bt/sl;->ve(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/bt/ve;->uj(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getSimOperatorCode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/bt/sp;->c(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    return-object v0
.end method

.method public getTimeZoneInt()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/bt/DeviceInfoUtils;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getUnlockTime()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/bt/DeviceInfoUtils;->tt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getUserAgent()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->rh:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/byazt/bt/da;->c()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/byazt/eq/c;->rh:Ljava/lang/String;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->rh:Ljava/lang/String;

    .line 33
    .line 34
    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/p;->getVendor()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->nu:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/byazt/eq/c;->nu:Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/byazt/eq/c;->nu:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

.method public getWebViewUA(Z)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/byazt/dna/p;->getWebViewUA()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->gt:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 43
    .line 44
    invoke-interface {v2}, Lcom/byazt/lz/ve;->x()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 49
    .line 50
    invoke-interface {v3}, Lcom/byazt/lz/ve;->tt()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-static {v0, v1, p1, v2, v3}, Lcom/byazt/bt/da;->c(Landroid/content/Context;Lcom/byazt/dna/c;ZZI)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/byazt/eq/c;->gt:Ljava/lang/String;

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/byazt/eq/c;->gt:Ljava/lang/String;

    .line 61
    .line 62
    return-object p1
.end method

.method public getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/eq/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eq/c;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/eq/c;->tt()Lcom/byazt/dna/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/eq/c;->sl:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/eq/c;->md:Lcom/byazt/lz/ve;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/byazt/lz/ve;->c()Lcom/byazt/dna/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Lcom/byazt/bt/ve;->uj(Ljava/lang/Boolean;Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/byazt/eq/c;->sl:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/byazt/eq/c;->sl:Ljava/lang/String;

    .line 47
    .line 48
    return-object p1
.end method

.method public isScreenOn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/bt/DeviceInfoUtils;->a(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public registerNetworkMonitor(Lcom/byazt/fn/ve;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/byazt/bt/i;->c(Lcom/byazt/fn/ve;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/bt/DeviceInfoUtils;->ve(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/bt/DeviceInfoUtils;->uj(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/eq/c;->p:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/bt/DeviceInfoUtils;->n(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Lcom/byazt/bt/tt;->c(Lcom/byazt/bt/tt$c;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/eq/c;->yv:Lcom/byazt/fn/ve;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/byazt/bt/i;->c(Lcom/byazt/fn/ve;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/eq/c;->yv:Lcom/byazt/fn/ve;

    .line 26
    .line 27
    return-void
.end method

.method public removeNetworkMonitor(Lcom/byazt/fn/ve;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/bt/i;->c(Lcom/byazt/fn/ve;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
