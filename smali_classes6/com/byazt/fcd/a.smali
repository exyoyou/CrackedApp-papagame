.class public Lcom/byazt/fcd/a;
.super Lcom/byazt/fcd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x22
    }
.end annotation


# instance fields
.field public cu:Lcom/byazt/hkv/c;

.field public d:Z

.field public final eo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public or:Lcom/byazt/rpt/tt;

.field public zb:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/fcd/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/fcd/a;->d:Z

    .line 6
    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/byazt/fcd/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/fcd/a;)Lcom/byazt/rpt/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/fcd/a;->or:Lcom/byazt/rpt/tt;

    return-object p0
.end method

.method private c(J)V
    .locals 2

    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "showTime"

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    iget-object p1, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/byazt/dqg/n;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    const-string p2, "rewardInnerLiveShowTime"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/fcd/a;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/fcd/a;->i(Z)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p0

    return p0
.end method

.method private dz()Lorg/json/JSONObject;
    .locals 5

    .line 1
    const-string v0, "token"

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->gt()Lcom/byazt/ete/pf;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    invoke-virtual {v2}, Lcom/byazt/ete/pf;->uj()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "req_id"

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/byazt/ete/pf;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string v0, "action"

    .line 50
    .line 51
    const-string v2, "query_box"

    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-object v1
.end method

