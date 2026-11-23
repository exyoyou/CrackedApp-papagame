.class public Lcom/byazt/nf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f1,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nf/c$tt;,
        Lcom/byazt/nf/c$c;
    }
.end annotation


# instance fields
.field public a:J

.field public c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public da:Z

.field public i:Z

.field public m:Ljava/lang/String;

.field public n:Z

.field public final nu:Lcom/byazt/bo/c;

.field public rh:Lcom/byazt/nf/c$tt;

.field public sl:I

.field public sp:Lcom/byazt/bo/c;

.field public t:Ljava/lang/String;

.field public tt:I

.field public u:Lcom/byazt/ll/tt;

.field public uj:Z

.field public ve:I

.field public x:Z

.field public yp:Lcom/byazt/yl/ve;

.field public z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/nf/c;->uj:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/nf/c;->n:Z

    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/byazt/nf/c;->a:J

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/byazt/nf/c;->x:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/byazt/nf/c;->i:Z

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/byazt/nf/c;->da:Z

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/byazt/nf/c;->sl:I

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    iput-object v1, p0, Lcom/byazt/nf/c;->t:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/byazt/nf/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    new-instance v0, Lcom/byazt/nf/c$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/byazt/nf/c$1;-><init>(Lcom/byazt/nf/c;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/byazt/nf/c;->nu:Lcom/byazt/bo/c;

    .line 40
    .line 41
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const/4 v1, 0x7

    .line 48
    const/16 v2, 0x65

    .line 49
    .line 50
    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->hd()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/byazt/nf/c;->tt:I

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->bm()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, p0, Lcom/byazt/nf/c;->ve:I

    .line 67
    .line 68
    :cond_0
    iget p1, p0, Lcom/byazt/nf/c;->tt:I

    .line 69
    .line 70
    if-gez p1, :cond_1

    .line 71
    .line 72
    const/16 p1, 0x3a98

    .line 73
    .line 74
    iput p1, p0, Lcom/byazt/nf/c;->tt:I

    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "startPreRequest:CSJ\u4ee3\u7801\u4f4d\u6ca1\u6709\u5f00\u542fshow\u5f3a\u6821\u9a8c\uff0c\u6267\u884c15s\u903b\u8f91->startPreRequest"

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    .line 2
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--==-- showListen\u56de\u8c03\u8fdb\u6765\uff0c\u5f00\u59cb\u8ba1\u65f6"

    .line 3
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/byazt/nf/c$7;

    invoke-direct {v0, p0}, Lcom/byazt/nf/c$7;-><init>(Lcom/byazt/nf/c;)V

    iget v1, p0, Lcom/byazt/nf/c;->tt:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic a(Lcom/byazt/nf/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nf/c;->uj:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/nf/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/nf/c;->a:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/nf/c;)Lcom/byazt/ll/tt;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    return-object p0
.end method

.method private c(Z)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdk_version"

    .line 89
    invoke-static {}, Lcom/byazt/yl/tt;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "plugin_version"

    .line 90
    invoke-static {}, Lcom/byazt/yl/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_agent"

    .line 91
    sget-object v2, Lcom/byazt/yl/tt;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "try_value"

    .line 92
    iget-object v2, p0, Lcom/byazt/nf/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "network"

    .line 93
    invoke-static {}, Lcom/byazt/vx/qy;->tt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_start_ts"

    .line 94
    iget-wide v2, p0, Lcom/byazt/nf/c;->z:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "play_end_ts"

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "user_id"

    .line 96
    iget-object v2, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "trans_id"

    .line 97
    iget-object v2, p0, Lcom/byazt/nf/c;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/byazt/nf/c;->m:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/byazt/nf/c;->m:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "link_id"

    .line 98
    iget-object v2, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "prime_rit"

    .line 99
    iget-object v2, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adn_rit"

    .line 100
    iget-object v2, p0, Lcom/byazt/nf/c;->yp:Lcom/byazt/yl/ve;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reward_name"

    .line 101
    iget-object v2, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->yv()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reward_amount"

    .line 102
    iget-object v2, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->p()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rs_info"

    .line 103
    invoke-direct {p0}, Lcom/byazt/nf/c;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "media_extra"

    .line 104
    iget-object v2, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object v2

    const-string v4, "gromoreExtra"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_7

    :cond_7
    move-object v2, v3

    :goto_7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v1, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->rl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "scenario_id"

    .line 106
    iget-object v2, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->rl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_8
    iget-object v1, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    iget-object v2, p0, Lcom/byazt/nf/c;->yp:Lcom/byazt/yl/ve;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    move-result-object v1

    const-string v2, "adn_name"

    if-eqz v1, :cond_9

    .line 108
    invoke-virtual {v1}, Lcom/byazt/pp/ve;->t()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_9
    move-object v4, v3

    :goto_8
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ecpm"

    if-eqz v1, :cond_a

    .line 109
    invoke-virtual {v1}, Lcom/byazt/pp/ve;->u()Ljava/lang/String;

    move-result-object v3

    :cond_a
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v1

    .line 110
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_9
    if-eqz p1, :cond_b

    .line 111
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 112
    :cond_b
    invoke-static {v0}, Lcom/byazt/vx/eo;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(ILjava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    const-string p3, "v4Enc_reward"

    goto :goto_0

    :cond_0
    const-string p3, "v2Enc_reward"

    .line 87
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0cmsg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p3, p2, v0, v1, p1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;ZJLjava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/hm/tt;ZJ)V
    .locals 8
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 31
    iget-boolean v0, p0, Lcom/byazt/nf/c;->uj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    if-nez p1, :cond_1

    const-string p1, "--==-- ServerSide verify netResponse is null"

    .line 32
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "response is null"

    .line 33
    invoke-direct {p0, v0, p1, p2}, Lcom/byazt/nf/c;->c(ILjava/lang/String;Z)V

    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/hm/tt;->tt()I

    move-result v2

    .line 35
    invoke-static {p1}, Lcom/byazt/vx/eo;->c(Lcom/byazt/hm/tt;)Z

    move-result v3

    const/16 v4, 0x4e20

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 36
    invoke-virtual {p1}, Lcom/byazt/hm/tt;->sl()[B

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/eo;->c([B)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 38
    :try_start_0
    iput v4, p0, Lcom/byazt/nf/c;->sl:I

    .line 39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/byazt/nf/c;->c(Lorg/json/JSONObject;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 42
    iput v5, p0, Lcom/byazt/nf/c;->sl:I

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/byazt/nf/c;->c(ILjava/lang/String;Z)V

    return-void

    :cond_2
    const-string p1, "--==-- ServerSide verify data v4 is null"

    .line 44
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data is empty"

    .line 45
    invoke-direct {p0, v2, p1, p2}, Lcom/byazt/nf/c;->c(ILjava/lang/String;Z)V

    return-void

    .line 46
    :cond_3
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cypher"

    .line 47
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v6, "message"

    .line 48
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "code"

    .line 49
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/byazt/nf/c;->sl:I

    const-string v7, "desc"

    .line 50
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/byazt/nf/c;->t:Ljava/lang/String;

    .line 51
    iget v3, p0, Lcom/byazt/nf/c;->sl:I

    const v7, 0xc351

    if-ne v3, v7, :cond_4

    .line 52
    iput-boolean v5, p0, Lcom/byazt/nf/c;->da:Z

    const-string p1, "--==-- ServerSide verify code: 50001\uff0c\u8bf7\u6c42\u5a92\u4f53\u670d\u52a1\u7aef\u5931\u8d25\uff0c\u9700\u8981\u91cd\u8bd5"

    .line 53
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget p1, p0, Lcom/byazt/nf/c;->sl:I

    .line 55
    iget-object p3, p0, Lcom/byazt/nf/c;->t:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/nf/c;->c(ILjava/lang/String;Z)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_5

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/byazt/nf/c;->da:Z

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "--==-- ServerSide verify code: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/byazt/nf/c;->sl:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", msg: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/byazt/nf/c;->t:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\uff0c\u4e0d\u80fd\u518d\u91cd\u8bd5"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget p1, p0, Lcom/byazt/nf/c;->sl:I

    .line 59
    iget-object p3, p0, Lcom/byazt/nf/c;->t:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/nf/c;->c(ILjava/lang/String;Z)V

    return-void

    :cond_5
    if-ltz p1, :cond_9

    .line 60
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_6

    .line 61
    invoke-static {v6}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 63
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_6
    if-ne p1, v5, :cond_7

    .line 64
    invoke-static {}, Lcom/byazt/vx/tt;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/byazt/vx/c;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    .line 67
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    :cond_8
    :goto_1
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/byazt/nf/c;->c(Lorg/json/JSONObject;ZJ)V

    return-void

    :cond_9
    const-string p1, "--==-- ServerSide verify cypher error or message is null"

    .line 69
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message is null"

    .line 70
    invoke-direct {p0, v2, p1, p2}, Lcom/byazt/nf/c;->c(ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/byazt/nf/c;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/nf/c;ILjava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/nf/c;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/nf/c;Lcom/byazt/hm/tt;ZJ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/nf/c;->c(Lcom/byazt/hm/tt;ZJ)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;ZJ)V
    .locals 8
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    const-string p3, "GROMORE_SS_REWARD_VERIFY"

    if-eqz p1, :cond_1

    .line 73
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "--==-- data: "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "is_verify"

    .line 74
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string p4, "reason"

    .line 75
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string p4, "reward_name"

    .line 76
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p4, "reward_amount"

    .line 77
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 78
    new-instance p1, Lcom/byazt/nf/c$6;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/byazt/nf/c$6;-><init>(Lcom/byazt/nf/c;ZILjava/lang/String;I)V

    iput-object p1, p0, Lcom/byazt/nf/c;->sp:Lcom/byazt/bo/c;

    .line 79
    iget-boolean p1, p0, Lcom/byazt/nf/c;->x:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/byazt/nf/c;->rh:Lcom/byazt/nf/c$tt;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/byazt/nf/c;->i:Z

    if-nez p1, :cond_0

    const-string p1, "--==-- verify\u63a5\u53e3\u8bf7\u6c42\u56de\u6765\uff0c\u7ed9\u5f00\u53d1\u8005verify\u56de\u8c03"

    .line 80
    invoke-static {p3, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/byazt/nf/c;->i:Z

    .line 82
    iget-object p1, p0, Lcom/byazt/nf/c;->rh:Lcom/byazt/nf/c$tt;

    iget-object p3, p0, Lcom/byazt/nf/c;->sp:Lcom/byazt/bo/c;

    invoke-interface {p1, p3}, Lcom/byazt/nf/c$tt;->c(Lcom/byazt/bo/c;)V

    .line 83
    :cond_0
    invoke-direct {p0, p2, v0, v1}, Lcom/byazt/nf/c;->c(ZJ)V

    return-void

    :cond_1
    const-string p1, "--==-- ServerSide verify data is null"

    .line 84
    invoke-static {p3, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string p3, "data is null"

    .line 85
    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/nf/c;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method private c(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "v4Enc_reward"

    goto :goto_0

    :cond_0
    const-string p1, "v2Enc_reward"

    :goto_0
    const/4 v0, 0x1

    const-string v1, ""

    .line 86
    invoke-static {p1, v0, p2, p3, v1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;ZJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/nf/c;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/nf/c;->n:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/nf/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nf/c;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic i(Lcom/byazt/nf/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nf/c;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/byazt/nf/c;)Lcom/byazt/yl/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nf/c;->yp:Lcom/byazt/yl/ve;

    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/nf/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nf/c;->da:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sp(Lcom/byazt/nf/c;)Lcom/byazt/bo/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nf/c;->sp:Lcom/byazt/bo/c;

    return-object p0
.end method

.method private sp()V
    .locals 7
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 2
    invoke-static {}, Lcom/byazt/yp/tt;->c()Lcom/byazt/yp/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yp/tt;->tt()Lcom/byazt/hm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hm/c;->tt()Lcom/byazt/va/n;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/byazt/bp/ve;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/bp/c;->x()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "X-Tt-Env"

    .line 7
    invoke-virtual {v0, v4, v3}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "x-use-ppe"

    const-string v4, "1"

    .line 8
    invoke-virtual {v0, v3, v4}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "User-Agent"

    .line 9
    sget-object v4, Lcom/byazt/yl/tt;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/qe/ve;->n()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    const-string v5, "x-pglcypher"

    const-string v6, "4"

    .line 11
    invoke-virtual {v0, v5, v6}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v4}, Lcom/byazt/nf/c;->c(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/vx/eo;->tt(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "application/octet-stream"

    invoke-virtual {v0, v5, v4}, Lcom/byazt/va/n;->c(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 13
    invoke-direct {p0, v4}, Lcom/byazt/nf/c;->c(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/byazt/va/n;->ve(Ljava/lang/String;)V

    .line 14
    :goto_0
    new-instance v4, Lcom/byazt/nf/c$8;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/byazt/nf/c$8;-><init>(Lcom/byazt/nf/c;ZJ)V

    invoke-virtual {v0, v4}, Lcom/byazt/va/n;->c(Lcom/byazt/mh/c;)V

    return-void
.end method

.method public static synthetic t(Lcom/byazt/nf/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nf/c;->sp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/nf/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nf/c;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nf/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nf/c;->uj:Z

    return p1
.end method

.method public static synthetic u(Lcom/byazt/nf/c;)Lcom/byazt/bo/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nf/c;->nu:Lcom/byazt/bo/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/nf/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nf/c;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/nf/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nf/c;->i:Z

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/nf/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/nf/c;->sl:I

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/nf/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nf/c;->x:Z

    return p1
.end method

.method public static synthetic x(Lcom/byazt/nf/c;)Lcom/byazt/nf/c$tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nf/c;->rh:Lcom/byazt/nf/c$tt;

    return-object p0
.end method

.method private x()Ljava/lang/Object;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/nf/c;->yp:Lcom/byazt/yl/ve;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "rs_info"

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static synthetic yp(Lcom/byazt/nf/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nf/c;->n:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public c(Lcom/byazt/bo/c;Lcom/byazt/yl/ve;)V
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/byazt/nf/c;->uj()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1}, Lcom/byazt/bo/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isGroMoreServerSideVerify"

    .line 18
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transId"

    .line 19
    iget-object v2, p0, Lcom/byazt/nf/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    const-string v2, ""

    const-string v3, "gromoreExtra"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    .line 22
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    :cond_0
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x2712

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    const-string v2, "ADN \u56de\u8c03 rewardVerify:false"

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    invoke-static {v1, p1, p2, v0}, Lcom/byazt/hz/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/bo/c;Lcom/byazt/yl/ve;Ljava/util/Map;)Lcom/byazt/bo/c;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/byazt/nf/c;->rh:Lcom/byazt/nf/c$tt;

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/byazt/nf/c;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/byazt/nf/c;->i:Z

    .line 29
    invoke-interface {p2, p1}, Lcom/byazt/nf/c$tt;->c(Lcom/byazt/bo/c;)V

    :cond_1
    return-void

    .line 30
    :cond_2
    new-instance p1, Lcom/byazt/nf/c$4;

    invoke-direct {p1, p0}, Lcom/byazt/nf/c$4;-><init>(Lcom/byazt/nf/c;)V

    invoke-static {p1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;)V
    .locals 2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/nf/c;->z:J

    .line 9
    iput-object p1, p0, Lcom/byazt/nf/c;->u:Lcom/byazt/ll/tt;

    .line 10
    iput-object p2, p0, Lcom/byazt/nf/c;->yp:Lcom/byazt/yl/ve;

    .line 11
    invoke-virtual {p0}, Lcom/byazt/nf/c;->uj()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GROMORE_SS_REWARD_VERIFY"

    const-string p2, "onAdnAdShow:\u5f00\u542f\u4e86show\u5f3a\u6821\u9a8c\uff0c\u5148\u4e0d\u8fdb\u884c15s\u903b\u8f91->startPreRequest"

    .line 12
    invoke-static {p1, p2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/byazt/nf/c;->a()V

    return-void
.end method

.method public c(Lcom/byazt/nf/c$tt;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/byazt/nf/c;->rh:Lcom/byazt/nf/c$tt;

    return-void
.end method

.method public c()Z
    .locals 3

    .line 6
    iget v0, p0, Lcom/byazt/nf/c;->ve:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "--==-- \u5224\u65ad\u662f\u5426\u5f00\u542f\u4e86M\u670d\u52a1\u7aef\u6fc0\u52b1\u9a8c\u8bc1\uff1a "

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GROMORE_SS_REWARD_VERIFY"

    invoke-static {v2, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/byazt/nf/c;->yp:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public n()V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/nf/c$5;

    invoke-direct {v0, p0}, Lcom/byazt/nf/c$5;-><init>(Lcom/byazt/nf/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt()V
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/nf/c$2;

    invoke-direct {v0, p0}, Lcom/byazt/nf/c$2;-><init>(Lcom/byazt/nf/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uj()Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/nf/c;->yp:Lcom/byazt/yl/ve;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/nf/c;->yp:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    const-string v2, "isPangle"

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2}, Lcom/byazt/nf/c;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const-string v2, "isRDEnable"

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public ve()V
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/nf/c$3;

    invoke-direct {v0, p0}, Lcom/byazt/nf/c$3;-><init>(Lcom/byazt/nf/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method
