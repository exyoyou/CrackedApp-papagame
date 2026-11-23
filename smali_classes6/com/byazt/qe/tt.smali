.class public Lcom/byazt/qe/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b9,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/qe/tt$c;,
        Lcom/byazt/qe/tt$ve;,
        Lcom/byazt/qe/tt$tt;
    }
.end annotation


# static fields
.field public static volatile c:Z = false

.field public static da:Z = true

.field public static volatile uj:Lcom/byazt/qe/tt;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public sl:I

.field public final sp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final tt:Lcom/byazt/qe/c;

.field public final ve:Landroid/content/Context;

.field public final x:Lcom/byazt/nr/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/byazt/qe/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/qe/tt;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/qe/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/qe/tt;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/byazt/qe/tt;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/byazt/qe/tt;->sl:I

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/byazt/qe/tt;->tt:Lcom/byazt/qe/c;

    .line 43
    .line 44
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/byazt/qe/tt;->ve:Landroid/content/Context;

    .line 49
    .line 50
    new-instance v0, Lcom/byazt/nr/d;

    .line 51
    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/byazt/qe/tt;->x:Lcom/byazt/nr/d;

    .line 60
    .line 61
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/byazt/bp/c;->yp()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 72
    .line 73
    const-string v1, "com.bytedance.msdk.core.setting.SettingsReceiver"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/byazt/qe/tt$tt;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-direct {v1, p0, v2}, Lcom/byazt/qe/tt$tt;-><init>(Lcom/byazt/qe/tt;Lcom/byazt/qe/tt$1;)V

    .line 82
    .line 83
    .line 84
    sget-object v3, Lcom/byazt/qe/tt$ve;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/qe/tt;->sp()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Lcom/byazt/px/tt;->c(Ljava/lang/String;)Lcom/byazt/ly/uj;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    :try_start_0
    invoke-interface {v3}, Lcom/byazt/ly/uj;->getNetworkSdkVersion()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method public static c(Lcom/byazt/qe/c;)Lcom/byazt/qe/tt;
    .locals 2

    .line 7
    sget-object v0, Lcom/byazt/qe/tt;->uj:Lcom/byazt/qe/tt;

    if-nez v0, :cond_1

    .line 8
    const-class v0, Lcom/byazt/qe/tt;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/byazt/qe/tt;->uj:Lcom/byazt/qe/tt;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/byazt/qe/tt;

    invoke-direct {v1, p0}, Lcom/byazt/qe/tt;-><init>(Lcom/byazt/qe/c;)V

    sput-object v1, Lcom/byazt/qe/tt;->uj:Lcom/byazt/qe/tt;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/qe/tt;->uj:Lcom/byazt/qe/tt;

    return-object p0
.end method