.method private i(Z)V
    .locals 2

    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "showSkip"

    .line 7
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 8
    iget-object p1, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    if-eqz p1, :cond_0

    const-string v1, "showSkipInLiveScene"

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private ma()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/a;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const-class v1, Lcom/byazt/nat/c;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/byazt/nat/c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/nat/c;->tt()Lcom/byazt/nat/tt;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/byazt/nat/tt;->sl()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/byazt/fcd/a;->d:Z

    .line 34
    .line 35
    invoke-direct {p0, v1, v3}, Lcom/byazt/fcd/a;->tt(II)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/byazt/ete/to;->c(Lcom/byazt/ete/ic;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/byazt/ete/to;->n(Lcom/byazt/ete/ic;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v4, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->by()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x2

    .line 61
    if-ne v4, v5, :cond_4

    .line 62
    .line 63
    const/4 v4, -0x1

    .line 64
    invoke-direct {p0, v3, v4}, Lcom/byazt/fcd/a;->tt(II)V

    .line 65
    .line 66
    .line 67
    :cond_4
    const/4 v4, 0x3

    .line 68
    if-eq v0, v4, :cond_5

    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/byazt/ete/to;->sp(Lcom/byazt/ete/ic;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    int-to-long v4, v0

    .line 78
    const-wide/16 v6, 0x3e8

    .line 79
    .line 80
    mul-long v4, v4, v6

    .line 81
    .line 82
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    cmp-long v0, v8, v4

    .line 89
    .line 90
    if-ltz v0, :cond_6

    .line 91
    .line 92
    invoke-direct {p0, v1, v3}, Lcom/byazt/fcd/a;->tt(II)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/byazt/fcd/a;->yf()V

    .line 96
    .line 97
    .line 98
    iput-boolean v2, p0, Lcom/byazt/fcd/a;->d:Z

    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    sub-long/2addr v4, v0

    .line 108
    div-long/2addr v4, v6

    .line 109
    long-to-int v0, v4

    .line 110
    invoke-direct {p0, v3, v0}, Lcom/byazt/fcd/a;->tt(II)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    const/4 p0, 0x2

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/fcd/a;)Lcom/byazt/hkv/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/fcd/a;->cu:Lcom/byazt/hkv/c;

    return-object p0
.end method

.method private tt(II)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    instance-of v1, v0, Lcom/byazt/dqg/x;

    if-nez v1, :cond_1

    return-void

    .line 11
    :cond_1
    check-cast v0, Lcom/byazt/dqg/x;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/dqg/x;->c(II)V

    return-void
.end method

.method private uj(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    .line 2
    .line 3
    const-class v1, Lcom/byazt/nat/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/nat/c;

    .line 12
    .line 13
    int-to-long v2, p1

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/byazt/nat/c;->c(J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->gu:Lcom/byazt/ouz/n;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/byazt/nat/c;

    .line 26
    .line 27
    int-to-long v2, p1

    .line 28
    invoke-virtual {v0, v2, v3}, Lcom/byazt/nat/c;->c(J)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->qy:Lcom/byazt/ouz/a;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/byazt/nat/c;

    .line 40
    .line 41
    int-to-long v1, p1

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/byazt/nat/c;->c(J)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method private yf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "is_auto_click"

    .line 12
    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    .line 19
    .line 20
    const-class v2, Lcom/byazt/vis/c;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/byazt/vis/c;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    .line 32
    .line 33
    new-instance v1, Lcom/byazt/ete/da;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/byazt/ete/da;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/byazt/hkv/n;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/a;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public c(Z)Lcom/byazt/dqg/tt;
    .locals 3

    .line 4
    iget v0, p0, Lcom/byazt/fcd/c;->uj:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/dqg/sp;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dqg/sp;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    iput-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/byazt/dqg/x;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dqg/x;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    iput-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    return-object p1
.end method

.method public c(IILandroid/content/Intent;)V
    .locals 5

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/fcd/c;->c(IILandroid/content/Intent;)V

    .line 9
    iget-object p2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/to;->ve(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_5

    .line 10
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean p1, p0, Lcom/byazt/fcd/a;->zb:Z

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "csj.reward_countdown_duration_ms"

    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 13
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->pf()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v2, v0

    long-to-int p1, v2

    .line 14
    iget-object p3, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v2, 0x0

    invoke-virtual {p3, p1, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(IZ)V

    const-wide/16 v3, 0x0

    cmp-long p3, v0, v3

    if-gtz p3, :cond_4

    .line 15
    invoke-direct {p0, p2}, Lcom/byazt/fcd/a;->i(Z)V

    .line 16
    invoke-direct {p0, v2}, Lcom/byazt/fcd/a;->uj(I)V

    .line 17
    iput-boolean p2, p0, Lcom/byazt/fcd/a;->zb:Z

    return-void

    :cond_4
    int-to-long p1, p1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/byazt/fcd/a;->c(J)V

    :cond_5
    :goto_0
    return-void
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fcd/a;->tt(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/fcd/c;->uj:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/vfu/a;->gu(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/byazt/fcd/c;->ve:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/vfu/a;->z(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/vfu/a;->m(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/to;->c(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->gt()Lcom/byazt/ete/pf;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/byazt/apd/tt;->tt(Lcom/byazt/ete/ic;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->pf()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    int-to-long v2, v1

    .line 38
    invoke-virtual {v0, v2, v3}, Lcom/byazt/ete/pf;->c(J)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-direct {p0, v1}, Lcom/byazt/fcd/a;->uj(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public kk()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sp()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/byazt/ete/kp;->ve(Lcom/byazt/ete/ic;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public nu()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->nu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->ve(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public rh()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/a;->zb:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/byazt/apd/tt;->tt(Lcom/byazt/ete/ic;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/ete/to;->ve(Lcom/byazt/ete/ic;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    return v2
.end method

.method public rl()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->rl()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/fcd/a;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/apd/tt;->tt(Lcom/byazt/ete/ic;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/byazt/fcd/a;->ma()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/ete/to;->c(Lcom/byazt/ete/ic;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/a;->or:Lcom/byazt/rpt/tt;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "is_reward_deep_link_to_live"

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/byazt/ete/to;->n(Lcom/byazt/ete/ic;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x1

    .line 67
    if-ne v0, v1, :cond_5

    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/byazt/ete/to;->sp(Lcom/byazt/ete/ic;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-long v4, v0

    .line 83
    const-wide/16 v6, 0x3e8

    .line 84
    .line 85
    mul-long v4, v4, v6

    .line 86
    .line 87
    cmp-long v0, v2, v4

    .line 88
    .line 89
    if-gez v0, :cond_6

    .line 90
    .line 91
    return-void

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/byazt/fcd/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 98
    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->tt()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sv()V

    .line 110
    .line 111
    .line 112
    :cond_7
    new-instance v0, Lcom/byazt/rpt/tt;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 117
    .line 118
    new-instance v3, Lcom/byazt/fcd/a$2;

    .line 119
    .line 120
    invoke-direct {v3, p0}, Lcom/byazt/fcd/a$2;-><init>(Lcom/byazt/fcd/a;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/rpt/tt;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/rpt/tt$c;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/byazt/fcd/a;->or:Lcom/byazt/rpt/tt;

    .line 127
    .line 128
    new-instance v0, Lcom/byazt/fcd/a$3;

    .line 129
    .line 130
    iget-object v6, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 131
    .line 132
    iget-object v7, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 133
    .line 134
    iget-object v8, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    .line 135
    .line 136
    const/4 v9, 0x7

    .line 137
    move-object v4, v0

    .line 138
    move-object v5, p0

    .line 139
    invoke-direct/range {v4 .. v9}, Lcom/byazt/fcd/a$3;-><init>(Lcom/byazt/fcd/a;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/byazt/fcd/a;->cu:Lcom/byazt/hkv/c;

    .line 143
    .line 144
    const-class v1, Lcom/byazt/vis/ve;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/byazt/vis/ve;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/vis/ve;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/byazt/fcd/a;->or:Lcom/byazt/rpt/tt;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/byazt/fcd/a;->cu:Lcom/byazt/hkv/c;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/byazt/rpt/tt;->c(Lcom/byazt/hkv/tt;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_8

    .line 171
    .line 172
    iget-object v0, p0, Lcom/byazt/fcd/a;->or:Lcom/byazt/rpt/tt;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/byazt/rpt/tt;->show()V

    .line 175
    .line 176
    .line 177
    :cond_8
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->a(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->n(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->ve(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->fe()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->n(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->a(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->n(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->ve(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->bm()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public tt(Z)V
    .locals 3

    .line 3
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->tt(Z)V

    .line 4
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "is_reward_deep_link_to_live"

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/to;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/byazt/fcd/a;->dz()Lorg/json/JSONObject;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v0

    new-instance v1, Lcom/byazt/fcd/a$1;

    invoke-direct {v1, p0}, Lcom/byazt/fcd/a$1;-><init>(Lcom/byazt/fcd/a;)V

    invoke-interface {v0, p1, v1}, Lcom/byazt/omf/gu;->c(Lorg/json/JSONObject;Lcom/byazt/omf/gu$uj;)V

    return-void
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
