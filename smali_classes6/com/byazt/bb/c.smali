.class public abstract Lcom/byazt/bb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hl/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x14
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Lcom/byazt/eia/sp;

.field public da:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/byazt/su/DownloadStatusChangeListener;

.field public n:Lcom/byazt/yzg/ve;

.field public sl:Z

.field public sp:Z

.field public t:Lcom/byazt/ete/gt;

.field public tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public u:I

.field public uj:Ljava/lang/String;

.field public ve:Landroid/content/Context;

.field public volatile x:Z

.field public volatile yp:Z

.field public z:Lcom/byazt/hl/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/bb/c;->x:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/bb/c;->u:I

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    .line 18
    .line 19
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/byazt/bb/c;->uj(Ljava/util/Map;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/byazt/bb/c;->ve(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/byazt/bb/c;->ve()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x2

    .line 19
    :goto_0
    invoke-static {v2, v1}, Lcom/byazt/rgb/c;->c(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/byazt/bb/c;->yp:Z

    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/byazt/bb/c;->c(ZI)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/bb/c;->ve:Landroid/content/Context;

    .line 28
    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    iget-object v1, p0, Lcom/byazt/bb/c;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/bb/c;->sp(Ljava/util/Map;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/byazt/bb/c;->n:Lcom/byazt/yzg/ve;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/byazt/bb/c;->tt(I)Lcom/byazt/yzg/c;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v4, p0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    .line 54
    .line 55
    invoke-virtual {v1, v2, v4}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/c;Lcom/byazt/eia/sp;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/byazt/aas/zb;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "downloadUrl"

    .line 64
    .line 65
    iget-object v4, p0, Lcom/byazt/bb/c;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v2, v4}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "is_feed_register_direct_download"

    .line 72
    .line 73
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const-string v2, "download_manager_hash_code"

    .line 81
    .line 82
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const-string v2, "has_show_dl_factors"

    .line 90
    .line 91
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v2, "activity"

    .line 99
    .line 100
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/byazt/ete/gt;->my(Lcom/byazt/ete/ic;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v2, "open_market_in_app"

    .line 120
    .line 121
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Lcom/byazt/bb/c;->n(Ljava/util/Map;)Lcom/byazt/wrq/c;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0, v2, p1, v1}, Lcom/byazt/bb/c;->c(Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_4

    .line 137
    .line 138
    return-void

    .line 139
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/byazt/bb/c;->c(ZI)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v1, p1}, Lcom/byazt/bb/c;->c(Ljava/util/Map;Lcom/byazt/wrq/c;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/bb/c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/bb/c;->ve()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/bb/c;Lcom/byazt/ete/uj;Ljava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/bb/c;->tt(Lcom/byazt/ete/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/bb/c;Ljava/util/Map;Lcom/byazt/wrq/c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/bb/c;->c(Ljava/util/Map;Lcom/byazt/wrq/c;)V

    return-void
.end method

.method private c(Lcom/byazt/ete/uj;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/uj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/byazt/bb/c;->ve(Lcom/byazt/ete/uj;Ljava/util/Map;)Lcom/byazt/wrq/c;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/byazt/bb/c;->c(Lcom/byazt/wrq/c;Ljava/util/Map;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/byazt/aas/zb;

    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    const-string v1, "appIcon"

    invoke-virtual {v0, v1, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string v0, "appName"

    invoke-virtual {p1, v0, p2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    invoke-static {p4}, Lcom/byazt/bb/c;->uj(Ljava/util/Map;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "hashCode"

    invoke-virtual {p1, p4, p2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string p2, "packageName"

    invoke-virtual {p1, p2, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p3

    const/16 p4, 0x18

    invoke-virtual {p3, p4}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p3

    const-class p4, Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 37
    new-instance v0, Lcom/byazt/bb/c$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/byazt/bb/c$3;-><init>(Lcom/byazt/bb/c;Lcom/byazt/wrq/c;Ljava/util/Map;)V

    .line 38
    iget-object p1, p0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    invoke-static {v0, p1}, Lcom/byazt/yih/i;->c(Ljava/lang/Runnable;Lcom/byazt/eia/sp;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/byazt/bb/c;->yp:Z

    return-void
.end method

.method private c(Ljava/util/Map;Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/byazt/aas/zb;

    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/byazt/bb/c;->uj(Ljava/util/Map;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "hashCode"

    invoke-virtual {v0, v1, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string v0, "downloadUrl"

    iget-object v1, p0, Lcom/byazt/bb/c;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x6

    .line 18
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    .line 19
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    new-instance p1, Lcom/byazt/bb/c$1;

    invoke-direct {p1, p0, p3, p2}, Lcom/byazt/bb/c$1;-><init>(Lcom/byazt/bb/c;ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return v2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private sp(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/bb/c;->t:Lcom/byazt/ete/gt;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ete/gt;->sp()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->jg()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    const-string v0, "\u5df2\u4e0b\u8f7d%d%%\uff0c\u53ef\u5728\u901a\u77e5\u680f\u6682\u505c\u6216\u53d6\u6d88"

    .line 30
    .line 31
    :try_start_0
    iget-object v3, p0, Lcom/byazt/bb/c;->i:Lcom/byazt/su/DownloadStatusChangeListener;

    .line 32
    .line 33
    instance-of v4, v3, Lcom/byazt/wrq/tt;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    check-cast v3, Lcom/byazt/wrq/tt;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/byazt/wrq/tt;->getCurrentPercent()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    new-array v4, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    aput-object v3, v4, v2

    .line 50
    .line 51
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/bb/c;->c(Ljava/util/Map;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/byazt/bb/c;->t:Lcom/byazt/ete/gt;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/byazt/ete/gt;->n()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    return v1

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    .line 72
    .line 73
    instance-of v1, v0, Lcom/byazt/ete/ic;

    .line 74
    .line 75
    const-string v3, "bdc"

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    check-cast v0, Lcom/byazt/ete/ic;

    .line 80
    .line 81
    invoke-static {v0, v3}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 v0, 0x0

    .line 86
    invoke-static {v0, v3}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    const-string v0, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d..."

    .line 90
    .line 91
    invoke-direct {p0, p1, v0, v2}, Lcom/byazt/bb/c;->c(Ljava/util/Map;Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method public static synthetic tt(Lcom/byazt/bb/c;Lcom/byazt/ete/uj;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/bb/c;->c(Lcom/byazt/ete/uj;Ljava/util/Map;)V

    return-void
.end method

.method private tt(Lcom/byazt/ete/uj;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/uj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/byazt/ete/uj;->x()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/byazt/wz/x;->c(Ljava/lang/String;)Lcom/byazt/ete/a;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    invoke-interface {v0}, Lcom/byazt/eia/sp;->rh()Lcom/byazt/ete/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/a;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/byazt/ete/a;->yp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->da(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/byazt/ete/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->tt(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/byazt/ete/a;->sp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->uj(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/byazt/ete/a;->t()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->tt(Lorg/json/JSONArray;)V

    .line 30
    invoke-virtual {p1}, Lcom/byazt/ete/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->n(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/byazt/ete/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->i(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/byazt/ete/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->ve(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/byazt/ete/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->a(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/byazt/ete/a;->da()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->sp(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/byazt/ete/a;->sl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/ete/a;->x(Ljava/lang/String;)V

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p1}, Lcom/byazt/ete/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ete/a;->yp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/ete/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/byazt/bb/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
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

    .line 9
    iget-object v0, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/byazt/aas/zb;

    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    const/4 v1, 0x0

    const-string v2, "itemClickListener"

    invoke-virtual {v0, v2, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "downloadButtonClickListener"

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 12
    invoke-static {p2}, Lcom/byazt/bb/c;->uj(Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/byazt/aas/zb;->c(Ljava/util/Map;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/byazt/bb/c;->c(Ljava/util/Map;Lcom/byazt/aas/zb;)Lcom/byazt/wrq/uj;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

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

.method public static uj(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "download_manager_hash_code"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private ve(Lcom/byazt/ete/uj;Ljava/util/Map;)Lcom/byazt/wrq/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/uj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/wrq/c;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/byazt/bb/c$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/bb/c$5;-><init>(Lcom/byazt/bb/c;Lcom/byazt/ete/uj;Ljava/util/Map;)V

    return-object v0
.end method

.method private ve()Ljava/lang/String;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lcom/byazt/bb/c;->uj(Ljava/util/Map;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "hashCode"

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    .line 21
    .line 22
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/16 v2, 0x10

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-class v2, Ljava/lang/Void;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract c(Ljava/util/Map;Lcom/byazt/aas/zb;)Lcom/byazt/wrq/uj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/aas/zb<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/wrq/uj;"
        }
    .end annotation
.end method

.method public c(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/byazt/bb/c;->u:I

    return-void
.end method

.method public c(Lcom/byazt/ete/gt;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/byazt/bb/c;->t:Lcom/byazt/ete/gt;

    return-void
.end method

.method public c(Lcom/byazt/hl/c;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/byazt/bb/c;->z:Lcom/byazt/hl/c;

    return-void
.end method

.method public c(Lcom/byazt/su/DownloadStatusChangeListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/byazt/bb/c;->i:Lcom/byazt/su/DownloadStatusChangeListener;

    return-void
.end method

.method public c(Lcom/byazt/wrq/c;Ljava/util/Map;)V
    .locals 2
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

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->uj(Z)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 41
    invoke-direct {p0, p2}, Lcom/byazt/bb/c;->x(Ljava/util/Map;)V

    .line 42
    iput-boolean v0, p0, Lcom/byazt/bb/c;->yp:Z

    return-void

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/bb/c;->tt(Lcom/byazt/wrq/c;Ljava/util/Map;)V

    .line 44
    iput-boolean v0, p0, Lcom/byazt/bb/c;->yp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/byazt/bb/c;->x:Z

    return-void
.end method

.method public c(ZI)V
    .locals 2

    .line 29
    invoke-virtual {p0, p2}, Lcom/byazt/bb/c;->ve(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    iget-boolean v1, p0, Lcom/byazt/bb/c;->sp:Z

    invoke-static {v0, v1}, Lcom/byazt/qt/ve;->c(Lcom/byazt/eia/sp;Z)Lcom/byazt/wrq/ve;

    move-result-object v0

    .line 31
    invoke-static {p1, v0, p2}, Lcom/byazt/qt/ve;->c(ZLcom/byazt/wrq/ve;I)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/bb/c;->ve:Landroid/content/Context;

    if-nez v0, :cond_2

    return v1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    if-nez v0, :cond_3

    return v1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/byazt/bb/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/byazt/bb/c;->uj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/byazt/bb/c;->n:Lcom/byazt/yzg/ve;

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/uj;",
            "Lcom/byazt/wrq/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 23
    invoke-static {p3}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;)Z

    move-result v0

    .line 24
    invoke-static {p3}, Lcom/byazt/ppf/ve;->tt(Ljava/util/Map;)Z

    move-result v1

    .line 25
    invoke-static {p3}, Lcom/byazt/bb/c;->uj(Ljava/util/Map;)I

    move-result v2

    .line 26
    iget-object v3, p0, Lcom/byazt/bb/c;->n:Lcom/byazt/yzg/ve;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/byazt/yzg/ve;->uj(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v4

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/byazt/bb/c;->z:Lcom/byazt/hl/c;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v5

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/byazt/bb/c;->n:Lcom/byazt/yzg/ve;

    iget-object v1, p0, Lcom/byazt/bb/c;->uj:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/bb/c;->a:Ljava/lang/String;

    new-instance v4, Lcom/byazt/bb/c$2;

    invoke-direct {v4, p0, v2, p3, p2}, Lcom/byazt/bb/c$2;-><init>(Lcom/byazt/bb/c;ILjava/util/Map;Lcom/byazt/wrq/c;)V

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/ete/uj;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/av/tt;)V

    return v5
.end method

.method public c(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/byazt/bb/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/byazt/bb/c;->tt:Ljava/util/Map;

    sget-object v0, Lcom/byazt/cr/tt;->uj:Lcom/byazt/cr/tt;

    invoke-static {p1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/byazt/bb/c;->tt(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public abstract n(Ljava/util/Map;)Lcom/byazt/wrq/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/wrq/c;"
        }
    .end annotation
.end method

.method public tt()Lcom/byazt/ete/ic;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    iget-object v1, p0, Lcom/byazt/bb/c;->tt:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    return-object v0
.end method

.method public tt(I)Lcom/byazt/yzg/c;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/byazt/bb/c;->ve(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    new-instance p1, Lcom/byazt/yzg/n;

    invoke-direct {p1}, Lcom/byazt/yzg/n;-><init>()V

    return-object p1

    .line 18
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/bb/c;->x:Z

    if-eqz p1, :cond_1

    .line 19
    new-instance p1, Lcom/byazt/yzg/uj;

    invoke-direct {p1}, Lcom/byazt/yzg/uj;-><init>()V

    return-object p1

    .line 20
    :cond_1
    new-instance p1, Lcom/byazt/yzg/tt;

    invoke-direct {p1}, Lcom/byazt/yzg/tt;-><init>()V

    return-object p1
.end method

.method public tt(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/byazt/bb/c;->sp:Z

    return-void
.end method

.method public tt(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    invoke-interface {v0}, Lcom/byazt/eia/sp;->B_()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/bb/c;->tt:Ljava/util/Map;

    sget-object v0, Lcom/byazt/cr/tt;->n:Lcom/byazt/cr/tt;

    invoke-static {p1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/bb/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/byazt/bb/c;->tt:Ljava/util/Map;

    sget-object v0, Lcom/byazt/cr/tt;->n:Lcom/byazt/cr/tt;

    invoke-static {p1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/bb/c;->ve:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/byazt/bb/c;->ve:Landroid/content/Context;

    const-string v0, "\"\u65e0\u7f51\u7edc\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\""

    invoke-static {p1, v0, v1}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/bb/c;->a(Ljava/util/Map;)V

    return v2
.end method

.method public ve(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/byazt/bb/c;->u:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/byazt/bb/c;->c(Lcom/byazt/ete/uj;Ljava/util/Map;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/bb/c$4;

    const-string v1, "tt_download_check"

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/bb/c$4;-><init>(Lcom/byazt/bb/c;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/byazt/bb/c;->ve()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/byazt/rgb/c;->uj(Ljava/lang/String;I)V

    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    const-string v1, "uchain_1"

    invoke-static {p1, v0, v1}, Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/bb/c;->tt:Ljava/util/Map;

    sget-object v0, Lcom/byazt/cr/tt;->uj:Lcom/byazt/cr/tt;

    invoke-static {p1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    return-void
.end method

.method public abstract ve(I)Z
.end method