.method public static c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 159
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 160
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :catch_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 164
    :try_start_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    :catch_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 166
    throw p0

    .line 167
    :catch_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 168
    :catch_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private c(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 50
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/qe/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qe/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static c(Lcom/byazt/yf/a;)Lorg/json/JSONObject;
    .locals 4

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "user_id"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz p0, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {p0}, Lcom/byazt/yf/a;->tt()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    if-eqz p0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/byazt/yf/a;->ve()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sub_channel"

    if-eqz p0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/byazt/yf/a;->uj()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "age"

    if-eqz p0, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/byazt/yf/a;->n()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "gender"

    if-eqz p0, :cond_4

    .line 176
    invoke-virtual {p0}, Lcom/byazt/yf/a;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v2

    :goto_4
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_value_group"

    if-eqz p0, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/byazt/yf/a;->sp()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 178
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_5
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/qe/tt;Lcom/byazt/yf/n;IILjava/lang/String;ZLorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/n;IILjava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qe/tt;Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/qe/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qe/tt;ZLcom/byazt/yf/n;ILorg/json/JSONObject;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/qe/tt;->c(ZLcom/byazt/yf/n;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qe/tt;[I[ILcom/byazt/hm/tt;Lorg/json/JSONObject;Ljava/lang/String;[ILcom/byazt/yf/n;Lorg/json/JSONObject;IZJLorg/json/JSONObject;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p13}, Lcom/byazt/qe/tt;->c([I[ILcom/byazt/hm/tt;Lorg/json/JSONObject;Ljava/lang/String;[ILcom/byazt/yf/n;Lorg/json/JSONObject;IZJLorg/json/JSONObject;)V

    return-void
.end method

.method private c(Lcom/byazt/yf/n;IILjava/lang/String;ZLorg/json/JSONObject;)V
    .locals 5

    const-string v0, " msg = "

    if-eqz p5, :cond_0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/byazt/qe/ve;->c(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    const-string p5, "v4Enc_config"

    goto :goto_1

    :cond_1
    const-string p5, "v2Enc_config"

    .line 152
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cmsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {p5, v2, v3, v4, v1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;ZJLjava/lang/String;)V

    const-string p5, "SdkSettingsHelper"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----\u62c9\u53d6\u914d\u7f6e\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance p5, Lcom/byazt/pp/c;

    invoke-direct {p5, p3, p4}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, p5, p2, p6}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/n;Lcom/byazt/pp/c;ILorg/json/JSONObject;)V

    .line 155
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/ve;->pf()Z

    move-result p1

    if-nez p1, :cond_2

    .line 156
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "\u805a\u5408config\u8bf7\u6c42\u5931\u8d25 code = "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/byazt/vq/c;->c(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    .line 157
    :goto_2
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Lcom/byazt/yf/n;Lcom/byazt/pp/c;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/byazt/qe/tt$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/qe/tt$1;-><init>(Lcom/byazt/qe/tt;Lcom/byazt/yf/n;Lcom/byazt/pp/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/byazt/yf/n;Lcom/byazt/pp/c;ILorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/byazt/rq/c;->c()Lcom/byazt/it/n;

    move-result-object v0

    const-string v1, "server_dist_host"

    .line 29
    invoke-interface {v0, v1}, Lcom/byazt/it/c;->remove(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/n;Lcom/byazt/pp/c;)V

    .line 31
    invoke-static {}, Lcom/byazt/sx/ve;->a()V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "setting \u914d\u7f6e\u62c9\u53d6\u5931\u8d25\uff0c\u5c1d\u8bd5\u518d\u6b21\u62c9\u53d6... mLoadingSuccess:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/byazt/qe/tt;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mRetryCount:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/byazt/qe/tt;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SdkSettingsHelper"

    invoke-static {p2, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/byazt/qe/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    iget-object p1, p0, Lcom/byazt/qe/tt;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/byazt/qe/tt;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    iget-object p1, p0, Lcom/byazt/qe/tt;->x:Lcom/byazt/nr/d;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/byazt/qe/tt;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v3, 0x3

    if-le p1, v3, :cond_1

    const-string p1, "setting \u6700\u591a\u5c1d\u8bd5\u56db\u6b21\u62c9\u53d6... "

    .line 38
    invoke-static {p2, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/byazt/qe/tt;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 41
    iput v0, p1, Landroid/os/Message;->what:I

    .line 42
    iget-object v4, p0, Lcom/byazt/qe/tt;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iput v4, p1, Landroid/os/Message;->arg1:I

    .line 43
    iput p3, p1, Landroid/os/Message;->arg2:I

    .line 44
    iput-object p4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    iget-object p3, p0, Lcom/byazt/qe/tt;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    if-ge p3, v3, :cond_3

    const-wide/16 v3, 0x1

    :goto_0
    if-gt v1, p3, :cond_2

    const-wide/16 v5, 0x3

    mul-long v3, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    goto :goto_1

    :cond_3
    const-wide/32 v3, 0x1d4c0

    .line 46
    :goto_1
    iget-object p4, p0, Lcom/byazt/qe/tt;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 47
    iget-object p4, p0, Lcom/byazt/qe/tt;->x:Lcom/byazt/nr/d;

    invoke-virtual {p4, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    iget-object p4, p0, Lcom/byazt/qe/tt;->x:Lcom/byazt/nr/d;

    invoke-virtual {p4, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "setting \u91cd\u8bd5\u6b21\u6570:"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  \u91cd\u8bd5\u95f4\u9694\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 2

    const v0, 0x3fb89

    .line 104
    const-class v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/bp/c;->ve(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/omf/x;->ve(Ljava/lang/String;)V

    const v0, 0x3fb94

    .line 107
    const-class v1, Landroid/util/SparseArray;

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    .line 108
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    new-instance v1, Lcom/byazt/dj/uj;

    invoke-direct {v1, p1}, Lcom/byazt/dj/uj;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->c(Lcom/byazt/dj/uj;)V

    :cond_0
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "remote_log_enabled"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    invoke-static {}, Lcom/byazt/eu/tt;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private c(Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 2

    .line 62
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 63
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "v4Enc_config"

    goto :goto_0

    :cond_0
    const-string p1, "v2Enc_config"

    :goto_0
    const/4 v0, 0x1

    const-string v1, ""

    .line 150
    invoke-static {p1, v0, p2, p3, v1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;ZJLjava/lang/String;)V

    return-void
.end method

.method private c(ZLcom/byazt/yf/n;ILorg/json/JSONObject;)V
    .locals 16

    move-object/from16 v14, p0

    const-string v0, "requestSetting requestType: "

    .line 64
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkSettingsHelper"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 65
    filled-new-array {v0}, [I

    move-result-object v7

    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 67
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 68
    invoke-static {}, Lcom/byazt/psp/n;->uj()Lcom/byazt/psp/n;

    move-result-object v1

    move/from16 v9, p3

    invoke-virtual {v1, v9}, Lcom/byazt/psp/n;->tt(I)Ljava/util/Map;

    move-result-object v1

    const-string v2, "event_label_value_root"

    .line 69
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lorg/json/JSONObject;

    const-string v2, "config_req_label_value_root"

    .line 70
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 71
    invoke-static {}, Lcom/byazt/yp/tt;->c()Lcom/byazt/yp/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/yp/tt;->tt()Lcom/byazt/hm/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/hm/c;->tt()Lcom/byazt/va/n;

    move-result-object v15

    .line 72
    invoke-static {}, Lcom/byazt/bp/ve;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/bp/c;->x()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "X-Tt-Env"

    .line 75
    invoke-virtual {v15, v8, v2}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "x-use-ppe"

    const-string v8, "1"

    .line 76
    invoke-virtual {v15, v2, v8}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "User-Agent"

    .line 77
    sget-object v8, Lcom/byazt/yl/tt;->c:Ljava/lang/String;

    invoke-virtual {v15, v2, v8}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    invoke-direct {v14, v1}, Lcom/byazt/qe/tt;->tt(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "params"

    .line 79
    invoke-direct {v14, v3, v2, v4, v5}, Lcom/byazt/qe/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 80
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/qe/ve;->a()Z

    move-result v2

    xor-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_1

    const-string v2, "x-pglcypher"

    const-string v8, "4"

    .line 81
    invoke-virtual {v15, v2, v8}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/vx/eo;->tt(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "application/octet-stream"

    invoke-virtual {v15, v2, v1}, Lcom/byazt/va/n;->c(Ljava/lang/String;[B)V

    .line 83
    invoke-virtual {v15}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v15}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v1

    iget-object v1, v1, Lcom/byazt/gqp/z;->n:[B

    if-eqz v1, :cond_2

    .line 84
    invoke-static {}, Lcom/byazt/bp/ve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v2

    iget-object v2, v2, Lcom/byazt/gqp/z;->n:[B

    invoke-static {v1, v2, v0}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {v14, v1}, Lcom/byazt/qe/tt;->ve(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/byazt/va/n;->ve(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v15}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v15}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v1

    iget-object v1, v1, Lcom/byazt/gqp/z;->uj:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 87
    invoke-static {}, Lcom/byazt/bp/ve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v2

    iget-object v2, v2, Lcom/byazt/gqp/z;->uj:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_2
    :goto_0
    const-string v0, "encrypt"

    .line 88
    invoke-direct {v14, v3, v0, v4, v5}, Lcom/byazt/qe/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 89
    new-instance v0, Lcom/byazt/qe/tt$3;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p4

    move/from16 v12, p1

    invoke-direct/range {v1 .. v13}, Lcom/byazt/qe/tt$3;-><init>(Lcom/byazt/qe/tt;Lorg/json/JSONObject;J[I[ILcom/byazt/yf/n;IZLorg/json/JSONObject;ZLorg/json/JSONObject;)V

    invoke-virtual {v15, v0}, Lcom/byazt/va/n;->c(Lcom/byazt/mh/c;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 90
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 91
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v0

    const v1, 0x13c79

    const-string v2, "GM\u63a5\u53e3\u8bf7\u6c42\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Lcom/byazt/vq/c;->c(ILjava/lang/String;)V

    return-void
.end method

.method private c([I[ILcom/byazt/hm/tt;Lorg/json/JSONObject;Ljava/lang/String;[ILcom/byazt/yf/n;Lorg/json/JSONObject;IZJLorg/json/JSONObject;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move/from16 v5, p10

    move-wide/from16 v2, p11

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 110
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/hm/tt;->uj()Ljava/util/Map;

    move-result-object v4

    .line 111
    invoke-direct {p0, v4}, Lcom/byazt/qe/tt;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const-string v10, "active-control"

    .line 112
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "ts"

    .line 113
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "pst"

    .line 114
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v6

    move-object v10, v4

    move-object v11, v10

    .line 115
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/byazt/vx/gt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 116
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/byazt/qe/ve;->uj(Ljava/lang/String;)V

    .line 118
    :cond_1
    invoke-direct {p0, v0}, Lcom/byazt/qe/tt;->c(Lorg/json/JSONObject;)V

    const-string v4, "state_code"

    const v10, -0x13880

    .line 119
    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v11, "message"

    .line 120
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x4e20

    const/4 v13, 0x0

    if-ne v4, v12, :cond_2

    .line 121
    aput v12, p1, v13

    :cond_2
    const/16 v14, 0x7534

    if-ne v4, v14, :cond_3

    .line 122
    aput v14, p1, v13

    .line 123
    iget-object v2, v7, Lcom/byazt/qe/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    iget-object v2, v7, Lcom/byazt/qe/tt;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    iget-object v2, v7, Lcom/byazt/qe/tt;->x:Lcom/byazt/nr/d;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 126
    iget-object v2, v7, Lcom/byazt/qe/tt;->tt:Lcom/byazt/qe/c;

    invoke-interface {v2, v0}, Lcom/byazt/qe/c;->c(Lorg/json/JSONObject;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/n;)V

    .line 128
    invoke-static {}, Lcom/byazt/sx/ve;->n()V

    .line 129
    invoke-direct {p0, v5, v8, v9}, Lcom/byazt/qe/tt;->c(ZJ)V

    return-void

    :cond_3
    if-ne v4, v12, :cond_6

    .line 130
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    const/4 v4, 0x1

    .line 131
    aput v4, p2, v13

    .line 132
    aput v12, p1, v13

    .line 133
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 134
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    aput v10, p6, v13

    .line 135
    :cond_4
    iget-object v10, v7, Lcom/byazt/qe/tt;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object v10, v7, Lcom/byazt/qe/tt;->x:Lcom/byazt/nr/d;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 137
    iget-object v6, v7, Lcom/byazt/qe/tt;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    iget-object v4, v7, Lcom/byazt/qe/tt;->tt:Lcom/byazt/qe/c;

    move-object/from16 v6, p13

    invoke-interface {v4, v0, v13, v13, v6}, Lcom/byazt/qe/c;->c(Lorg/json/JSONObject;ZZLorg/json/JSONObject;)V

    const-string v0, "parse_save"

    move-object/from16 v4, p8

    .line 139
    invoke-direct {p0, v4, v0, v2, v3}, Lcom/byazt/qe/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 140
    iget-object v0, v7, Lcom/byazt/qe/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/n;)V

    .line 142
    invoke-static {}, Lcom/byazt/sx/ve;->n()V

    .line 143
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->yp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    invoke-static {}, Lcom/byazt/qe/tt;->x()V

    .line 145
    :cond_5
    invoke-direct {p0, v5, v8, v9}, Lcom/byazt/qe/tt;->c(ZJ)V

    return-void

    :cond_6
    move-object/from16 v6, p13

    if-eq v4, v10, :cond_7

    .line 146
    aput v4, p1, v13

    .line 147
    :cond_7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 148
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_8
    move-object v4, v11

    .line 149
    :goto_1
    aget v3, p1, v13

    move-object v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p9

    move/from16 v5, p10

    move-object/from16 v6, p13

    invoke-direct/range {v0 .. v6}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/n;IILjava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic c(Z)Z
    .locals 0

    .line 6
    sput-boolean p0, Lcom/byazt/qe/tt;->da:Z

    return p0
.end method

.method private n()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/byazt/rq/c;->c()Lcom/byazt/it/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "max_expire_time"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/byazt/qe/tt;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    cmp-long v2, v4, v0

    .line 27
    .line 28
    if-lez v2, :cond_0

    .line 29
    .line 30
    const-string v2, "SdkSettingsHelper"

    .line 31
    .line 32
    const-string v4, "setting \u7f13\u5b58\u8fc7\u671f\uff0c\u518d\u6b21\u53d1\u8d77\u8bf7\u6c42..."

    .line 33
    .line 34
    invoke-static {v2, v4}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/byazt/qe/tt;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/byazt/qe/tt;->c()Lcom/byazt/qe/tt;

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    cmp-long v2, v4, v0

    .line 50
    .line 51
    if-lez v2, :cond_1

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    return v0

    .line 55
    :cond_1
    return v3
.end method

.method private static sp()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pangle"

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v1, "gdt"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "unity"

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "baidu"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v1, "sigmob"

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string v1, "mintegral"

    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v1, "ks"

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const-string v1, "klevin"

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const-string v1, "xiaomi"

    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/qe/tt;)Lcom/byazt/qe/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qe/tt;->tt:Lcom/byazt/qe/c;

    return-object p0
.end method

.method public static tt()Lorg/json/JSONObject;
    .locals 6

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    invoke-static {}, Lcom/byazt/qe/tt;->sp()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/byazt/px/tt;->c(Ljava/lang/String;)Lcom/byazt/ly/uj;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 99
    :try_start_0
    invoke-interface {v3}, Lcom/byazt/ly/uj;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_1
    invoke-interface {v3}, Lcom/byazt/ly/uj;->getAdapterVersion()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Adapter"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 105
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static tt(Lcom/byazt/yf/a;)Lorg/json/JSONObject;
    .locals 5

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/byazt/yf/a;->c()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 91
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 92
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 94
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method private tt(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lorg/json/JSONObject;
    .locals 5

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/byazt/lkb/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/lkb/c;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/byazt/lkb/c;->nu()Lcom/byazt/je/ve;

    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/byazt/tjo/ve;->c(Lcom/byazt/je/ve;)Lcom/byazt/yf/a;

    move-result-object v1

    const-string v2, "need_simple_req"

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "app_id"

    .line 80
    const-class v3, Ljava/lang/String;

    const v4, 0x3fb89

    invoke-interface {p1, v4, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "media_sdk_version"

    .line 81
    invoke-static {}, Lcom/byazt/yl/tt;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_version"

    .line 82
    invoke-static {}, Lcom/byazt/yl/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "os"

    const-string v3, "device_info_new"

    .line 84
    invoke-static {v3}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/dna/u;

    invoke-interface {v3}, Lcom/byazt/dna/u;->getOs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "android_id"

    .line 85
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device"

    .line 86
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string p1, "grouping_params"

    .line 87
    invoke-static {v1}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/a;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "user_defined_grouping_params"

    .line 88
    invoke-static {v1}, Lcom/byazt/qe/tt;->tt(Lcom/byazt/yf/a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private tt(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ts"

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "media_sdk_version"

    .line 12
    invoke-static {}, Lcom/byazt/yl/tt;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "plugin_version"

    .line 13
    invoke-static {}, Lcom/byazt/yl/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_fusion"

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "app_id"

    .line 15
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/bp/c;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package_name"

    .line 16
    invoke-static {}, Lcom/byazt/vx/eo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_version"

    .line 17
    invoke-static {}, Lcom/byazt/vx/eo;->ve()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_info_new"

    .line 18
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/dna/u;

    const-string v3, "embed_applog"

    .line 19
    invoke-static {v3}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/dna/ve;

    .line 20
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "android_id"

    .line 21
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->tt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x0

    .line 22
    invoke-static {v5}, Lcom/byazt/aas/DeviceUtils;->c(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "imei"

    .line 23
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "imei_md5"

    .line 24
    invoke-static {v5}, Lcom/byazt/vx/gt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "oaid"

    const/4 v6, 0x0

    .line 25
    invoke-interface {v3, v6}, Lcom/byazt/dna/ve;->getOAID(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "applog_did"

    .line 26
    invoke-interface {v3}, Lcom/byazt/dna/ve;->getDid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "publisher_did"

    .line 27
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/bp/c;->rh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "conn_type"

    .line 28
    invoke-static {}, Lcom/byazt/aas/qy;->c()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "os"

    .line 29
    invoke-interface {v1}, Lcom/byazt/dna/u;->getOs()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "os_version"

    .line 30
    invoke-interface {v1}, Lcom/byazt/dna/u;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vendor"

    .line 31
    invoke-interface {v1}, Lcom/byazt/dna/u;->getVendor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_model"

    .line 32
    invoke-interface {v1}, Lcom/byazt/dna/u;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mcc"

    .line 33
    invoke-interface {v1}, Lcom/byazt/dna/u;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mnc"

    .line 34
    invoke-interface {v1}, Lcom/byazt/dna/u;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "time_zone"

    .line 35
    invoke-interface {v1}, Lcom/byazt/dna/u;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ip"

    .line 36
    invoke-static {}, Lcom/byazt/aas/my;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "locale_language"

    .line 37
    invoke-interface {v1}, Lcom/byazt/dna/u;->getLocalLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "total_space"

    .line 38
    invoke-static {}, Lcom/byazt/aas/nb;->nu()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "carrier_name"

    .line 39
    invoke-interface {v1}, Lcom/byazt/dna/u;->getCarrierName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_name"

    .line 40
    invoke-interface {v1}, Lcom/byazt/dna/u;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pb"

    const-string v5, ""

    .line 41
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "boot"

    .line 42
    invoke-interface {v1}, Lcom/byazt/dna/u;->getBoot()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "country_code"

    .line 43
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/qe/ve;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "total_mem"

    .line 44
    invoke-static {}, Lcom/byazt/aas/nb;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_type"

    .line 45
    invoke-interface {v1}, Lcom/byazt/dna/u;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "language"

    .line 46
    invoke-interface {v1}, Lcom/byazt/dna/u;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "android_os_version_int"

    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "device"

    .line 48
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "init_time"

    .line 50
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/bp/c;->ve()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "app"

    .line 51
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "grouping_params"

    .line 52
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/bp/c;->rl()Lcom/byazt/yf/a;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/a;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/bp/c;->rl()Lcom/byazt/yf/a;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/qe/tt;->tt(Lcom/byazt/yf/a;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "user_defined_grouping_params"

    .line 54
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_0
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/bp/c;->sp()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "etag"

    .line 56
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/qe/ve;->yp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/byazt/qe/tt;->ve:Landroid/content/Context;

    invoke-static {v1}, Lcom/byazt/vx/a;->c(Landroid/content/Context;)Lcom/byazt/vx/n;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "latitude"

    .line 58
    iget v4, v1, Lcom/byazt/vx/n;->c:F

    float-to-double v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "longitude"

    .line 59
    iget v1, v1, Lcom/byazt/vx/n;->tt:F

    float-to-double v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "adn_version_list"

    .line 60
    invoke-direct {p0}, Lcom/byazt/qe/tt;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-static {}, Lcom/byazt/psp/n;->uj()Lcom/byazt/psp/n;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/byazt/psp/n;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 62
    invoke-static {}, Lcom/byazt/psp/n;->uj()Lcom/byazt/psp/n;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/psp/n;->c(Lorg/json/JSONObject;)V

    .line 63
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/bp/c;->yv()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 65
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const-string p1, "primerit_list"

    .line 68
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_4
    invoke-static {}, Lcom/byazt/vx/u;->c()Z

    move-result p1

    if-nez p1, :cond_5

    .line 70
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "err_type"

    .line 71
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "err_msg"

    const-string v2, "applog so\u52a0\u8f7d\u5931\u8d25"

    .line 72
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "monitor_alarm"

    .line 73
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static synthetic tt(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/byazt/qe/tt;->c:Z

    return p0
.end method

.method public static synthetic uj()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/qe/tt;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic ve(Lcom/byazt/qe/tt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qe/tt;->ve:Landroid/content/Context;

    return-object p0
.end method

.method private ve(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/byazt/vx/eo;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic ve()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/byazt/qe/tt;->da:Z

    return v0
.end method

.method private static x()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/byazt/vx/eo;->c()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v1, "com.bytedance.msdk.core.setting.SettingsReceiver"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v1, "b_msg_id"

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/byazt/vx/gr;->tt(Landroid/content/Context;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "b_msg_process_name"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Lcom/byazt/qe/tt$ve;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qe/tt;
    .locals 2

    const-string v0, "SdkSettingsHelper"

    const-string v1, "setting resetRetryCount..."

    .line 13
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/byazt/qe/tt;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 15
    iget-object v0, p0, Lcom/byazt/qe/tt;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    iget-object v0, p0, Lcom/byazt/qe/tt;->x:Lcom/byazt/nr/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public c(I)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/byazt/qe/tt;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "SdkSettingsHelper"

    if-eqz v0, :cond_0

    const-string p1, "setting \u6b63\u5728\u5c1d\u8bd5\u62c9\u53d6\u914d\u7f6e\u4e2d..."

    .line 24
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "setting \u5c1d\u8bd5\u62c9\u53d6\u914d\u7f6e..."

    .line 25
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/byazt/qe/tt;->c()Lcom/byazt/qe/tt;

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/byazt/qe/tt;->tt(ILorg/json/JSONObject;)V

    return-void
.end method

.method public c(ILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "SdkSettingsHelper"

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/byazt/qe/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    iput p1, p0, Lcom/byazt/qe/tt;->sl:I

    const-string p1, "setting \u6b63\u5728\u52a0\u8f7d\uff0c\u65e0\u9700\u518d\u6b21\u53d1\u8d77\u8bf7\u6c42..."

    .line 20
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_0
    new-instance v1, Lcom/byazt/qe/tt$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/byazt/qe/tt$c;-><init>(Lcom/byazt/qe/tt;Lcom/byazt/yf/n;ILorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "load sdk settings error: "

    .line 22
    invoke-static {v0, p2, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/yf/n;)V
    .locals 2

    .line 57
    iget v0, p0, Lcom/byazt/qe/tt;->sl:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 58
    iput v1, p0, Lcom/byazt/qe/tt;->sl:I

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/byazt/qe/tt;->c(ILorg/json/JSONObject;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 60
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->yv()Ljava/util/List;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/byazt/qe/tt$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/byazt/qe/tt$2;-><init>(Lcom/byazt/qe/tt;Lcom/byazt/yf/n;Ljava/util/List;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Lorg/json/JSONObject;)V
    .locals 5

    .line 92
    invoke-direct {p0, p1}, Lcom/byazt/qe/tt;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    .line 93
    iget-object v0, p0, Lcom/byazt/qe/tt;->tt:Lcom/byazt/qe/c;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcom/byazt/qe/c;->c()V

    .line 95
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    invoke-static {}, Lcom/byazt/ng/a;->tt()V

    .line 97
    invoke-static {}, Lcom/byazt/yp/tt;->c()Lcom/byazt/yp/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/yp/tt;->tt()Lcom/byazt/hm/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/hm/c;->tt()Lcom/byazt/va/n;

    move-result-object v2

    .line 98
    invoke-static {}, Lcom/byazt/bp/ve;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    const-string v3, "User-Agent"

    .line 99
    sget-object v4, Lcom/byazt/yl/tt;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/qe/tt;->tt(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "x-pglcypher"

    const-string v4, "4"

    .line 101
    invoke-virtual {v2, v3, v4}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/eo;->tt(Ljava/lang/String;)[B

    move-result-object p1

    const-string v3, "application/octet-stream"

    invoke-virtual {v2, v3, p1}, Lcom/byazt/va/n;->c(Ljava/lang/String;[B)V

    .line 103
    new-instance p1, Lcom/byazt/qe/tt$4;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/byazt/qe/tt$4;-><init>(Lcom/byazt/qe/tt;JLorg/json/JSONObject;)V

    invoke-virtual {v2, p1}, Lcom/byazt/va/n;->c(Lcom/byazt/mh/c;)V

    :catch_0
    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-ne v0, v3, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/byazt/qe/tt;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "setting \u53d1\u8d77\u5c1d\u8bd5\u62c9\u53d6\u914d\u7f6e\u8bf7\u6c42... mLoadingSuccess:"

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/byazt/qe/tt;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, "tryCount:"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/2addr v0, v1

    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "SdkSettingsHelper"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qe/tt;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    instance-of v0, p1, Lorg/json/JSONObject;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    check-cast p1, Lorg/json/JSONObject;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 p1, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/byazt/qe/tt;->tt(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    :catchall_0
    :goto_1
    return-void
.end method

.method public tt(ILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "SdkSettingsHelper"

    const-string v1, "embed_applog"

    .line 3
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/dna/ve;

    invoke-interface {v1}, Lcom/byazt/dna/ve;->getDid()Ljava/lang/String;

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/qe/tt;->n()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "setting \u7f13\u5b58\u672a\u8fc7\u671f\uff0c\u65e0\u9700\u518d\u6b21\u53d1\u8d77\u8bf7\u6c42..."

    .line 5
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/qe/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "setting \u6b63\u5728\u52a0\u8f7d\uff0c\u65e0\u9700\u518d\u6b21\u53d1\u8d77\u8bf7\u6c42..."

    .line 7
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    new-instance v1, Lcom/byazt/qe/tt$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/byazt/qe/tt$c;-><init>(Lcom/byazt/qe/tt;Lcom/byazt/yf/n;ILorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "load sdk settings error: "

    .line 9
    invoke-static {v0, p2, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
