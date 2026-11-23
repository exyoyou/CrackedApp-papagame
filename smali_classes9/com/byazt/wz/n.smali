.class public Lcom/byazt/wz/n;
.super Lcom/byazt/wz/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x2e
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/byazt/wz/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/wz/n;->rl()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/wz/c;->z()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v0, v0, p1, v1}, Lcom/byazt/qt/ve;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/byazt/aas/zb;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/byazt/aas/zb;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "downloadUrl"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "hashCode"

    .line 58
    .line 59
    invoke-virtual {p1, v1, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "activity"

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/byazt/ete/gt;->my(Lcom/byazt/ete/ic;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "open_market_in_app"

    .line 84
    .line 85
    invoke-virtual {p1, v1, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 v0, 0x2

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "action_type_button"

    .line 95
    .line 96
    invoke-virtual {p1, v1, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v1, "id"

    .line 133
    .line 134
    invoke-virtual {p1, v1, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 135
    .line 136
    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/wz/n;->uj()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    new-instance v0, Lcom/byazt/wz/n$1;

    .line 144
    .line 145
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/wz/n$1;-><init>(Lcom/byazt/wz/n;Lcom/byazt/aas/zb;Z)V

    .line 146
    .line 147
    .line 148
    invoke-static {p1, v0}, Lcom/byazt/qt/ve;->c(Ljava/util/Map;Lcom/byazt/wrq/c;)V

    .line 149
    .line 150
    .line 151
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/byazt/wz/n;->c(Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;Z)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_3

    .line 157
    .line 158
    return-void

    .line 159
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/byazt/wz/n;->c(Ljava/util/Map;Lcom/byazt/wrq/c;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/n;->c(Ljava/util/Map;Z)V

    .line 164
    .line 165
    .line 166
    :cond_5
    :goto_0
    return-void
.end method

.method private c(Lcom/byazt/ete/uj;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/uj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/byazt/wz/n$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/wz/n$6;-><init>(Lcom/byazt/wz/n;Lcom/byazt/ete/uj;Ljava/util/Map;Z)V

    .line 20
    invoke-direct {p0, v0, p2}, Lcom/byazt/wz/n;->c(Lcom/byazt/wrq/c;Ljava/util/Map;)V

    return-void
.end method

.method private c(Lcom/byazt/wrq/c;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/wrq/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/byazt/wz/c;->c(Ljava/util/Map;)V

    .line 12
    iput-boolean v0, p0, Lcom/byazt/wz/c;->my:Z

    return-void

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/n;->tt(Lcom/byazt/wrq/c;Ljava/util/Map;)V

    .line 14
    iput-boolean v0, p0, Lcom/byazt/wz/c;->my:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wz/n;Lcom/byazt/ete/uj;Ljava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/wz/n;->c(Lcom/byazt/ete/uj;Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wz/n;Lcom/byazt/wrq/c;Ljava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/n;->c(Lcom/byazt/wrq/c;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wz/n;Ljava/util/Map;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/wz/n;->tt(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wz/n;Ljava/util/Map;Lcom/byazt/wrq/c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/n;->c(Ljava/util/Map;Lcom/byazt/wrq/c;)V

    return-void
.end method

.method private c(Ljava/util/Map;Lcom/byazt/wrq/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/wrq/c;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/byazt/wz/n;->tt(Z)V

    .line 8
    new-instance v0, Lcom/byazt/wz/n$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/byazt/wz/n$2;-><init>(Lcom/byazt/wz/n;Lcom/byazt/wrq/c;Ljava/util/Map;)V

    .line 9
    iget-object p1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0, p1}, Lcom/byazt/yih/i;->c(Ljava/lang/Runnable;Lcom/byazt/eia/sp;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/byazt/wz/c;->my:Z

    return-void
.end method

.method private c(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 15
    iget v0, p0, Lcom/byazt/wz/c;->nu:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0, p1, p2}, Lcom/byazt/wz/n;->c(Lcom/byazt/ete/uj;Ljava/util/Map;Z)V

    return-void

    .line 17
    :cond_0
    new-instance v0, Lcom/byazt/wz/n$4;

    const-string v1, "tt_download_check"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/wz/n$4;-><init>(Lcom/byazt/wz/n;Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void

    .line 18
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    const-string v0, "jsb_1"

    invoke-static {p1, p2, v0}, Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/uj;",
            "Lcom/byazt/wrq/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p4}, Lcom/byazt/yzg/ve;->uj(Z)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/byazt/wz/n;->sp()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object v1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    invoke-virtual {p0, p4, v1, v2}, Lcom/byazt/wz/uj;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Z

    move-result p4

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    return v1

    .line 24
    :cond_1
    iget-object p4, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    invoke-virtual {v2}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/byazt/wz/n$7;

    invoke-direct {v3, p0, p3, p2}, Lcom/byazt/wz/n$7;-><init>(Lcom/byazt/wz/n;Ljava/util/Map;Lcom/byazt/wrq/c;)V

    invoke-virtual {v0, p1, p4, v2, v3}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/ete/uj;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/av/tt;)V

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/byazt/wz/n;Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;Z)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/wz/n;->c(Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;Z)Z

    move-result p0

    return p0
.end method

.method private rl()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/byazt/wz/n;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/wz/c;->my:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v2, v0, v1}, Lcom/byazt/qt/ve;->c(ZLcom/byazt/wrq/ve;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private tt(Lcom/byazt/wrq/c;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/wrq/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/byazt/aas/zb;

    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    const/4 v1, 0x0

    const-string v2, "itemClickListener"

    invoke-virtual {v0, v2, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "downloadButtonClickListener"

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/byazt/aas/zb;->c(Ljava/util/Map;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/byazt/wz/n$3;

    invoke-direct {p2, p0, p1}, Lcom/byazt/wz/n$3;-><init>(Lcom/byazt/wz/n;Lcom/byazt/aas/zb;)V

    .line 7
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private tt(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/byazt/wz/c;->nu:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10
    new-instance v0, Lcom/byazt/wz/n$5;

    const-string v1, "tt_market_download_check"

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/wz/n$5;-><init>(Lcom/byazt/wz/n;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/byazt/wz/n;->c(Lcom/byazt/wrq/c;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/n;->a(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public my()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/qt/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Lcom/byazt/qt/ve;->c(Lcom/byazt/ete/ic;IZ)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v0, v1}, Lcom/byazt/qt/ve;->c(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/rgb/c;->uj(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/byazt/wz/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-class v3, Ljava/lang/Void;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lcom/byazt/aas/zb;

    .line 44
    .line 45
    invoke-direct {v3}, Lcom/byazt/aas/zb;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "force"

    .line 49
    .line 50
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v3, v4, v5}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "hashCode"

    .line 65
    .line 66
    invoke-virtual {v3, v5, v4}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v1, v3}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/wz/n;->rh()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public declared-synchronized rh()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/byazt/wz/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/aas/zb;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "hashCode"

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "downloadStatusChangeListener"

    .line 38
    .line 39
    iget-object v2, p0, Lcom/byazt/wz/c;->gu:Lcom/byazt/wrq/tt;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "marketStatusChangeListener"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/byazt/wz/c;->zm:Lcom/byazt/su/tt;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    .line 54
    .line 55
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x5

    .line 60
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-class v3, Ljava/lang/Void;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v2, v3, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    :cond_1
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    monitor-exit p0

    .line 86
    throw v0
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/wz/c;->rl:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/wz/c;->my:Z

    .line 13
    invoke-virtual {p0}, Lcom/byazt/wz/n;->uj()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 14
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    iget-boolean v1, p0, Lcom/byazt/wz/c;->gt:Z

    invoke-static {v0, v1}, Lcom/byazt/qt/ve;->c(Lcom/byazt/eia/sp;Z)Lcom/byazt/wrq/ve;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/byazt/qt/ve;->c(ZLcom/byazt/wrq/ve;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "xgcdl"

    const-string v1, "throwable"

    .line 16
    invoke-static {v0, v1, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized u()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget v0, Lcom/byazt/omf/p;->uj:I

    .line 13
    .line 14
    const/16 v1, 0x1900

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v1, v0}, Lcom/byazt/qt/ve;->c(Lcom/byazt/wrq/ve;I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/byazt/wz/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/wz/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Lcom/byazt/aas/zb;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "hashCode"

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    .line 72
    .line 73
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/4 v4, 0x4

    .line 78
    invoke-virtual {v3, v4}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-class v4, Ljava/lang/Void;

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3, v1, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v2, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/wz/c;->da()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    monitor-exit p0

    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    monitor-exit p0

    .line 106
    throw v0
.end method

.method public uj(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/wz/c;->rl:Z

    return-void
.end method

.method public uj()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    move-result v2

    invoke-static {v0, v2}, Lcom/byazt/qt/ve;->c(Ljava/util/function/Function;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
