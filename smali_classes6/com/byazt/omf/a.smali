.class public Lcom/byazt/omf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/omf/a$c;
    }
.end annotation


# instance fields
.field public volatile c:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/aas/c$tt;

.field public ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/byazt/omf/a;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/byazt/omf/a;->tt:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/omf/a;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byazt/omf/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/omf/a$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/a;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/omf/a;
    .locals 1

    .line 38
    sget-object v0, Lcom/byazt/omf/a$c;->c:Lcom/byazt/omf/a;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/omf/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/a;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nu()Lcom/byazt/dj/uj;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/byazt/gj/x;

    const-string v2, "unionser_slardar_applog"

    const-string v3, "164362"

    invoke-direct {v1, v3, v2}, Lcom/byazt/gj/x;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUsePhoneState()Z

    move-result v2

    .line 6
    invoke-virtual {v1, v2}, Lcom/byazt/gj/x;->uj(Z)V

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->getDevImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/gj/x;->tt(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseWifiState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/gj/x;->ve(Z)V

    .line 9
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseAndroidId()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/gj/x;->n(Z)V

    .line 10
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/gj/x;->c(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/byazt/xo/c;->tt()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 13
    invoke-virtual {v1, v0}, Lcom/byazt/gj/x;->a(Z)V

    .line 14
    new-instance v0, Lcom/byazt/omf/a$1;

    invoke-direct {v0, p0}, Lcom/byazt/omf/a$1;-><init>(Lcom/byazt/omf/a;)V

    invoke-virtual {v1, v0}, Lcom/byazt/gj/x;->c(Lcom/byazt/gj/sp;)V

    .line 15
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->qp()Z

    move-result v0

    .line 16
    invoke-virtual {v1, v0}, Lcom/byazt/gj/x;->tt(Z)Lcom/byazt/gj/x;

    .line 17
    invoke-virtual {v1, v2}, Lcom/byazt/gj/x;->c(Z)Lcom/byazt/gj/x;

    const/4 v0, 0x0

    .line 18
    invoke-virtual {v1, v0}, Lcom/byazt/gj/x;->tt(I)Lcom/byazt/gj/x;

    .line 19
    invoke-direct {p0}, Lcom/byazt/omf/a;->x()V

    .line 20
    invoke-static {p1, v1}, Lcom/byazt/gj/c;->c(Landroid/content/Context;Lcom/byazt/gj/x;)V

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    const-string v0, "host_appid"

    .line 24
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/byazt/omf/p;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_plugin"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    const-string v1, "7.6.1.1"

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "plugin_version"

    .line 27
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_api_version"

    .line 28
    sget-object v1, Lcom/byazt/omf/p;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel"

    .line 29
    invoke-static {}, Lcom/byazt/omf/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "use_apm_sdk"

    const-string v1, "1"

    .line 31
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_3
    invoke-static {p1}, Lcom/byazt/gj/c;->c(Ljava/util/HashMap;)V

    .line 33
    new-instance p1, Lcom/byazt/omf/a$2;

    invoke-direct {p1, p0}, Lcom/byazt/omf/a$2;-><init>(Lcom/byazt/omf/a;)V

    iput-object p1, p0, Lcom/byazt/omf/a;->uj:Lcom/byazt/aas/c$tt;

    .line 34
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 35
    iget-object v0, p0, Lcom/byazt/omf/a;->uj:Lcom/byazt/aas/c$tt;

    invoke-virtual {p1, v0}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    :cond_4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/omf/a;Lcom/byazt/qh/uj;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/omf/a;->c(Lcom/byazt/qh/uj;)V

    return-void
.end method

.method private c(Lcom/byazt/qh/uj;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/byazt/omf/a;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    invoke-static {p1}, Lcom/byazt/aas/gu;->c(Lcom/byazt/qh/uj;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/byazt/gj/c;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private x()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->sp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/byazt/omf/x;->x()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-static {v2}, Lcom/byazt/gj/c;->c(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/byazt/omf/x;->da()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    new-instance v3, Lcom/byazt/omf/a$3;

    .line 36
    .line 37
    invoke-direct {v3, p0, v2, v0}, Lcom/byazt/omf/a$3;-><init>(Lcom/byazt/omf/a;ZZ)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lcom/byazt/gj/c;->c(Lcom/byazt/gj/n;)V

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lcom/byazt/omf/a$4;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/byazt/omf/a$4;-><init>(Lcom/byazt/omf/a;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    if-nez v2, :cond_2

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/byazt/omf/a$5;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/byazt/omf/a$5;-><init>(Lcom/byazt/omf/a;)V

    .line 69
    .line 70
    .line 71
    const-wide/16 v2, 0xbb8

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "164362"

    return-object v0
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1, p2}, Lcom/byazt/gj/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "sdk_version_name"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/gj/c;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    const-string v0, "unionser_slardar_applog"

    return-object v0
.end method

.method public tt()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->sp()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/byazt/gj/c;->c(Z)V

    .line 3
    invoke-static {}, Lcom/byazt/gj/c;->c()V

    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/a;->tt:Ljava/lang/String;

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
    invoke-static {}, Lcom/byazt/gj/c;->sl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/omf/a;->tt:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/a;->tt:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/gj/c;->i()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/omf/a;->c:Ljava/lang/String;

    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/omf/a;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/byazt/omf/a;->c:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, ""

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/byazt/omf/a;->c:Ljava/lang/String;

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->da(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/byazt/omf/a;->c:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
.end method
